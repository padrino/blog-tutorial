Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("sqlite://db/blog_tutorial_development.db", :loggers => [logger])
  when :production  then Sequel.connect("postgres://ebwfzzgzxiwnhq:c91612b955891736ee7e222924d02db27bfe19b67098db8fa8cdd5f3675feef6@ec2-50-19-95-47.compute-1.amazonaws.com:5432/dd48t9p70h3pvo",  :loggers => [logger])
  when :test        then Sequel.connect("sqlite://db/blog_tutorial_test.db",        :loggers => [logger])
end
