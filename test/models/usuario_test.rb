require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "debe crear un usuario" do
  	u = Usuario.new(username: "Deyvis", email: "deyvis@gmail.com", password: "12345678")
  	assert u.save
  end

  test "debe crear un usuario sin email" do
  	u = Usuario.new(username: "Deyvis", password: "12345678")
  	assert u.save
  end

end
