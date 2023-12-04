class Contact < ApplicationRecord
    belongs_to :admin

    # Fields required
    validates_presence_of :contact_name
    validates_presence_of :contact_email
    validates_presence_of :contact_option
    validates_presence_of :contact_message
    validates_format_of :contact_email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    scope :hire_only, -> {where(contact_option:'hire')}


end
