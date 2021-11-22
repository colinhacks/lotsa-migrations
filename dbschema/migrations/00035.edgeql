CREATE MIGRATION m13unrz6kkk7c5ao6m33gv64whmhmwsv4hknoxky6rlyyyvbwktmma
    ONTO m1lcbaa3xa6kd43q6tmtj2jwzlq4t2dcl3tjczza6fulmczwqutznq
{
  ALTER TYPE default::Bag {
      CREATE PROPERTY switching_tuple -> tuple<std::str, std::int64>;
  };
};
