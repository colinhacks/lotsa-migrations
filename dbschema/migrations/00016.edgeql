CREATE MIGRATION m1xmdxiya2xnmbgy6o6wl5f477k5nsphigorgowulapvd6vy6jbvgq
    ONTO m1k7r2srnr2vyvxd7v3srfrmxzhcxnfqhll67x4nrc5e5fymzkzuba
{
  CREATE SCALAR TYPE default::my_sequence EXTENDING std::sequence;
  ALTER TYPE default::Bag {
      CREATE PROPERTY seqs -> array<default::my_sequence>;
  };
  ALTER TYPE default::Bag {
      CREATE PROPERTY byteses -> array<std::bytes>;
      CREATE PROPERTY jsons -> array<std::json>;
  };
  ALTER TYPE default::Bag {
      CREATE PROPERTY named_tuple -> tuple<name: std::str, other: std::str>;
  };
  ALTER TYPE default::Bag {
      CREATE PROPERTY str_tuple -> tuple<std::str, std::str>;
  };
};
