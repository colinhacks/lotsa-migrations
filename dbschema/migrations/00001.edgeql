CREATE MIGRATION m1fkqir6deaxvvba5ttqluxt67mzvuj4546ac6mjth2ak7zpxarv7a
    ONTO initial
{
  CREATE TYPE default::User {
      CREATE REQUIRED PROPERTY email -> std::str;
  };
};
