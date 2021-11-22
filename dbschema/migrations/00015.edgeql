CREATE MIGRATION m1k7r2srnr2vyvxd7v3srfrmxzhcxnfqhll67x4nrc5e5fymzkzuba
    ONTO m1ixnj3iqwmmnoqptynm57obq4uifq37qpgrvt2qtl5jd6h6z6spwq
{
  CREATE TYPE default::Bag {
      CREATE PROPERTY additional_names -> array<std::str>;
      CREATE PROPERTY first_name -> std::str;
  };
};
