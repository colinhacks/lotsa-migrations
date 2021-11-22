CREATE MIGRATION m1b3r3ubefrkalqj4mfxph7xl3ird2jqzfb3jc556ak4rfwlw2sheq
    ONTO m1wjhs2v7elqmvkbpx6oowxaooalgq7t5oyd2rqubemiivcihsek3q
{
  ALTER TYPE auth::User {
      CREATE LINK blogs_subquery := (SELECT
          default::BlogPost
      FILTER
          (.author = auth::User)
      );
  };
};
