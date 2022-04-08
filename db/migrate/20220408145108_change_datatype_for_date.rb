class ChangeDatatypeForDate < ActiveRecord::Migration[7.0]
  def up
    change_table :activities do |t|
      t.change :date, :date
    end
  end

  def down
    change_table :activities do |t|
      t.change :date, :datetime
    end
  end
end
