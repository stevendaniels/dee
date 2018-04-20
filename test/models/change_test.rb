require 'test_helper'

class ChangeTest < ActiveSupport::TestCase
  test "it records changes for a person (except updated_at)" do
    gob = people(:gob)
    old_name = gob.name
    old_title = gob.title

    new_name = "George Oscar \"Gob\" Bluth II"
    new_title = "Beekeeper"

    assert_difference -> { Change.count }, 1 do
      gob.name = new_name
      gob.title = new_title
      gob.save!
    end

    expected_changes = {
      "name" => [old_name, new_name],
      "title" => [old_title, new_title],
    }

    assert_equal expected_changes, Change.last.changed_values
  end

  test "self.for finds a change via the subject" do
    michael = people(:michael)
    gob = people(:gob)

    old_name = gob.name
    new_name = "George Oscar \"Gob\" Bluth II"
    gob.update_attribute :name, new_name

    old_title = michael.title
    new_title = "Google Street View car driver"
    michael.update_attribute :title, new_title

    assert_equal 1, Change.for(gob).count
    expected_changes = { "name" => [old_name, new_name] }
    assert_equal expected_changes , Change.for(gob).first.changed_values

    assert_equal 1, Change.for(michael).count
    expected_changes = { "title" => [old_title, new_title] }
    assert_equal expected_changes , Change.for(michael).first.changed_values
  end
end
