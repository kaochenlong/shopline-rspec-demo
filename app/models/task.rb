class Task < ApplicationRecord
  belongs_to :project

  def toggle_complete!
    completed_at.nil? ? update(completed_at: Time.current) : update(completed_at: nil)
  end
end
