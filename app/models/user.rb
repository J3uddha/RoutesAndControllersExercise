class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_one(
    :contact,
    class_name: "Contact",
    foreign_key: :user_id,
    primary_key: :id
  )

  # My contact book
  has_many(
    :shared_contacts,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id
  )

  # People who have my contact
  has_many(
    :contact_shares,
    through: :contact,
    source: :shared_users
  )

end
