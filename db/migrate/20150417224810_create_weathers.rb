class CreateWeathers < ActiveRecord::Migration
  def change
    create_table :weathers do |t|
      t.text :weather_phrase
      t.string :condition

      t.timestamps null: false
    end
  end
end
