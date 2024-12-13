class DeviseMailerPreview < ActionMailer::Preview
  # def confirmation_instructions
  #   DeviseMailer.confirmation_instructions(User.first, "faketoken", {})
  # end

  def reset_password_instructions
    DeviseMailer.reset_password_instructions(User.first, "faketoken", {})
  end

  def invitation_instructions
    DeviseMailer.invitation_instructions(User.first, "faketoken", {})
  end

  # Preview this email at http://localhost:3000/rails/mailers/devise_mailer/unlock_instructions
  # def unlock_instructions
  #   DeviseMailer.unlock_instructions(User.first, "faketoken", {})
  # end

  # def email_changed
  #   DeviseMailer.email_changed(User.first, {})
  # end

  # def password_change
  #   DeviseMailer.password_change(User.first, {})
  # end
end
