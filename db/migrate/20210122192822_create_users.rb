class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :ip
      t.string :country
      t.string :language

      t.timestamps
    end
  end
end
