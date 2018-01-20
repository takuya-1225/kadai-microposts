module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcsae)
    size = options[:size]
    "https://secire.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
