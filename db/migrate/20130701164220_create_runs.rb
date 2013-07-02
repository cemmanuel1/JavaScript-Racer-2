class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.belongs_to :race
      t.belongs_to :player
      t.time :completion_time
      t.timestamps
    end
  end
end
