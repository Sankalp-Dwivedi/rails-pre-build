require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Address", with: @post.address
    fill_in "Area type", with: @post.area_type
    fill_in "Location", with: @post.location
    fill_in "Rate", with: @post.rate
    fill_in "Size", with: @post.size
    fill_in "Total price", with: @post.total_price
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Address", with: @post.address
    fill_in "Area type", with: @post.area_type
    fill_in "Location", with: @post.location
    fill_in "Rate", with: @post.rate
    fill_in "Size", with: @post.size
    fill_in "Total price", with: @post.total_price
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end