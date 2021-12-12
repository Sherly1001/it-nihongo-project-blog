require "application_system_test_case"

class PostTest < ApplicationSystemTestCase
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

    fill_in "Number of pages", with: @Post.number_of_pages
    fill_in "Title", with: @Post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Number of pages", with: @post.number_of_pages
    fill_in "Title", with: @post.title
    click_on "Update post"

    assert_text "post was successfully updated"
    click_on "Back"
  end

  test "destroying a post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "post was successfully destroyed"
  end
end
