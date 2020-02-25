class CreateQuizScores < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz_scores do |t|
      t.integer :score
      t.integer :investor_id

      t.timestamps
    end
  end
end
