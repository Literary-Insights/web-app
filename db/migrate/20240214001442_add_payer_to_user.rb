class AddPayerToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :payer, :boolean, default: false
  end
end
