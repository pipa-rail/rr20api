class CreateCourseResults < ActiveRecord::Migration[5.1]
  def change
    create_table :course_results do |t|
      t.integer :id
      t.datetime :created_at
      t.decimal :usd
      t.decimal :eur
      t.decimal :rur

      t.timestamps
    end
  end
end
