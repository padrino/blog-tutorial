Sequel.migration do
    # Stub Models
  class Account < Sequel::Model; end
  class Post < Sequel::Model
    many_to_one :account
  end

  up do
    alter_table :posts do
      add_column :account_id, Integer
    end
  end

  down do
    alter_table :posts do
      drop_column :account_id
    end
  end
end
