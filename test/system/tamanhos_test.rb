require "application_system_test_case"

class TamanhosTest < ApplicationSystemTestCase
  setup do
    @tamanho = tamanhos(:one)
  end

  test "visiting the index" do
    visit tamanhos_url
    assert_selector "h1", text: "Tamanhos"
  end

  test "creating a Tamanho" do
    visit tamanhos_url
    click_on "New Tamanho"

    fill_in "Numero", with: @tamanho.numero
    click_on "Create Tamanho"

    assert_text "Tamanho was successfully created"
    click_on "Back"
  end

  test "updating a Tamanho" do
    visit tamanhos_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @tamanho.numero
    click_on "Update Tamanho"

    assert_text "Tamanho was successfully updated"
    click_on "Back"
  end

  test "destroying a Tamanho" do
    visit tamanhos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tamanho was successfully destroyed"
  end
end
