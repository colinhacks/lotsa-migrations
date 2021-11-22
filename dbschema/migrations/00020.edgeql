CREATE MIGRATION m143wcbe54roqhx77nyczhaneq4bzl257djm5hwopgdydmytw6cyta
    ONTO m14uqdvlwhxu5wyq46y3yhkhxusi32johjed56rodl53nhz66567hq
{
  ALTER TYPE default::Bag {
      DROP PROPERTY seq;
  };
  CREATE TYPE default::Post {
      CREATE PROPERTY status -> std::str {
          CREATE CONSTRAINT std::one_of('Draft', 'InReview', 'Published');
      };
      CREATE PROPERTY title -> std::str {
          CREATE CONSTRAINT std::exclusive;
          CREATE CONSTRAINT std::max_len_value(30);
          CREATE CONSTRAINT std::min_len_value(8);
      };
      CREATE PROPERTY upvotes -> std::int64 {
          CREATE CONSTRAINT default::min_value(0);
      };
  };
  CREATE SCALAR TYPE default::post_title EXTENDING std::str {
      CREATE CONSTRAINT std::max_len_value(30);
      CREATE CONSTRAINT std::min_len_value(8);
  };
};
