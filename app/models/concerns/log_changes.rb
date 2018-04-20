module LogChanges
  extend ActiveSupport::Concern

  included do
    after_update :log_changes
  end

  def log_changes
    Change.perform(self)
  end
end
