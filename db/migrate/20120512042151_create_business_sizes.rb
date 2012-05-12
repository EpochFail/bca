class CreateBusinessSizes < ActiveRecord::Migration
  def change
    create_table :business_sizes do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
