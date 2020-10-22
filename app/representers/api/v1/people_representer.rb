module Api::V1::PeopleRepresenter
    include Roar::JSON
    include Grape::Roar::Representer

    collection :entries, extend: Api::V1::PersonRepresenter, as: :people, embedded: true
end