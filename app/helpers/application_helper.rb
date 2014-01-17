module ApplicationHelper

  def display_flashes
    if flash.present?
      ret = ''
      ret << "<div id='flash'>"
      flash.each do |level,notice|
        ret << "<p class='#{level}'>"
        ret << "#{notice}"
        ret << link_to("X", nil, class: 'close_button')
        ret << "</p>"
      end
      ret << "</div>"
      ret.html_safe
    end
  end

end
