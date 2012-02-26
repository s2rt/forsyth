class AddIsFeaturedToProduct < ActiveRecord::Migration
  def change
    add_column :products, :is_featured, :boolean, default:false

  end
end
