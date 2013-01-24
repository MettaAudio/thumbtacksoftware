class AddSequenceToProject < ActiveRecord::Migration
  def change
    add_column :projects, :sequence, :integer, :default => 99
  end
end
