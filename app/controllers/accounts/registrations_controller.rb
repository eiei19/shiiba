class Accounts::RegistrationsController < Devise::RegistrationsController
  def new
    binding.pry
    super
  end
end