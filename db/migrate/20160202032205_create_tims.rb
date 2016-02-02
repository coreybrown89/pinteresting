class CreateTims < ActiveRecord::Migration
  def change
    create_table :tims do |t|

      t.timestamps null: false
    end
  end
end
