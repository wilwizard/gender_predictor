class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
    	t.decimal :weight
    	t.decimal :height
    	t.string :gender
      t.timestamps
    end
  end
end
