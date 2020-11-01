module ApplicationHelper
  def sidebar_button(options = {})
    return if options.empty?

    render 'shared/sidebar_button', options: options
  end
end
