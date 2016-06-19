class VisitorsController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    @visitor = Visitor.new(visitor_params)
    @visitor.save
  end

  private

  def visitor_params
    params.permit(:first_name, :last_name, :email_id, :phone_no, :city, :gender, :address, :state, :pincode,
    :otherEdu, :eduInstitute, :studentOccupation, :highestEducation, :computerKnowledge, :guardianName,
    :guardianEmail, :guardianPhone,  :guardianPhone, :guardianOccupation, :arenaNewspaper, :arenaTV,
    :arenaInternet, :arenaStudent, :arenaBanner, :arenaFriends, :dob)
  end
end
