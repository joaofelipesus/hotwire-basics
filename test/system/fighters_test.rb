require "application_system_test_case"

class FightersTest < ApplicationSystemTestCase
  setup do
    @fighter = fighters(:one)
  end

  test "visiting the index" do
    visit fighters_url
    assert_selector "h1", text: "Fighters"
  end

  test "should create fighter" do
    visit fighters_url
    click_on "New fighter"

    fill_in "Fight record", with: @fighter.fight_record
    fill_in "Name", with: @fighter.name
    fill_in "Weight class", with: @fighter.weight_class
    click_on "Create Fighter"

    assert_text "Fighter was successfully created"
    click_on "Back"
  end

  test "should update Fighter" do
    visit fighter_url(@fighter)
    click_on "Edit this fighter", match: :first

    fill_in "Fight record", with: @fighter.fight_record
    fill_in "Name", with: @fighter.name
    fill_in "Weight class", with: @fighter.weight_class
    click_on "Update Fighter"

    assert_text "Fighter was successfully updated"
    click_on "Back"
  end

  test "should destroy Fighter" do
    visit fighter_url(@fighter)
    click_on "Destroy this fighter", match: :first

    assert_text "Fighter was successfully destroyed"
  end
end
