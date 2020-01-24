# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Payment History', js: true do
  let!(:order) { create(:completed_order_with_pending_payment) }

  before do
    login_as_admin
  end

  it "tracks order payment history" do
    visit spree.admin_order_payments_path(order)
    expect(page).to have_text('history (0)')

    click_icon 'capture'
    expect(page).to have_text('Payment Updated')
    expect(page).to have_text('history (1)')

    click_link 'history'
    expect(page).to have_text('Log Entries')
    expect(page).to have_text(Spree::LogEntry.first.created_at)

    expect(page).not_to have_text('CVV')
    click_link 'More Info'
    expect(page).to have_text('CVV')
  end
end
