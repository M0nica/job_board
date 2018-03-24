# this class automatically inherits functionality from the ActiveRecord functionality of Rails.
class Job < ActiveRecord::Base
  def change
    create_table :jobs do |t|
      t.timestamps
    end
  end
end
