CREATE MIGRATION m1s4nfc7eoyuigwvsaxg2jqe2z6zd72bvatfyk7aldfyk3akd6hvnq
    ONTO m1n4qjceuybu3wgldsetxs6c4jwr6pdximt5ouf2bv2ggrib7noy3q
{
  CREATE ABSTRACT TYPE default::HasEmail {
      CREATE REQUIRED PROPERTY email -> std::str;
  };
  ALTER TYPE default::Hero {
      CREATE PROPERTY email -> std::str {
          SET REQUIRED USING ((.name ++ '@gmail.com'));
      };
      EXTENDING default::HasEmail LAST;
  };
  ALTER TYPE default::Hero {
      ALTER PROPERTY email {
          DROP OWNED;
          RESET OPTIONALITY;
          RESET TYPE;
      };
  };
};
