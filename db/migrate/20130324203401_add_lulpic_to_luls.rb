class AddLulpicToLuls < ActiveRecord::Migration
  def change
    add_column :luls, :lulpic, :string
  end
end
