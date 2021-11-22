CREATE MIGRATION m1kowvjd7owt2v5dovjdoplynthu6ichvj6otxjpigq3piungex65q
    ONTO m1b3r3ubefrkalqj4mfxph7xl3ird2jqzfb3jc556ak4rfwlw2sheq
{
  CREATE ALIAS default::PersonAlias := (
      default::Person
  );
  CREATE ABSTRACT LINK default::link_with_strength {
      CREATE SINGLE PROPERTY strength -> std::float64;
      CREATE CONSTRAINT std::expression ON ((__subject__@strength >= 0));
      CREATE INDEX ON (SELECT
          __subject__@strength 
      LIMIT
          1
      );
  };
  ALTER TYPE default::Dude {
      ALTER LINK friends {
          EXTENDING default::link_with_strength LAST;
          ALTER PROPERTY strength {
              DROP OWNED;
              RESET TYPE;
          };
      };
  };
  CREATE TYPE default::Vector {
      CREATE REQUIRED PROPERTY x -> std::float64;
      CREATE REQUIRED PROPERTY y -> std::float64;
      CREATE CONSTRAINT std::expression ON ((((.x ^ 2) + (.y ^ 2)) <= 25));
  };
  CREATE SCALAR TYPE default::title_str EXTENDING std::str {
      CREATE CONSTRAINT std::expression ON ((__subject__ = std::str_trim(__subject__)));
  };
  CREATE SCALAR TYPE default::username EXTENDING std::str {
      CREATE CONSTRAINT std::regexp('^[A-Za-z0-9_]{4,20}$');
  };
};
