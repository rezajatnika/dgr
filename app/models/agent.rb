class Agent < ActiveRecord::Base
  def name_with_id
    "#{id} - #{name} (#{pic})"
  end
end
