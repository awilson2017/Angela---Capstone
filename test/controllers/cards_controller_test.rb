require "test_helper"

describe CardsController do
  it "should get index" do
    get cards_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get cards_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get cards_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get cards_create_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get cards_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get cards_update_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get cards_destroy_url
    value(response).must_be :success?
  end

end
