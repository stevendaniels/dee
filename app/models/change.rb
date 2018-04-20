class Change < ApplicationRecord
  IGNORED_ATTRIBUTES = ["updated_at"].freeze

  belongs_to :subject, polymorphic: true
  validates :changed_values, presence: true

  def self.perform(subject)
    changes = subject.saved_changes
    changes = filter(subject, changes)

    return if changes.empty?

    create! do |change|
      change.subject = subject
      change.changed_values = changes
      change.changed_at = subject.updated_at
    end
  end

  def self.filter(subject, changes)
    changes.reject do |key, _|
      IGNORED_ATTRIBUTES.any? { |attr| key.match(attr) }
    end.reject do |key, (old_value, new_value)|
      old_value == new_value
    end
  end
  private_class_method :filter

  def self.for(subject)
    where(subject_id: subject.id, subject_type: subject.class.base_class.to_s)
  end
end
