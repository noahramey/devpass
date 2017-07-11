class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
