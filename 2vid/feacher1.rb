# Технологично училище "Електронни системи"
# http://www.elsys-bg.org/
# 11а клас
# Даниел Цоков
# Номер 9
# Програма за четене от цсв файл и събиране на сумата на всички features/instance_create_update.feature
require 'csv'

i=0
count=0.00	
CSV.open("test.csv","wb") do |csv|	
CSV.foreach("feature_scenarios_times.csv") do |row|
count+=row[0].to_f if row[1]=="features/facebook_share.feature"	
count=count+1;
end
csv << [count]
end
