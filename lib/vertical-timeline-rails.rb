module Vertical
  module Timeline
    module Rails
      require 'vertical-timeline-rails/engine'
      require 'vertical-timeline-rails/version'

      # @example
      #   <%= timeline_container('Awesome title', Date.today, 'cd-icon-picture.svg') do %>
      #     <p>Lorem ipsum dolor sit amet.</p>
      #     <%= link_to 'See item', '#', class: 'cd-read-more' %>
      #   <% end %>
      def timeline_container(title, date, image, &block)
        """
        <div class=\"cd-timeline-block\">
          <div class=\"cd-timeline-img cd-picture\">
            #{image_tag image}
          </div>
          <div class=\"cd-timeline-content\">
            <h2>#{title}</h2>
            #{capture(&block)}
            <span class=\"cd-date\">#{l(date, format: :short)}</span>
          </div>
        </div>
        """.html_safe
      end
    end
  end
end

ActionView::Base.send :include, Vertical::Timeline::Rails
