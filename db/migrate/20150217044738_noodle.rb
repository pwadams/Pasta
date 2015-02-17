class Noodle < ActiveRecord::Migration
  def change
    create_table :noodles do |t|
    t.string :shape
    t.string :sauce

    t.timestamps null: false
  end
end
end
