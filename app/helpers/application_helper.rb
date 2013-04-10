
module ApplicationHelper

  def full_title(page_title, subpage_title)
    base_title = "Dow Center Worker Website"
    if page_title.empty?
      base_title
    elsif subpage_title.empty?
      "#{base_title} | #{page_title}"
    else
      "#{base_title} | #{page_title} - #{subpage_title}"

      end
    end
end
