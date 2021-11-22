module default {
  type User {
    required property email -> str;
  }
}

module default {
  type BlogPost {
    required property title -> str {
      constraint expression on (
        __subject__ = str_trim(__subject__)
      );
    }
    required link author -> auth::User;
  }

  type Person {
    property name -> str;
    required multi link things -> Thing;
  }

  scalar type username extending str {
    constraint regexp(r'^[A-Za-z0-9_]{4,20}$');
  }

  type Vector {
    required property x -> float64;
    required property y -> float64;

    constraint expression on (
      .x ^ 2 + .y ^ 2 <= 25
    );
  }

  scalar type title_str extending str {
    constraint expression on (
      __subject__ = str_trim(__subject__)
    );
  }
  alias PersonAlias := Person;
  type Thing {
    property name -> str;
  }

  abstract type HasEmail {
    required property email -> str;
  }

  abstract type HasEmailAgain {
    required property email -> str;
  }

  type Hero extending Person, HasEmail {
    property secret_identity -> str;
  }

  type Mixed extending Hero, BlogPost {
    
  }

  abstract type AbstractHero extending Hero {
    
  }

  type Friend {
    required property name -> str;
    required multi link friends -> Friend;
  }

  abstract type Movie {
    property title -> str;
    multi link characters -> Person;
  }

  type Overloaded extending HasEmail {
    overloaded required property email -> str;
  }

  abstract constraint min_value(min: anytype) {
    errmessage :=
        'Minimum allowed value for {__subject__} is {min}.';

    using (__subject__ >= min);
  }

  type User {
    required property is_active -> bool;
  }

  type MessageThread {
    property name -> str;
  }

  type Message {
    link chat -> MessageThread {
      on target delete delete source;
    };
  }

  scalar type my_sequence extending sequence;
  type Bag {

    property first_name -> str;
    property additional_names -> array<str>;
    property jsons -> array<json>;
    property seqs -> array<my_sequence>;
    property byteses -> array<bytes>;
    property str_tuple -> tuple<str,str>;
    property named_tuple -> tuple<name: str, other: str>;
    property nested_tuple -> tuple<str, tuple<str,str>>;
    property new_nested_tuple -> tuple<str, array<int64>,  tuple<str,str>>;
    property tuple_array_nest -> array<tuple<array<tuple<str>>>>;

    property switching_tuple -> tuple<name: str, weight: int64>;

    property nested_with_array -> array<
      tuple<
        nested: array<
          tuple<
            nested: str
          >
        >
      >
    >;
  }

  scalar type Color extending enum<Red, Green, Blue>;

  scalar type test_seq extending sequence;
  type TestSeq {
    property counter -> my_sequence;
  }

  type TestSeq2 {
    property counter -> my_sequence;
  }

  scalar type post_title extending str {
    constraint min_len_value(8);
    constraint max_len_value(30);
  }

  type Post {
      property title -> str {
        constraint exclusive;
        constraint min_len_value(8);
        constraint max_len_value(30);
      }

      property status -> str {
        constraint one_of ('Draft', 'InReview', 'Published');
      }

      property upvotes -> int64 {
        constraint min_value (0);
        constraint max_value (9999);
      }
    }
    

  abstract property email_prop {
    annotation title := 'An email address';
    readonly := true;
  }

  type StudentWithEmail {
    property email extending email_prop -> str;
  }

  type TeacherWithEmail {
    property email extending email_prop -> str;
  }

  type Player {
    required property points -> int64 {
      default := 0;
    }

    required property latitude -> float64 {
      # randomize initial value
      default := (360 * random() - 180);
    }
  }

  type FamilyMember {
    required property name -> str {
      constraint exclusive;
    }

    multi link married_to -> Person {
      property marriage_date -> cal::local_date;
      property divorce_date -> cal::local_date;
    }

    multi link children -> Person {
      property adopted -> bool;
    }
  }

  type Dude {

    annotation deprecated := 'true';
    required property name -> str {
      constraint exclusive;
    }

    multi link friends extending link_with_strength -> Dude;

    multi link otherfriends -> Dude {
      single property strength -> float64;
      constraint expression on (
        __subject__@strength > 0
      );
    }
  }

  abstract link link_with_strength {
    single property strength -> float64;
    constraint expression on (
      __subject__@strength >= 0
    );
    index on (select __subject__@strength limit 1);
  }

  abstract link link_with_value {
    single property value -> int64;
  }

  type SocialUser {
    required property name -> str;
    multi link friends -> SocialUser {
      default := (select SocialUser filter .name = .name);
    }
  }


  type MixedUp {
    required property name -> str;
    property other -> str;
    property all_caps_name := __source__.name;

    link dudes := (select Dude);
  }
}

module auth {
  type User {
    required property email -> str;
    link blog_posts := .<author[IS default::BlogPost];

    link blogs_subquery := (
      select default::BlogPost filter .author = User
    );
  }
  
}
