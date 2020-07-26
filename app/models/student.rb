class Student < User
    belongs_to :organization
    has_many :marks

end
