class CreateNetworths < ActiveRecord::Migration[5.2]
  def change
    create_table :networths do |t|
      t.decimal :value
      t.timestamp :date

      t.timestamps
    end
  end
end
