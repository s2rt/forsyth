class AddPreviewToProduct < ActiveRecord::Migration
  def change
    add_column :products, :preview, :text

  end
end
