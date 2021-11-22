CREATE MIGRATION m1o4milsiwrivenrmxghn6pc4dsivzh4pszsprjjrrstguhenmgyqq
    ONTO m143wcbe54roqhx77nyczhaneq4bzl257djm5hwopgdydmytw6cyta
{
  CREATE TYPE default::Player {
      CREATE REQUIRED PROPERTY latitude -> std::float64 {
          SET default := (((380 * std::random()) - 180));
      };
      CREATE REQUIRED PROPERTY points -> std::int64 {
          SET default := 0;
      };
  };
  ALTER TYPE default::Post {
      ALTER PROPERTY upvotes {
          CREATE CONSTRAINT std::max_value(9999);
      };
  };
  CREATE ABSTRACT PROPERTY default::email_prop {
      SET readonly := true;
      CREATE ANNOTATION std::title := 'An email address';
  };
  CREATE TYPE default::StudentWithEmail {
      CREATE PROPERTY email EXTENDING default::email_prop -> std::str;
  };
  CREATE TYPE default::TeacherWithEmail {
      CREATE PROPERTY email EXTENDING default::email_prop -> std::str;
  };
};
