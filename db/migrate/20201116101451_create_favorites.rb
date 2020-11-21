class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :favomicropost, foreign_key: {to_table: :microposts}

      t.timestamps
      
      t.index [:user_id, :favomicropost_id], unique: true
    end
  end
end
