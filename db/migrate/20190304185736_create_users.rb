class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :user_name
      t.string :password
      t.belongs_to :coffee_shop, foreign_key: true

      t.timestamps
    end
  end
end
