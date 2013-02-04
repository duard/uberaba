module Admin::ApplicationHelper

  def brand_title
    a1 = Settings.env.appname
    a2 = Settings.env.empresa

    puts  a1
    puts  a2

    link_to admin_root_path, :class => "brand" do
      content_tag(:span, a1, class: 'first')
      content_tag(:span, a2, class: 'second')
    end
  end

  def lalala(texto)
    return %{<tags>
    #{texto}
    </tags>}.html_safe
  end

end
