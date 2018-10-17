class AddStatusToCrm < ActiveRecord::Migration[5.1]
  def change
    add_column :crms, :status, :boolean
  end
end
