# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

### Create Competition ###
worldcup = Cup.create!(:name=>"World Cup Sudafrica 2010",
                       :starts_at=>Time.mktime(2010,06,11,11),
                       :ends_at=>Time.mktime(2010,07,11,15,30),
                       :max_number_of_participants=>32)
### Create stages ###
zones    = worldcup.competition_stages.create!(:name=>"Fase de Grupos")
ovos     = worldcup.competition_stages.create!(:name=>"8vos de Final")
ctos     = worldcup.competition_stages.create!(:name=>"4tos de Final")
semis    = worldcup.competition_stages.create!(:name=>"Semifinales")
terceros = worldcup.competition_stages.create!(:name=>"Tercer Puesto")
final    = worldcup.competition_stages.create!(:name=>"Final")

### Create Groups ###
group_a = zones.groups.create!(:name=>"Grupo A")
group_b = zones.groups.create!(:name=>"Grupo B")
group_c = zones.groups.create!(:name=>"Grupo C")
group_d = zones.groups.create!(:name=>"Grupo D")
group_e = zones.groups.create!(:name=>"Grupo E")
group_f = zones.groups.create!(:name=>"Grupo F")
group_g = zones.groups.create!(:name=>"Grupo G")
group_h = zones.groups.create!(:name=>"Grupo H")

### Create Teams ###
sud = worldcup.teams.create!(:shortening=>"SUD", :group=>group_a, :is_selection=>true, :name=>"Sudafrica")
mex = worldcup.teams.create!(:shortening=>"MEX", :group=>group_a, :is_selection=>true, :name=>"Mexico")
uru = worldcup.teams.create!(:shortening=>"URU", :group=>group_a, :is_selection=>true, :name=>"Uruguay")
fra = worldcup.teams.create!(:shortening=>"FRA", :group=>group_a, :is_selection=>true, :name=>"Francia")
arg = worldcup.teams.create!(:shortening=>"ARG", :group=>group_b, :is_selection=>true, :name=>"Argentina")
nig = worldcup.teams.create!(:shortening=>"NIG", :group=>group_b, :is_selection=>true, :name=>"Nigeria")
cds = worldcup.teams.create!(:shortening=>"CDS", :group=>group_b, :is_selection=>true, :name=>"Corea del Sur")
gre = worldcup.teams.create!(:shortening=>"GRE", :group=>group_b, :is_selection=>true, :name=>"Grecia")
ing = worldcup.teams.create!(:shortening=>"ING", :group=>group_c, :is_selection=>true, :name=>"Inglaterra")
usa = worldcup.teams.create!(:shortening=>"USA", :group=>group_c, :is_selection=>true, :name=>"Estados Unidos")
agl = worldcup.teams.create!(:shortening=>"AGL", :group=>group_c, :is_selection=>true, :name=>"Argelia")
slo = worldcup.teams.create!(:shortening=>"SLO", :group=>group_c, :is_selection=>true, :name=>"Eslovenia")
ale = worldcup.teams.create!(:shortening=>"ALE", :group=>group_d, :is_selection=>true, :name=>"Alemania")
aus = worldcup.teams.create!(:shortening=>"AUS", :group=>group_d, :is_selection=>true, :name=>"Australia")
ser = worldcup.teams.create!(:shortening=>"SER", :group=>group_d, :is_selection=>true, :name=>"Serbia")
gha = worldcup.teams.create!(:shortening=>"GHA", :group=>group_d, :is_selection=>true, :name=>"Ghana")
hol = worldcup.teams.create!(:shortening=>"HOL", :group=>group_e, :is_selection=>true, :name=>"Holanda")
din = worldcup.teams.create!(:shortening=>"DIN", :group=>group_e, :is_selection=>true, :name=>"Dinamarca")
jap = worldcup.teams.create!(:shortening=>"JAP", :group=>group_e, :is_selection=>true, :name=>"Japon")
cam = worldcup.teams.create!(:shortening=>"CAM", :group=>group_e, :is_selection=>true, :name=>"Camerun")
ita = worldcup.teams.create!(:shortening=>"ITA", :group=>group_f, :is_selection=>true, :name=>"Italia")
par = worldcup.teams.create!(:shortening=>"PAR", :group=>group_f, :is_selection=>true, :name=>"Paraguay")
nze = worldcup.teams.create!(:shortening=>"NZE", :group=>group_f, :is_selection=>true, :name=>"Nueva Zelanda")
esl = worldcup.teams.create!(:shortening=>"ESL", :group=>group_f, :is_selection=>true, :name=>"Eslovaquia")
bra = worldcup.teams.create!(:shortening=>"BRA", :group=>group_g, :is_selection=>true, :name=>"Brasil")
cdn = worldcup.teams.create!(:shortening=>"CDN", :group=>group_g, :is_selection=>true, :name=>"Corea del Norte")
cdm = worldcup.teams.create!(:shortening=>"CDM", :group=>group_g, :is_selection=>true, :name=>"Costa de Marfil")
por = worldcup.teams.create!(:shortening=>"POR", :group=>group_g, :is_selection=>true, :name=>"Portugal")
esp = worldcup.teams.create!(:shortening=>"ESP", :group=>group_h, :is_selection=>true, :name=>"España")
sui = worldcup.teams.create!(:shortening=>"SUI", :group=>group_h, :is_selection=>true, :name=>"Suiza")
hon = worldcup.teams.create!(:shortening=>"HON", :group=>group_h, :is_selection=>true, :name=>"Honduras")
chi = worldcup.teams.create!(:shortening=>"CHI", :group=>group_h, :is_selection=>true, :name=>"Chile")

