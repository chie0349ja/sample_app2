require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/homes'
    assert_template "a[href=?]", root_path, count: 2
    assert_template "a[herf=?]", help_path  
    assert_template "a[herf=?]", about_path
    assert_template "a[herf=?]", contact_path
  end
end
