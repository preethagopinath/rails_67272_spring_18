class CreateStudnets < ActiveRecord::Migration[5.1]
  def change
    create_table :studnets do |t|
      t.string :lanme
      t.string :fname
      t.string :email

      t.timestamps
    end
  end
end
