CREATE MIGRATION m1hg57q7vcqxgbtetyslhedqjn2xg6jz5yb2nfx37gyoumfb2dfxwq
    ONTO m1l5h3xbavuteltag3vmcajebtkeilrddv6bgs73b6pddxhc4gaqlq
{
  CREATE TYPE default::Dude {
      CREATE MULTI LINK friends -> default::Dude {
          CREATE PROPERTY strength -> std::float64;
      };
      CREATE REQUIRED PROPERTY name -> std::str {
          CREATE CONSTRAINT std::exclusive;
      };
  };
  ALTER TYPE default::FamilyMember {
      ALTER PROPERTY name {
          CREATE CONSTRAINT std::exclusive;
      };
  };
};
