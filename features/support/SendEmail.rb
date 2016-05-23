
# You can add this to life cycle file in support folder

require 'mail'

options = { :address              => "smtp.gmail.com",
            :port                 => 587,
            :domain               => 'sh.sprontz@gmail.com',
            :user_name            => 'sh.sprontz@gmail.com',
            :password             => 'jawa640350',
            :authentication       => 'plain',
            :enable_starttls_auto => true  }



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
  to 'shahar@getstocks.com'
  from 'shahar@stox.com'
  subject 'testing sendmail'
  body 'testing sendmail'
end

