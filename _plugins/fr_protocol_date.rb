module Jekyll
  module FrProtocolDate
    safe = true

    def fr_protocol_date(date)

      if (date.instance_of?(String)) then
        date = DateTime.parse(date)
      end

      if (date != nil) then
        "#{date.strftime('%m/%d/%Y')}"
      end
    end
 end
end

Liquid::Template.register_filter(Jekyll::FrProtocolDate)
