Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("sqlite://db/blog_tutorial_development.db", :loggers => [logger])
  when :production  then Sequel.connect("postgres://mrmjyshxlocriz:c6315a3f0319c08e9fb895514fe12f98ec6470047aec3071223ad9a363cd7c7c@ec2-54-247-166-129.eu-west-1.compute.amazonaws.com:5432/dajt96oh1akfuu", :loggers => [logger])
  when :test        then Sequel.connect("sqlite://db/blog_tutorial_test.db",        :loggers => [logger])
end
