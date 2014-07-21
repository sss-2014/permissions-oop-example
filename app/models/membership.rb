class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :account

  def can_view?(another_account)
    account == another_account
  end

  protected

  def same_account?(another)
    account == another
  end
end
