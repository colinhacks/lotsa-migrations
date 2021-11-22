CREATE MIGRATION m1ixnj3iqwmmnoqptynm57obq4uifq37qpgrvt2qtl5jd6h6z6spwq
    ONTO m13lkjixxlo4y2lnm6nh4y5zc76e4lr24jjots7iqqskwq6tqz6yaq
{
  CREATE TYPE default::MessageThread {
      CREATE PROPERTY name -> std::str;
  };
  CREATE TYPE default::Message {
      CREATE LINK chat -> default::MessageThread {
          ON TARGET DELETE  DELETE SOURCE;
      };
  };
  ALTER TYPE default::User {
      CREATE REQUIRED PROPERTY is_active -> std::bool {
          SET REQUIRED USING (false);
      };
  };
};
