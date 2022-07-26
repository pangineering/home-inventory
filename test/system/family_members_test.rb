require "application_system_test_case"

class FamilyMembersTest < ApplicationSystemTestCase
  setup do
    @family_member = family_members(:one)
  end

  test "visiting the index" do
    visit family_members_url
    assert_selector "h1", text: "Family members"
  end

  test "should create family member" do
    visit family_members_url
    click_on "New family member"

    fill_in "Dob", with: @family_member.dob
    fill_in "F", with: @family_member.f_id
    fill_in "Gender", with: @family_member.gender
    fill_in "M", with: @family_member.m_id
    fill_in "Name", with: @family_member.name
    fill_in "Role", with: @family_member.role
    click_on "Create Family member"

    assert_text "Family member was successfully created"
    click_on "Back"
  end

  test "should update Family member" do
    visit family_member_url(@family_member)
    click_on "Edit this family member", match: :first

    fill_in "Dob", with: @family_member.dob
    fill_in "F", with: @family_member.f_id
    fill_in "Gender", with: @family_member.gender
    fill_in "M", with: @family_member.m_id
    fill_in "Name", with: @family_member.name
    fill_in "Role", with: @family_member.role
    click_on "Update Family member"

    assert_text "Family member was successfully updated"
    click_on "Back"
  end

  test "should destroy Family member" do
    visit family_member_url(@family_member)
    click_on "Destroy this family member", match: :first

    assert_text "Family member was successfully destroyed"
  end
end
