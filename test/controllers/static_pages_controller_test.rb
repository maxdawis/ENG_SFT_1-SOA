require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "Home | SOA - Sistema de Orientação Acadêmica"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "Ajuda | SOA - Sistema de Orientação Acadêmica"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "Sobre | SOA - Sistema de Orientação Acadêmica"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "Contato | SOA - Sistema de Orientação Acadêmica"
  end

  test "should get news" do
    get :news
    assert_response :success
    assert_select "News | SOA - Sistema de Orientação Acadêmica"
  end

end
