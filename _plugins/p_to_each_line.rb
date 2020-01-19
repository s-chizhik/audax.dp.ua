module Jekyll
  module AddPTagToEachLine
    safe = true

    def p_to_each_line(str)
      if (str.instance_of?(String)) then
        str.split("\n").reject(&:empty?).map{ |s| "<p>#{s}</p>" }.join()
      end
    end
 end
end

Liquid::Template.register_filter(Jekyll::AddPTagToEachLine)
