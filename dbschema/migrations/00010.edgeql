CREATE MIGRATION m1uzptpu7d2p2iwmvt5efqapeohkgukxvf5qgxgs24d5qxfw2ak72a
    ONTO m1ux23th4yjm4drcsgcudtxlas3bmdywq27fmayjngbjqgzpniavja
{
  CREATE TYPE default::Thing {
      CREATE PROPERTY name -> std::str;
  };
  ALTER TYPE default::Person {
      CREATE REQUIRED MULTI LINK things -> default::Thing {
          SET REQUIRED USING (SELECT
              default::Thing 
          LIMIT
              1
          );
      };
  };
};
