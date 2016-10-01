class Form < MailForm::Base
  append :remote_ip

  attribute :name, :validate => true
  attribute :phone, :validate => true
  attribute :email, :validate => /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  attribute :reference, :validate => true
  attribute :message, :validate => true
  attribute :nickname,  :captcha => true

  def headers
    {
    subject: "Kardoesie website email from customer",
    to: "kardoesie2016@gmail.com",
    from: %("#{name}" <#{email}>)
  }
  end
end
