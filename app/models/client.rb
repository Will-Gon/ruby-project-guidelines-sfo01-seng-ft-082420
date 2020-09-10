class Client < ActiveRecord::Base
    has_many :projects
    has_many :companies, through: :projects
end