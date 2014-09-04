module Spree
  module CheckoutHelper
    def checkout_states
      @order.checkout_steps
    end

    def font_class state
      case state
      when "address"
        "map-marker"
      when "delivery"
        "truck"
      when "payment"
        "money"
      when "complete"
        "check"
      end
    end

    def checkout_progress
      states = checkout_states
      items = states.map do |state|
        text = Spree.t("order_state.#{state}").titleize
        css_class = "col-lg-3 col-md-3 col-sm-3 col-xs-3"
        css_class += ' current' if state == @order.state
        icon = fa_icon font_class state
        content_tag('li', content_tag('span', icon + text), class: css_class)
      end
      raw(items.join("\n"))
    end
  end
end