### Create Matches (Schedule Fixture) ###
# == Zone A Matches
Match.create!(:competition_stage=>zones, :home_team=>sud, :visitor_team=>mex, :starts_at=>Time.mktime(2010,06,11,11))
Match.create!(:competition_stage=>zones, :home_team=>uru, :visitor_team=>fra, :starts_at=>Time.mktime(2010,06,16,15,30))
Match.create!(:competition_stage=>zones, :home_team=>sud, :visitor_team=>uru, :starts_at=>Time.mktime(2010,06,17,15,30))
Match.create!(:competition_stage=>zones, :home_team=>fra, :visitor_team=>mex, :starts_at=>Time.mktime(2010,06,11,15,30))
Match.create!(:competition_stage=>zones, :home_team=>mex, :visitor_team=>uru, :starts_at=>Time.mktime(2010,06,22,11))
Match.create!(:competition_stage=>zones, :home_team=>fra, :visitor_team=>sud, :starts_at=>Time.mktime(2010,06,22,11))
# == Zone B Matches
Match.create!(:competition_stage=>zones, :home_team=>cds, :visitor_team=>gre, :starts_at=>Time.mktime(2010,06,12,8,30))
Match.create!(:competition_stage=>zones, :home_team=>arg, :visitor_team=>nig, :starts_at=>Time.mktime(2010,06,12,11))
Match.create!(:competition_stage=>zones, :home_team=>arg, :visitor_team=>cds, :starts_at=>Time.mktime(2010,06,17,8,30))
Match.create!(:competition_stage=>zones, :home_team=>gre, :visitor_team=>nig, :starts_at=>Time.mktime(2010,06,17,11))
Match.create!(:competition_stage=>zones, :home_team=>nig, :visitor_team=>cds, :starts_at=>Time.mktime(2010,06,22,15,30))
Match.create!(:competition_stage=>zones, :home_team=>gre, :visitor_team=>arg, :starts_at=>Time.mktime(2010,06,22,15,30))
# == Zone C Matches
Match.create!(:competition_stage=>zones, :home_team=>ing, :visitor_team=>usa, :starts_at=>Time.mktime(2010,06,12,15,30))
Match.create!(:competition_stage=>zones, :home_team=>agl, :visitor_team=>slo, :starts_at=>Time.mktime(2010,06,13,8,30))
Match.create!(:competition_stage=>zones, :home_team=>slo, :visitor_team=>usa, :starts_at=>Time.mktime(2010,06,18,11))
Match.create!(:competition_stage=>zones, :home_team=>ing, :visitor_team=>agl, :starts_at=>Time.mktime(2010,06,18,15,30))
Match.create!(:competition_stage=>zones, :home_team=>slo, :visitor_team=>ing, :starts_at=>Time.mktime(2010,06,23,11))
Match.create!(:competition_stage=>zones, :home_team=>usa, :visitor_team=>agl, :starts_at=>Time.mktime(2010,06,23,11))
# == Zone D Matches
Match.create!(:competition_stage=>zones, :home_team=>ser, :visitor_team=>gha, :starts_at=>Time.mktime(2010,06,13,11))
Match.create!(:competition_stage=>zones, :home_team=>ale, :visitor_team=>aus, :starts_at=>Time.mktime(2010,06,13,15,30))
Match.create!(:competition_stage=>zones, :home_team=>ale, :visitor_team=>ser, :starts_at=>Time.mktime(2010,06,18,8,30))
Match.create!(:competition_stage=>zones, :home_team=>gha, :visitor_team=>aus, :starts_at=>Time.mktime(2010,06,19,11))
Match.create!(:competition_stage=>zones, :home_team=>gha, :visitor_team=>ale, :starts_at=>Time.mktime(2010,06,23,15,30))
Match.create!(:competition_stage=>zones, :home_team=>aus, :visitor_team=>ser, :starts_at=>Time.mktime(2010,06,23,15,30))
# == Zone E Matches
Match.create!(:competition_stage=>zones, :home_team=>hol, :visitor_team=>din, :starts_at=>Time.mktime(2010,06,14,8,30))
Match.create!(:competition_stage=>zones, :home_team=>jap, :visitor_team=>cam, :starts_at=>Time.mktime(2010,06,14,11))
Match.create!(:competition_stage=>zones, :home_team=>hol, :visitor_team=>jap, :starts_at=>Time.mktime(2010,06,19,8,30))
Match.create!(:competition_stage=>zones, :home_team=>cam, :visitor_team=>din, :starts_at=>Time.mktime(2010,06,19,15,30))
Match.create!(:competition_stage=>zones, :home_team=>din, :visitor_team=>jap, :starts_at=>Time.mktime(2010,06,24,15,30))
Match.create!(:competition_stage=>zones, :home_team=>cam, :visitor_team=>hol, :starts_at=>Time.mktime(2010,06,24,15,30))
# == Zone F Matches
Match.create!(:competition_stage=>zones, :home_team=>ita, :visitor_team=>par, :starts_at=>Time.mktime(2010,06,14,15,30))
Match.create!(:competition_stage=>zones, :home_team=>nze, :visitor_team=>esl, :starts_at=>Time.mktime(2010,06,15,8,30))
Match.create!(:competition_stage=>zones, :home_team=>esl, :visitor_team=>par, :starts_at=>Time.mktime(2010,06,20,8,30))
Match.create!(:competition_stage=>zones, :home_team=>ita, :visitor_team=>nze, :starts_at=>Time.mktime(2010,06,20,11))
Match.create!(:competition_stage=>zones, :home_team=>esl, :visitor_team=>ita, :starts_at=>Time.mktime(2010,06,24,11))
Match.create!(:competition_stage=>zones, :home_team=>par, :visitor_team=>nze, :starts_at=>Time.mktime(2010,06,24,11))
# == Zone G Matches
Match.create!(:competition_stage=>zones, :home_team=>cdm, :visitor_team=>por, :starts_at=>Time.mktime(2010,06,15,11))
Match.create!(:competition_stage=>zones, :home_team=>bra, :visitor_team=>cdn, :starts_at=>Time.mktime(2010,06,16,15,30))
Match.create!(:competition_stage=>zones, :home_team=>bra, :visitor_team=>cdm, :starts_at=>Time.mktime(2010,06,20,15,30))
Match.create!(:competition_stage=>zones, :home_team=>por, :visitor_team=>cdn, :starts_at=>Time.mktime(2010,06,21,8,30))
Match.create!(:competition_stage=>zones, :home_team=>por, :visitor_team=>bra, :starts_at=>Time.mktime(2010,06,25,11))
Match.create!(:competition_stage=>zones, :home_team=>cdn, :visitor_team=>cdm, :starts_at=>Time.mktime(2010,06,25,11))
# == Zone H Matches
Match.create!(:competition_stage=>zones, :home_team=>hon, :visitor_team=>chi, :starts_at=>Time.mktime(2010,06,16,8,30))
Match.create!(:competition_stage=>zones, :home_team=>esp, :visitor_team=>sui, :starts_at=>Time.mktime(2010,06,16,11))
Match.create!(:competition_stage=>zones, :home_team=>chi, :visitor_team=>sui, :starts_at=>Time.mktime(2010,06,21,11))
Match.create!(:competition_stage=>zones, :home_team=>esp, :visitor_team=>hon, :starts_at=>Time.mktime(2010,06,21,15,30))
Match.create!(:competition_stage=>zones, :home_team=>chi, :visitor_team=>esp, :starts_at=>Time.mktime(2010,06,25,15,30))
Match.create!(:competition_stage=>zones, :home_team=>sui, :visitor_team=>hon, :starts_at=>Time.mktime(2010,06,25,15,30))
# == 8vos Matches
# == 4tos Matches
# == Semifinal Matches
# == Final Matches
















