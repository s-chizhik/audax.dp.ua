module Jekyll
  module UaDateFilter
    safe = true

    def ua_date(date, with_time = false)
      months = ["Січень", "Лютий", "Березень", "Квітень", "Травень", "Червень", "Липень", "Серпень", "Вересень", "Жовтень", "Листопад", "Грудень"]

      if (date.instance_of?(String)) then
        date = DateTime.parse(date)
      end

      if (date != nil) then

        if (with_time) then
          "#{date.strftime('%e')} #{months[date.strftime('%m').to_i - 1]} #{date.strftime('%Y, %H:%M')}"
        else
          "#{date.strftime('%e')} #{months[date.strftime('%m').to_i - 1]}  #{date.strftime('%Y')}"
        end

      end

    end
 end
end

Liquid::Template.register_filter(Jekyll::UaDateFilter)
