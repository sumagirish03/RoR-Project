class Property <ApplicationRecord
    validates :propertyname, presence: true, length: {minimum: 2, maximum: 100}
    validates :city, presence: true, length: {minimum: 2, maximum: 20}
    validates :country, presence: true, length: {minimum: 2, maximum: 20}
    validates :source, presence: true, length: {minimum: 2, maximum: 20}
    validates :destination, presence: true, length: {minimum: 2, maximum: 20}

end