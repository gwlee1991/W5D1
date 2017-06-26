class ChangePostSubTableName < ActiveRecord::Migration[5.0]
  def change
    rename_table :postsubs, :post_subs
  end
end
