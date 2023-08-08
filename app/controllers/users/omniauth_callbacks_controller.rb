class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def google_oauth2
        @user = User.from_omniauth(request.env['omniauth.auth'])

        if @user.persisted?
            flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
            sign_in_and_redirect @user, event: :authentication
        else
            session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can 
            redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end

    def facebook
        @user = User.from_omniauth(request.env['omniauth.auth'])

        if @user.persisted?
            flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Facebook'
            sign_in_and_redirect @user, event: :authentication
        else
            session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can 
            redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end

    def github
        @user = User.from_omniauth_github(request.env['omniauth.auth'])
        if @user.persisted?
            Repository.create(repo_url: request.env['omniauth.auth'].extra.raw_info.repos_url, public_repo: request.env['omniauth.auth'].extra.raw_info.public_repos, user_id: @user.id) unless Repository.where(user_id: @user.id).present?
            flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Github'
            sign_in_and_redirect @user, event: :authentication
        else
            session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can 
            redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
        end
    end

end
