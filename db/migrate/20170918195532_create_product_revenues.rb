class CreateProductRevenues < ActiveRecord::Migration[5.1]
  def change
    create_table :product_revenues do |t|

      t.timestamps
    end
  end
end
