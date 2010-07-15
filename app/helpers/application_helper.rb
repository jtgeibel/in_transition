module ApplicationHelper
  def title
    name = "Transition Pittsburgh"
    return "#{@title} - #{@controller.controller_name.humanize} - #{name}" if @title
    name
  end
end
