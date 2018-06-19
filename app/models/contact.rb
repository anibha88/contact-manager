class Contact < ApplicationRecord
  belongs_to :group

  paginates_per 10

  def gravatar
  	hash = Digest::MD5.hexdigest(email.downcase)
 	"https://www.gravatar.com/avatar/#{hash}"
  end

end

# Customize number per page
# -> In config/initializers/kaminari_config.rb (Global), for this run, rails g kaminari:config
# -> add per(N) method call(applied in a controller)
# -> Specify paginates_per(N) (applied in a model across all places)
