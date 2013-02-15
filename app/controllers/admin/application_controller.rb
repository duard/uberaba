class Admin::ApplicationController < ApplicationController
  protect_from_forgery

  layout  "admin"

  # before_filter :verify_admin

  protected
    def verify_admin
      if !current_user.nil?
        Rails.logger.info "User -> #{current_user.role} "
        if current_user.role != "admin"
          # redirect_to inicio_path
        end
      else
        # redirect_to inicio_path
      end
    end
end
