require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/suppliers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Supplier.count, data.length
  end

  test "show" do
    get "/suppliers/#{Supplier.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "email", "phone_number"], data.keys
  end
end
