CREATE MIGRATION m1n4qjceuybu3wgldsetxs6c4jwr6pdximt5ouf2bv2ggrib7noy3q
    ONTO m1xq37hlvadpo2lcfavnrojhzg4pkvdb4yxpefmktyzivq7ycuxyna
{
  CREATE TYPE default::Person {
      CREATE PROPERTY name -> std::str;
  };
  CREATE TYPE default::Hero EXTENDING default::Person {
      CREATE PROPERTY secret_identity -> std::str;
  };
};
