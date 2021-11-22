CREATE MIGRATION m17mwicodvftg44dbrar63t6rexbsoj5b4zicb5ggksjxvrdjolywq
    ONTO m1n524m53z67ziwnd7aq2ttr6sxofusuj6wr22tvit5ojmnszg3aea
{
  ALTER TYPE data::BlogPost RENAME TO default::BlogPost;
  DROP MODULE data;
};
