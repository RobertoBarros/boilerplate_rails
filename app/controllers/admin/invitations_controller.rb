class Admin::InvitationsController < Devise::InvitationsController
  def create
    self.resource = invite_resource
    resource_invited = resource.errors.empty?

    yield resource if block_given?

    if resource_invited
      flash[:notice] = "Usuário Convidado"
      render turbo_stream: turbo_stream.action(:redirect, admin_users_path)
    else
      render "devise/invitations/new", status: :unprocessable_entity
    end
  end
end
