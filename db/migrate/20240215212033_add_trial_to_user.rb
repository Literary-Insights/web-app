class AddTrialToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :trial, :boolean, default: true
  end
end
