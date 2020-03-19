class ProjectCard < ApplicationRecord
    belongs_to :user
    has_many :schedule_entries
    has_many :to_dos
end
