Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("sqlite://db/blog_tutorial_development.db", :loggers => [logger])
  when :production  then Sequel.connect("postgres://jqvouiyexakjuk:e22e97805d66f518945d0f24734226de1532adce22ccc7f40d8023c035b1a10a@ec2-54-247-166-129.eu-west-1.compute.amazonaws.com:5432/d6f3ijk0j92bf6", :loggers => [logger])
  when :test        then Sequel.connect("sqlite://db/blog_tutorial_test.db",  :loggers => [logger])
end
