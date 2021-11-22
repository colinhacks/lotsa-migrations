CREATE MIGRATION m1dhuott2zoo5cbd4xrozdmg5cvm4goo77chbzxeqrppi4qatkajia
    ONTO m176ge2wlgj7aujjycbfwbsbm3fykkunwgrz2pxwdi675vo2jskckq
{
  ALTER TYPE default::MixedUp {
      CREATE PROPERTY other -> std::str;
  };
};
