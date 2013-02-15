class ApplicationController < ActionController::Base
  protect_from_forgery
  # layout  "aplicativo"

  before_filter :set_locale

  def after_sign_in_path_for(resource)
    profile_path
  end

  def after_sign_out_path_for(resource)
    inicio_path
  end


  private

  def set_locale
    if lang = request.env['HTTP_ACCEPT_LANGUAGE']
      lang = lang[/^[a-z]{2}/]
      lang = :"pt-BR" if lang == "pt"
    end
    I18n.locale = params[:locale] || lang || I18n.default_locale
  end
end
