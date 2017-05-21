Sequel.migration do
  class Account < Sequel::Model; end
  class Post < Sequel::Model
    many_to_one :account
  end

  up do
    first_account_id = from(:accounts).get(:id)

    if first_account_id
      from(:posts).update(account_id: first_account_id)
    end
  end

  down do
    from(:posts).update(account_id: nil)
  end
end
