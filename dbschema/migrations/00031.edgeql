CREATE MIGRATION m12zgkxl4c6zf5dx5jr25yjxbi6eq5wgh6y5ugj2md7twpv445twga
    ONTO m135ewphwbgd5eua2ittijt2aj4spl2ql3gojfnwgry7ofv32gpqqa
{
  ALTER TYPE default::Bag {
      ALTER PROPERTY tuple_array_nest {
          SET TYPE array<tuple<array<tuple<std::str>>>> USING (<array<tuple<array<tuple<std::str>>>>>{});
      };
  };
  ALTER TYPE default::Bag {
      CREATE PROPERTY nested_with_array -> array<tuple<nested: array<tuple<nested: std::str>>>>;
  };
};
