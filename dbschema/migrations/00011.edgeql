CREATE MIGRATION m1sgmdapmqlw7tkqjvp76ukhvrfsrnurfnp56uuuovcarzsogvypga
    ONTO m1uzptpu7d2p2iwmvt5efqapeohkgukxvf5qgxgs24d5qxfw2ak72a
{
  CREATE ABSTRACT TYPE default::Movie {
      CREATE MULTI LINK characters -> default::Person;
      CREATE PROPERTY title -> std::str;
  };
};
