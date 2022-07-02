require 'rails_helper'

RSpec.describe User, type: :model do
  before :example do
    @user = User.create(name: 'Temmy')
    @operation = Operation.create(name: 'Test', author: @user)
  end

  it 'should have a name' do
    expect(@user.name).to eq('Temmy')
  end
end
