require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/suppliers.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal supplier.count, data.length
  end

  test "show" do
    get "/suppliers/#{supplier.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "email", "phone_number", "created_at", "updated_at"], data.keys
  end
end
