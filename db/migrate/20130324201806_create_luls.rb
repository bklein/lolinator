class CreateLuls < ActiveRecord::Migration
  def change
    create_table :luls do |t|

      t.timestamps
    end
  end
end
