module GeneralPagesHelper

	def wrap(content)
    sanitize(raw(content.split.map{ |s| wrap_long_string(s) }.join(' ')))
	end
  	

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(options)
    gravatar_id = Digest::MD5::hexdigest("gavinchingy@gmail.com")
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: "gavin", class: "gravatar")
  end


private

    def wrap_long_string(text, max_width = 30)
      zero_width_space = "&#8203;"
      regex = /.{1,#{max_width}}/
      (text.length < max_width) ? text : 
                                  text.scan(regex).join(zero_width_space)
    end
end
