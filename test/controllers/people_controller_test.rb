require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:gob)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { email: @person.email, name: @person.name, notes: @person.notes, title: @person.title, url: @person.url } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    old_notes = @person.notes
    new_notes = old_notes.reverse

    patch person_url(@person), params: { person: { email: @person.email, name: @person.name, notes: new_notes, title: @person.title, url: @person.url } }
    assert_redirected_to person_url(@person)

    expected_changes = { "notes" => [old_notes, new_notes] }
    assert_equal expected_changes, Change.for(@person).last.changed_values
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
