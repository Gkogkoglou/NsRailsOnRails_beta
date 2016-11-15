class CreateJourneys < ActiveRecord::Migration[5.0]
  def change
    create_table :journeys do |t|
      t.string :from
      t.string :string
      t.string :to
      t.string :string
      t.string :leave_at
      t.string :time
      t.string :arrive_at
      t.string :time
      t.string :price
      t.string :float
      t.string :user
      t.string :references

      t.timestamps
    end
  end
end
