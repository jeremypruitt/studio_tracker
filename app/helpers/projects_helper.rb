module ProjectsHelper
  def add_track_link(name)
    link_to_function "Add a track" do |page|
      page.insert_html :bottom, :tracks, :partial => "track", :object => Track.new
    end
  end
end
