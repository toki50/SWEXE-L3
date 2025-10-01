class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :number
      t.string :maile

      t.timestamps
    end
  end
end
