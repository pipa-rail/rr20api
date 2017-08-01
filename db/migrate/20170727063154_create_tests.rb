class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :email
      t.string :password
      t.string :auth_token

      t.timestamps
    end
  end
end
