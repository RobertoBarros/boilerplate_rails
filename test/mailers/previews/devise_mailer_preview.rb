class DeviseMailerPreview < ActionMailer::Preview
  # def confirmation_instructions
  #   Devise::Mailer.confirmation_instructions(User.first, "faketoken", {})
  # end

  def reset_password_instructions
    Devise::Mailer.reset_password_instructions(User.first, "faketoken", {})
  end

  # Preview this email at http://localhost:3000/rails/mailers/devise_mailer/unlock_instructions
  # def unlock_instructions
  #   Devise::Mailer.unlock_instructions(User.first, "faketoken", {})
  # end

  def email_changed
    Devise::Mailer.email_changed(User.first, {})
  end

  def password_change
    Devise::Mailer.password_change(User.first, {})
  end
end
