class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.references :map, foreign_key: true
      t.string :sys_name
      t.string :p_sys_name

      t.timestamps
    end
  end
end
