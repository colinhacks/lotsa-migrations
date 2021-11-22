CREATE MIGRATION m135ewphwbgd5eua2ittijt2aj4spl2ql3gojfnwgry7ofv32gpqqa
    ONTO m1kowvjd7owt2v5dovjdoplynthu6ichvj6otxjpigq3piungex65q
{
  ALTER TYPE default::Bag {
      CREATE PROPERTY tuple_array_nest -> array<tuple<std::str, std::int64, array<std::str>, tuple<std::str, std::int64>>>;
  };
  CREATE ABSTRACT LINK default::link_with_value {
      CREATE SINGLE PROPERTY value -> std::int64;
  };
  ALTER TYPE default::Dude {
      CREATE MULTI LINK otherfriends -> default::Dude {
          CREATE SINGLE PROPERTY strength -> std::float64;
          CREATE CONSTRAINT std::expression ON ((__subject__@strength > 0));
      };
  };
  CREATE TYPE default::SocialUser {
      CREATE REQUIRED PROPERTY name -> std::str;
      CREATE MULTI LINK friends -> default::SocialUser {
          SET default := (SELECT
              default::SocialUser
          FILTER
              (.name = .name)
          );
      };
  };
};
