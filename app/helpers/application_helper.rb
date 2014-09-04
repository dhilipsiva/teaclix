module ApplicationHelper
end
module Spree
  module BaseHelper
    def bs_alert_convert msg_type
      # Convers to boorstrap equivalent
      case msg_type
      when "error"
        return "danger"
      end
      return "info"
    end
    def flash_messages(opts = {})
      ignore_types = ["order_completed"].concat(Array(opts[:ignore_types]).map(&:to_s) || [])

      flash.each do |msg_type, text|
        unless ignore_types.include?(msg_type)
          concat(content_tag :div, text, class: "alert alert-#{bs_alert_convert msg_type}")
        end
      end
      nil
    end
  end
end

