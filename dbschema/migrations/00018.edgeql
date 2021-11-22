CREATE MIGRATION m12z5ysoxn6kp7sttqb5eyvi53irhh4sxojslckru2jthmcgw67u5a
    ONTO m1jaox2jlnpbhlj4mt36elge2emnczi2s4yd6p6bwgnrtnxgwbjjnq
{
  ALTER TYPE default::Bag {
      CREATE PROPERTY new_nested_tuple -> tuple<std::str, array<std::int64>, tuple<std::str, std::str>>;
  };
};
