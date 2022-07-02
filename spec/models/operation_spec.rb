require 'rails_helper'

RSpec.describe Operation, type: :model do
  before :example do
    @user = User.create(name: 'Temmy')
    @operation = Operation.create(name: 'Test', author: @user)
  end
end
