CREATE MIGRATION m1l5h3xbavuteltag3vmcajebtkeilrddv6bgs73b6pddxhc4gaqlq
    ONTO m1o4milsiwrivenrmxghn6pc4dsivzh4pszsprjjrrstguhenmgyqq
{
  CREATE TYPE default::FamilyMember {
      CREATE MULTI LINK children -> default::Person {
          CREATE PROPERTY adopted -> std::bool;
      };
      CREATE MULTI LINK married_to -> default::Person {
          CREATE PROPERTY divorce_date -> cal::local_date;
          CREATE PROPERTY marriage_date -> cal::local_date;
      };
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  ALTER TYPE default::Player {
      ALTER PROPERTY latitude {
          SET default := (((360 * std::random()) - 180));
      };
  };
};
