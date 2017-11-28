class Contact < MailForm::Base
	attribute :name, validate: true
	attribute :email, validate: true, email: true
	attribute :message, validate: true
	attribute :nickname, captcha: true

	def headers
		{
			:subject => "Refugee Advocacy and Development Contact Form",
			:to => "admin@raduganda.com",
			:from => %("#{name}" <#{email}>)

		}
	end
end