CREATE MIGRATION m1xxubvkme6tul3paavntkhmepzjp3p2gvex6howe5m6vdmww75y5q
    ONTO m1zvlmnnfqxvhn34wybcka5jn4ircnann33tn72nsjghc6sr43l5ia
{
  ALTER TYPE default::TestSeq {
      ALTER PROPERTY seq {
          RENAME TO counter;
      };
  };
  CREATE TYPE default::TestSeq2 {
      CREATE PROPERTY counter -> default::my_sequence;
  };
};
