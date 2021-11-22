CREATE MIGRATION m1zvlmnnfqxvhn34wybcka5jn4ircnann33tn72nsjghc6sr43l5ia
    ONTO m12zgkxl4c6zf5dx5jr25yjxbi6eq5wgh6y5ugj2md7twpv445twga
{
  CREATE TYPE default::TestSeq {
      CREATE PROPERTY seq -> default::my_sequence;
  };
  CREATE SCALAR TYPE default::test_seq EXTENDING std::sequence;
};
