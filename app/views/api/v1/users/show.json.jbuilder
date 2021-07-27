json.extract! @user, :id, :name
json.routines @user.routines do |routine|
  json.extract! routine, :id, :name
    json.products routine.products do |product|
      json.extract! product, :id, :name
    end
end
