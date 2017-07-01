class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string     :name,        null: false, default: ""
      t.references :department, index: true, null: false
      t.references :manager,    index: true, null: false
      t.timestamps
    end
  end
end
