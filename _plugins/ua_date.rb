module Jekyll
  module UaDateFilter

    def ua_date(date)
      months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"]
      if (date != nil) then
        "#{date.strftime('%e')} #{months[date.strftime('%m').to_i - 1]}  #{date.strftime('%Y')}"
      end
    end
 end
end

Liquid::Template.register_filter(Jekyll::UaDateFilter)
