CREATE MIGRATION m1x43q5nzybl3cgguslpgvuaevldphlflxm7letdbl764f433yjrbq
    ONTO m1sgmdapmqlw7tkqjvp76ukhvrfsrnurfnp56uuuovcarzsogvypga
{
  CREATE TYPE default::Overloaded EXTENDING default::HasEmail {
      ALTER PROPERTY email {
          SET OWNED;
          SET REQUIRED;
          SET TYPE std::str;
      };
  };
};
