CREATE MIGRATION m13lkjixxlo4y2lnm6nh4y5zc76e4lr24jjots7iqqskwq6tqz6yaq
    ONTO m1x43q5nzybl3cgguslpgvuaevldphlflxm7letdbl764f433yjrbq
{
  CREATE ABSTRACT CONSTRAINT default::min_value(min: anytype) {
      SET errmessage := 'Minimum allowed value for {__subject__} is {min}.';
      USING ((__subject__ >= min));
  };
};
