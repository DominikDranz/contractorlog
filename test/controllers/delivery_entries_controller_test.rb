require 'test_helper'

class DeliveryEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_entry = delivery_entries(:one)
  end

  test "should get index" do
    get delivery_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_entry_url
    assert_response :success
  end

  test "should create delivery_entry" do
    assert_difference('DeliveryEntry.count') do
      post delivery_entries_url, params: { delivery_entry: { company: @delivery_entry.company, date: @delivery_entry.date, in: @delivery_entry.in, initials: @delivery_entry.initials, out: @delivery_entry.out, pass_num: @delivery_entry.pass_num, plate_state: @delivery_entry.plate_state, plate_trailer: @delivery_entry.plate_trailer, plate_vehicle: @delivery_entry.plate_vehicle } }
    end

    assert_redirected_to delivery_entry_url(DeliveryEntry.last)
  end

  test "should show delivery_entry" do
    get delivery_entry_url(@delivery_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_entry_url(@delivery_entry)
    assert_response :success
  end

  test "should update delivery_entry" do
    patch delivery_entry_url(@delivery_entry), params: { delivery_entry: { company: @delivery_entry.company, date: @delivery_entry.date, in: @delivery_entry.in, initials: @delivery_entry.initials, out: @delivery_entry.out, pass_num: @delivery_entry.pass_num, plate_state: @delivery_entry.plate_state, plate_trailer: @delivery_entry.plate_trailer, plate_vehicle: @delivery_entry.plate_vehicle } }
    assert_redirected_to delivery_entry_url(@delivery_entry)
  end

  test "should destroy delivery_entry" do
    assert_difference('DeliveryEntry.count', -1) do
      delete delivery_entry_url(@delivery_entry)
    end

    assert_redirected_to delivery_entries_url
  end
end
