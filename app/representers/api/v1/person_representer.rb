module Api::V1::PersonRepresenter
  include Roar::JSON
  include Roar::Hypermedia
  
  property :id  
  property :name
  property :james  
  property :gender  
  property :age 
  property :date_birth, as: :birthday, render_nil: true

  def name
    first_name + ' ' + last_name
  end

  def date_birth
    value = date_of_birth.to_s.split('-')
    "#{value[2]}/#{value[1]}/#{value[0]}"
  end

  def james
    james? ? 'SIM' : 'NÃO'
  end
end