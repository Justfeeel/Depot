require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Подтверждение заказа в Apple Products", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
  end

  test "shipped" do
  mail = OrderNotifier.shipped(orders(:one))
  assert_equal "Заказ из Apple Products отправлен", mail.subject
  assert_equal ["dave@example.org"], mail.to
  assert_equal ["depot@example.com"], mail.from
    end
  end