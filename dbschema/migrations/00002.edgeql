CREATE MIGRATION m1n524m53z67ziwnd7aq2ttr6sxofusuj6wr22tvit5ojmnszg3aea
    ONTO m1fkqir6deaxvvba5ttqluxt67mzvuj4546ac6mjth2ak7zpxarv7a
{
  CREATE MODULE auth IF NOT EXISTS;
  CREATE MODULE data IF NOT EXISTS;
  CREATE TYPE auth::User {
      CREATE REQUIRED PROPERTY email -> std::str;
  };
  CREATE TYPE data::BlogPost {
      CREATE REQUIRED LINK author -> auth::User;
      CREATE REQUIRED PROPERTY title -> std::str;
  };
};
