class Contact < ActiveRecord::Base
  validates :email, :user_id, presence: true, uniqueness: true
  validates :name, presence: true

  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :contact_shares
  )

  has_many(
    :shared_users,
    through: :contact_shares,
    source: :user
  )

end
