require 'spec_helper'

RSpec.feature 'Payment History' do
  let!(:order) { create(:completed_order_with_pending_payment) }

  before :each do
    login_as_admin
  end

  it "tracks order payment history" do
    visit spree.admin_order_payments_path(order)
    expect(page).to have_text('history (0)')

    click_icon 'capture'
    expect(page).to have_text('history (1)')

    click_link 'history'
    expect(page).to have_text('Log Entries')
    expect(page).to have_text('Status Success')
  end
end
