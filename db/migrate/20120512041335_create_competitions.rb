class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :description
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
