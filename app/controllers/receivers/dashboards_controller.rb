class Receivers::DashboardsController < ReceiverController

  def index
    @organizations = Organization.all
    @hash = Gmaps4rails.build_markers(@organizations) do |organization, marker|
      marker.lat organization.latitude
      marker.lng organization.longitude
      marker.infowindow organization.name
      marker.title organization.name
      #marker.picture({
      #  :url => "/assets/map-icons/grocery.png",
      #  :width => 36,
      #  :height => 36
      #})
    end
    to_javascript hash: @hash
  end

  private

  def cart
    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(:text => "Population vs GDP For 5 Big Countries [2009]")
      f.xAxis(:categories => ["United States", "Japan", "China", "Germany", "France"])
      f.series(:name => "GDP in Billions", :yAxis => 0, :data => [14119, 5068, 4985, 3339, 2656])
      f.series(:name => "Population in Millions", :yAxis => 1, :data => [310, 127, 1340, 81, 65])

      f.yAxis [
        {:title => {:text => "GDP in Billions", :margin => 70} },
        {:title => {:text => "Population in Millions"}, :opposite => true},
      ]

      f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
      f.chart({:defaultSeriesType=>"column"})
    end
  end
end

