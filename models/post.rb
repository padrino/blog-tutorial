class Post < Sequel::Model
  many_to_one :account

  plugin :validation_helpers
  def validate
    super
    validates_presence [:title, :body]
  end
end
