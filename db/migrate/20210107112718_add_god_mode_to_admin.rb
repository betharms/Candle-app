class AddGodModeToAdmin < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :godmode, :boolean, default: :false
  end
end
