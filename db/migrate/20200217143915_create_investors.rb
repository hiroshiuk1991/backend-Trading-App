class CreateInvestors < ActiveRecord::Migration[6.0]
  def change
    create_table :investors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :wallet

      t.timestamps
    end
  end
end
