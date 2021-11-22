CREATE MIGRATION m1ux23th4yjm4drcsgcudtxlas3bmdywq27fmayjngbjqgzpniavja
    ONTO m1kuxrv46a2zf5qvtof32mfqc572t2crc47ongazbswrmdmbpenula
{
  CREATE TYPE default::Friend {
      CREATE REQUIRED MULTI LINK friends -> default::Friend;
      CREATE REQUIRED PROPERTY name -> std::str;
  };
};
