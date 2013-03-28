class AddLulnikIdToLuls < ActiveRecord::Migration
  def change
    add_column :luls, :lulnik_id, :integer
  end
end
