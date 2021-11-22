CREATE MIGRATION m1jaox2jlnpbhlj4mt36elge2emnczi2s4yd6p6bwgnrtnxgwbjjnq
    ONTO m1xmdxiya2xnmbgy6o6wl5f477k5nsphigorgowulapvd6vy6jbvgq
{
  ALTER TYPE default::Bag {
      CREATE PROPERTY nested_tuple -> tuple<std::str, tuple<std::str, std::str>>;
  };
};
