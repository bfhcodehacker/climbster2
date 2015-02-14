class AlterPhotosAddImageCredit < ActiveRecord::Migration
  def change
    add_column :photos, :img_credit, :string
  end
end
