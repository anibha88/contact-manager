class Contact < ApplicationRecord
  belongs_to :group

  paginates_per 10

  validates :name, :email, :group_id, presence: true
  validates :name, length: { minimum: 2 }

  has_attached_file :avatar, styles: { medium: "150x150>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def gravatar
  	hash = Digest::MD5.hexdigest(email.downcase)
 	"https://www.gravatar.com/avatar/#{hash}"
  end

end

# Customize number per page
# -> In config/initializers/kaminari_config.rb (Global), for this run, rails g kaminari:config
# -> add per(N) method call(applied in a controller)
# -> Specify paginates_per(N) (applied in a model across all places)
