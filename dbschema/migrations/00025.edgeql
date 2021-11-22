CREATE MIGRATION m176ge2wlgj7aujjycbfwbsbm3fykkunwgrz2pxwdi675vo2jskckq
    ONTO m12q3okdgqxiypddpgkfxuzxcpfktxvgp7olpwupun3cudfegx2f3a
{
  CREATE TYPE default::MixedUp {
      CREATE REQUIRED PROPERTY name -> std::str;
      CREATE PROPERTY all_caps_name := (__source__.name);
  };
};
