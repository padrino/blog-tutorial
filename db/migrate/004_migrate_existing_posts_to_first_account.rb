Sequel.migration do
  class Account < Sequel::Model; end
  class Post < Sequel::Model
    many_to_one :account
  end

  first_account = Account.first

  up do
    if first_account
      # and assigns a user to all existing posts
      Post.all.each { |p| p.update(account_id: first_account.id) }
    end
  end

  down do
    if first_account
      # and assigns a user to all existing posts
      Post.all.each { |p| p.update(account_id: nil) }
    end
  end
end
