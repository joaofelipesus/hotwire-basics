class CreateFighters < ActiveRecord::Migration[7.1]
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :weight_class
      t.string :fight_record

      t.timestamps
    end
  end
end
