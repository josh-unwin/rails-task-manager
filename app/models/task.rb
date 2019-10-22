class Task < ApplicationRecord

  def mark_as_complete
    self.completed = true
  end
end
