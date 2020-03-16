class ApplicationController < ActionController::Base

       
    def after_sign_in_path_for(resource)
        if resource.is_a?(AdminUser)
            admin_dashboard_path
        else
            homes_index_path
        end
    end
end
