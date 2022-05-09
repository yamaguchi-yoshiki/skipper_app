class TestsController < ApplicationController
  def top
    @chartlabels = (0..6).map { |n| n.day.ago.strftime("%-m月 %-d日") }.reverse
    @chartdatas = [10, 6, 3, 7, 4, 12, 2]
    @chart1 = [@chartlabels, @chartdatas].transpose
  end
end
