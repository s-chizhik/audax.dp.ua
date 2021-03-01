module Jekyll
  module KPTime
    safe = true

    def kp_open(distance)
      if distance == 0 then
          "00:00"
      else
        _format(distance.fdiv(30)) # 30 кмч - считаем эту скорость за нужную среднюю, что бы открыть КП
      end
    end

    def kp_close(distance)
      if distance == 0 then
          "01:00"
      else
        _format(distance.fdiv(15)) # 15 кмч - минимальная скорость для прохождения
      end
    end

    def _format(hours)
      h = hours.floor.to_s.rjust(2, "0")
      m = ((hours - hours.floor) * 60).truncate.to_s.rjust(2, "0")

      "#{h}:#{m}"
    end
 end
end

Liquid::Template.register_filter(Jekyll::KPTime)
