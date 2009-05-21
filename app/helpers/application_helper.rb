# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def toggle_search_link(name)
    link_to_function "search" do |page|
      page.replace_html :main_tabnav, :partial => "layouts/search"
    end
  end
end
