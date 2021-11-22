CREATE MIGRATION m1wjhs2v7elqmvkbpx6oowxaooalgq7t5oyd2rqubemiivcihsek3q
    ONTO m1dhuott2zoo5cbd4xrozdmg5cvm4goo77chbzxeqrppi4qatkajia
{
  ALTER TYPE default::MixedUp {
      CREATE LINK dudes := (SELECT
          default::Dude
      );
  };
};
