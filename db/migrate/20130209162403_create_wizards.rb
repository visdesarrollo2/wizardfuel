class CreateWizards < ActiveRecord::Migration
  def change
    create_table :wizards do |t|
      t.string :field1
      t.string :field2
      t.string :field3
      t.string :field4
      t.string :field5
      t.string :field6

      t.timestamps
    end
  end
end
