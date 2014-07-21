require 'rails_helper'

RSpec.describe Membership, :type => :model do
  context '#can_view?' do
    it 'allows to view account if member' do
      account = Account.new
      another_account = Account.new

      membership = subject
      membership.account = account

      expect(membership.can_view?(account)).to be_truthy
      expect(membership.can_view?(another_account)).to be_falsy
    end
  end
end
