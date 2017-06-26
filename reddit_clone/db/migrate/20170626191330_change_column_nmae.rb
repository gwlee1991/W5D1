class ChangeColumnNmae < ActiveRecord::Migration[5.0]
  def change
    rename_column :subs, :moderator, :moderator_id
  end
end
