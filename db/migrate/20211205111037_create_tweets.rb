class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :image_id
      t.text :tweet_text

      t.timestamps
    end
  end
end
