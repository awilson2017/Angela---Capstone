require "test_helper"

describe DecksController do
  it "should get index" do
    get decks_index_url
    value(response).must_be :success?
  end

  it "should get show" do
    get decks_show_url
    value(response).must_be :success?
  end

  it "should get new" do
    get decks_new_url
    value(response).must_be :success?
  end

  it "should get create" do
    get decks_create_url
    value(response).must_be :success?
  end

  it "should get edit" do
    get decks_edit_url
    value(response).must_be :success?
  end

  it "should get update" do
    get decks_update_url
    value(response).must_be :success?
  end

  it "should get destroy" do
    get decks_destroy_url
    value(response).must_be :success?
  end

end
