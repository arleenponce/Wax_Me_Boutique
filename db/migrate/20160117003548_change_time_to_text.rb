class ChangeTimeToText < ActiveRecord::Migration
  def change
  	change_column :services, :time, :text
  end
end
