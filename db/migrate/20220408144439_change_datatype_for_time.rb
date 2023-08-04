class ChangeDatatypeForTime < ActiveRecord::Migration[7.0]
  def change
    change_table :activities do |t|
      t.time :time
    end
  end
end
