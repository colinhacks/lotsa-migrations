CREATE MIGRATION m1xq37hlvadpo2lcfavnrojhzg4pkvdb4yxpefmktyzivq7ycuxyna
    ONTO m17mwicodvftg44dbrar63t6rexbsoj5b4zicb5ggksjxvrdjolywq
{
  ALTER TYPE auth::User {
      CREATE LINK blog_posts := (.<author[IS default::BlogPost]);
  };
};
