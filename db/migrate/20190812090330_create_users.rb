class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :screen_name
      t.text :name

      t.timestamps
    end
  end
end
