CREATE MIGRATION m12q3okdgqxiypddpgkfxuzxcpfktxvgp7olpwupun3cudfegx2f3a
    ONTO m1hg57q7vcqxgbtetyslhedqjn2xg6jz5yb2nfx37gyoumfb2dfxwq
{
  ALTER TYPE default::BlogPost {
      ALTER PROPERTY title {
          CREATE CONSTRAINT std::expression ON ((__subject__ = std::str_trim(__subject__)));
      };
  };
  ALTER TYPE default::Dude {
      CREATE ANNOTATION std::deprecated := 'true';
  };
};
