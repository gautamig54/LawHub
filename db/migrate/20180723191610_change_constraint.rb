class ChangeConstraint < ActiveRecord::Migration[5.1]
  change_table :users do |t|
    t.change :name, :string, :null =>true
  end
end
