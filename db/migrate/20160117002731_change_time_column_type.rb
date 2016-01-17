class ChangeTimeColumnType < ActiveRecord::Migration
  def change
  	change_column :services, :cost, :text
  end
end
