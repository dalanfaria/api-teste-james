class Api::V1::PeopleController < ApplicationController
    include Roar::Rails::ControllerAdditions
    respond_to :json

    def index
        people = Person.all
        respond_with people
    end
    
    def show
        person = Person.find_by_id(params[:id])
        debugger
        respond_with person
    end

    def create
        person = Person.new(person_params)
        person.save!
        consume!(person)
        
        debugger
        
        respond_with person
    end

    def person_params
        params.require(:person).permit(:first_name, :last_name, :age, :gender, :james, :date_of_birth)
    end
end