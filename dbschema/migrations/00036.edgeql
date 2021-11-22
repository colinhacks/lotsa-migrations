CREATE MIGRATION m1raxysdrcmlqrgbsbuuwfuniz5twyhnhdfusfdm4ms57guvcey43a
    ONTO m13unrz6kkk7c5ao6m33gv64whmhmwsv4hknoxky6rlyyyvbwktmma
{
  ALTER TYPE default::Bag {
      ALTER PROPERTY switching_tuple {
          SET TYPE tuple<name: std::str, age: std::int64>;
      };
  };
};
