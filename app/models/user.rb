class User < ApplicationRecord
  # has_many :pledged_projects, through: :pledges
  has_many :projects
end
