module api
  class PatientsController < ApplicationController

    def index
      render json: Patient.all
    end

    def search
      query = params[:query]
      @patients = Patient.where('first_name Like ? OR last_name Like ?', "%#{query}", "%#{query}")
      render json: @patients
    end

    def create
      @patient = Patient.new(patient_params)

      if @patient.save
        render json: patient
      else
        render nothing: true, status: :bad_request
      end  
    end

    private

      def patient_params
        params.require(:patient).permit(:first_name, :last_name, :age, :dob, :gender, :mobile, :other_info)
      end

  end
end
