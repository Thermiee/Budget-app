require 'test_helper'

class BudgetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should be valid' do
    budget = Budget.new(name: 'Test Budget', user_id: 1)
    assert budget.valid?
  end
end
