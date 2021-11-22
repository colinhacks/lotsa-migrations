CREATE MIGRATION m14uqdvlwhxu5wyq46y3yhkhxusi32johjed56rodl53nhz66567hq
    ONTO m12z5ysoxn6kp7sttqb5eyvi53irhh4sxojslckru2jthmcgw67u5a
{
  ALTER TYPE default::Bag {
      CREATE PROPERTY seq -> array<default::my_sequence>;
  };
};
