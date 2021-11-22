CREATE MIGRATION m1tcxe766xffaxbpsgsv2lrdnkolup36oishbymgertu2bnwf73pna
    ONTO m1s4nfc7eoyuigwvsaxg2jqe2z6zd72bvatfyk7aldfyk3akd6hvnq
{
  CREATE ABSTRACT TYPE default::HasEmailAgain {
      CREATE REQUIRED PROPERTY email -> std::str;
  };
  CREATE TYPE default::Mixed EXTENDING default::Hero, default::BlogPost;
};
