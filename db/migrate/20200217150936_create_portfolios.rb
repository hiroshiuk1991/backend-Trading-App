class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.integer :investor_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
