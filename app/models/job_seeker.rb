class JobSeeker < ActiveRecord::Base
  acts_as :user
  belongs_to :job_seeker_status
  #has_one    :resume

  has_one	   :address, as: :location
  has_many   :agency_relations
  has_many   :agency_people, through: :agency_relations

  validates_presence_of :year_of_birth, :job_seeker_status_id #,:resume
  validates  :year_of_birth, :year_of_birth => true

  def is_job_seeker?
    true
  end

end
