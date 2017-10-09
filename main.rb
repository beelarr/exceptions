require_relative 'patient'

new_patient = Patient.new("Jisie", "David")
begin
  puts new_patient.first_name
  puts new_patient.last_name
rescue NameError => e
  puts patient_contact_info
  puts "There been an exception : #{e.message}"
rescue StandardError => e
  puts new_patient.patient_status(:coma)
  puts "There been an exception : #{e.message}"
rescue ArgumentError => e
  puts new_patient.patient_currently_admitted?
  puts "There been an exception : #{e.message}"
rescue ZeroDivisionError => e
  puts new_patient.patient_new_total(125)
  puts "There been an exception : #{e.message}"
rescue ArgumentError => e
  new_patient.add_med_to_list("lipitor", 123.12)
  puts "There been an exception : #{e.message}"
  new_patient.patient_medications_list
end
