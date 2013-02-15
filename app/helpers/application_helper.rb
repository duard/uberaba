module ApplicationHelper
  def nav_link(text, link)
    recognized = Rails.application.routes.recognize_path(link)
    if recognized[:controller] == params[:controller] && recognized[:action] == params[:action]
      content_tag(:li, :class => "active") do
        link_to( text, link)
      end
    else
      content_tag(:li) do
        link_to( text, link)
      end
    end
  end

  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

  def twitterized_type(type)
    case type
    when :alert
      "alert-block"
    when :error
      "alert-error"
    when :notice
      "alert-info"
    when :success
      "alert-success"
    else
      type.to_s
    end
  end

  def safe_image_tag(source, options = {})
    source ||= "default.jpg"
    image_tag(source, options)
  end

  def mostra_data(date)
    I18n.localize(date)
  end

  def resumo(text)
    return raw truncate(text, :omission => '', :length => 272, :separator => ' ')
  end

  def title(page_title)
    content_for(:title) { page_title }
  end

  def button_bstrap(caption, style, icon, link)
    data = "<li><div><a class='#{style}' href='#{link}'><i class='#{icon}'></i> #{caption}</a></div></li>"
  end

  def button_strap(caption, style, link)
    button_tag(:type => 'button', :class => "#{style}") do
      link_to caption, link
    end
  end

  def show_user
    if user_signed_in?
      data = current_user.email
      data.html_safe
    end
  end

  def entrar_sair
    if user_signed_in?
      data = link_to "Sair", logout_path
    else
      data = link_to "Entrar", login_path
    end
  end

  def registrar_admin
    if user_signed_in?
      if current_user.role == "admin"
        separador = '<li class="divider-vertical"></li>'
        data = button_bstrap('Admin', 'btn btn-info', 'icon-user icon-white', admin_root_path)
        data = data + separador + button_bstrap('Profile', 'btn btn-warning', 'icon-user icon-white', profile_path)
      else
        data = button_bstrap('Profile', 'btn btn-action', 'icon-user icon-white', profile_path)
      end
    else
      data = button_bstrap('Registrar', 'btn btn-success', 'icon-user icon-white', register_path)
    end
    data.html_safe
  end

  def my_helper
    data = "<p>EPA EAP!</p>"
    data.html_safe
  end
end
