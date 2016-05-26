class OrderNotifier < ActionMailer::Base
  default from: 'Riyan Alkaev <depot@example.com>'
# Subject can be set in your I18n file at config/locales/en.yml
# with the following lookup:
#
# en.order_notifier.received.subject
#


  def received(order)
    @order = order

  mail to: order.email, subject: 'Подтверждение заказа в Apple Products'
  end

  def shipped(order)
    @order = order

  mail to: order.email, subject: 'Заказ из Apple Products отправлен'
  end
end
