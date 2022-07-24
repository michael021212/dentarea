class Api::V1::HospitalsController < ApiController
  def index
    # @hospitals = Hospitals.all.order(id: :desc)
    users = User.all
    render json: users
  end
end
