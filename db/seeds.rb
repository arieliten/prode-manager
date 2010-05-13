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
### Create Stages ###
grupos   = worldcup.stages.create!(:name=>"Fase de Grupos")
octavos  = worldcup.stages.create!(:name=>"8vos de Final")
cuartos  = worldcup.stages.create!(:name=>"4tos de Final")
semis    = worldcup.stages.create!(:name=>"Semifinales")
terceros = worldcup.stages.create!(:name=>"Tercer Puesto")
final    = worldcup.stages.create!(:name=>"Final")

### Create Groups ###
group_a = grupos.groups.create!(:name=>"Grupo A")
group_b = grupos.groups.create!(:name=>"Grupo B")
group_c = grupos.groups.create!(:name=>"Grupo C")
group_d = grupos.groups.create!(:name=>"Grupo D")
group_e = grupos.groups.create!(:name=>"Grupo E")
group_f = grupos.groups.create!(:name=>"Grupo F")
group_g = grupos.groups.create!(:name=>"Grupo G")
group_h = grupos.groups.create!(:name=>"Grupo H")

### Create Teams ###
sud = worldcup.teams.create!(:shortening=>"SUD", :is_selection=>true, :name=>"Sudafrica")
mex = worldcup.teams.create!(:shortening=>"MEX", :is_selection=>true, :name=>"Mexico")
uru = worldcup.teams.create!(:shortening=>"URU", :is_selection=>true, :name=>"Uruguay")
fra = worldcup.teams.create!(:shortening=>"FRA", :is_selection=>true, :name=>"Francia")
arg = worldcup.teams.create!(:shortening=>"ARG", :is_selection=>true, :name=>"Argentina")
nig = worldcup.teams.create!(:shortening=>"NIG", :is_selection=>true, :name=>"Nigeria")
cds = worldcup.teams.create!(:shortening=>"CDS", :is_selection=>true, :name=>"Corea del Sur")
gre = worldcup.teams.create!(:shortening=>"GRE", :is_selection=>true, :name=>"Grecia")
ing = worldcup.teams.create!(:shortening=>"ING", :is_selection=>true, :name=>"Inglaterra")
usa = worldcup.teams.create!(:shortening=>"USA", :is_selection=>true, :name=>"Estados Unidos")
agl = worldcup.teams.create!(:shortening=>"AGL", :is_selection=>true, :name=>"Argelia")
slo = worldcup.teams.create!(:shortening=>"SLO", :is_selection=>true, :name=>"Eslovenia")
ale = worldcup.teams.create!(:shortening=>"ALE", :is_selection=>true, :name=>"Alemania")
aus = worldcup.teams.create!(:shortening=>"AUS", :is_selection=>true, :name=>"Australia")
ser = worldcup.teams.create!(:shortening=>"SER", :is_selection=>true, :name=>"Serbia")
gha = worldcup.teams.create!(:shortening=>"GHA", :is_selection=>true, :name=>"Ghana")
hol = worldcup.teams.create!(:shortening=>"HOL", :is_selection=>true, :name=>"Holanda")
din = worldcup.teams.create!(:shortening=>"DIN", :is_selection=>true, :name=>"Dinamarca")
jap = worldcup.teams.create!(:shortening=>"JAP", :is_selection=>true, :name=>"Japon")
cam = worldcup.teams.create!(:shortening=>"CAM", :is_selection=>true, :name=>"Camerun")
ita = worldcup.teams.create!(:shortening=>"ITA", :is_selection=>true, :name=>"Italia")
par = worldcup.teams.create!(:shortening=>"PAR", :is_selection=>true, :name=>"Paraguay")
nze = worldcup.teams.create!(:shortening=>"NZE", :is_selection=>true, :name=>"Nueva Zelanda")
esl = worldcup.teams.create!(:shortening=>"ESL", :is_selection=>true, :name=>"Eslovaquia")
bra = worldcup.teams.create!(:shortening=>"BRA", :is_selection=>true, :name=>"Brasil")
cdn = worldcup.teams.create!(:shortening=>"CDN", :is_selection=>true, :name=>"Corea del Norte")
cdm = worldcup.teams.create!(:shortening=>"CDM", :is_selection=>true, :name=>"Costa de Marfil")
por = worldcup.teams.create!(:shortening=>"POR", :is_selection=>true, :name=>"Portugal")
esp = worldcup.teams.create!(:shortening=>"ESP", :is_selection=>true, :name=>"España")
sui = worldcup.teams.create!(:shortening=>"SUI", :is_selection=>true, :name=>"Suiza")
hon = worldcup.teams.create!(:shortening=>"HON", :is_selection=>true, :name=>"Honduras")
chi = worldcup.teams.create!(:shortening=>"CHI", :is_selection=>true, :name=>"Chile")

### Create Clasifications ###
# == Group A
a1 = Clasification.create!(:stage=>grupos, :position_key=>'A1', :name=>"Equipo 1 del Grupo A", :team=>sud, :group=> group_a)
a2 = Clasification.create!(:stage=>grupos, :position_key=>'A2', :name=>"Equipo 2 del Grupo A", :team=>mex, :group=> group_a)
a3 = Clasification.create!(:stage=>grupos, :position_key=>'A3', :name=>"Equipo 3 del Grupo A", :team=>uru, :group=> group_a)
a4 = Clasification.create!(:stage=>grupos, :position_key=>'A4', :name=>"Equipo 4 del Grupo A", :team=>fra, :group=> group_a)
# == Group B
b1 = Clasification.create!(:stage=>grupos, :position_key=>'B1', :name=>"Equipo 1 del Grupo A", :team=>arg, :group=> group_b)
b2 = Clasification.create!(:stage=>grupos, :position_key=>'B2', :name=>"Equipo 2 del Grupo A", :team=>nig, :group=> group_b)
b3 = Clasification.create!(:stage=>grupos, :position_key=>'B3', :name=>"Equipo 3 del Grupo A", :team=>cds, :group=> group_b)
b4 = Clasification.create!(:stage=>grupos, :position_key=>'B4', :name=>"Equipo 4 del Grupo A", :team=>gre, :group=> group_b)
# == Group C
c1 = Clasification.create!(:stage=>grupos, :position_key=>'C1', :name=>"Equipo 1 del Grupo C", :team=>ing, :group=> group_c)
c2 = Clasification.create!(:stage=>grupos, :position_key=>'C2', :name=>"Equipo 2 del Grupo C", :team=>usa, :group=> group_c)
c3 = Clasification.create!(:stage=>grupos, :position_key=>'C3', :name=>"Equipo 3 del Grupo C", :team=>agl, :group=> group_c)
c4 = Clasification.create!(:stage=>grupos, :position_key=>'C4', :name=>"Equipo 4 del Grupo C", :team=>slo, :group=> group_c)
# == Group D
d1 = Clasification.create!(:stage=>grupos, :position_key=>'D1', :name=>"Equipo 1 del Grupo D", :team=>ale, :group=> group_d)
d2 = Clasification.create!(:stage=>grupos, :position_key=>'D2', :name=>"Equipo 2 del Grupo D", :team=>aus, :group=> group_d)
d3 = Clasification.create!(:stage=>grupos, :position_key=>'D3', :name=>"Equipo 3 del Grupo D", :team=>ser, :group=> group_d)
d4 = Clasification.create!(:stage=>grupos, :position_key=>'D4', :name=>"Equipo 4 del Grupo D", :team=>gha, :group=> group_d)
# == Group E
e1 = Clasification.create!(:stage=>grupos, :position_key=>'E1', :name=>"Equipo 1 del Grupo E", :team=>hol, :group=> group_e)
e2 = Clasification.create!(:stage=>grupos, :position_key=>'E2', :name=>"Equipo 2 del Grupo E", :team=>din, :group=> group_e)
e3 = Clasification.create!(:stage=>grupos, :position_key=>'E3', :name=>"Equipo 3 del Grupo E", :team=>jap, :group=> group_e)
e4 = Clasification.create!(:stage=>grupos, :position_key=>'E4', :name=>"Equipo 4 del Grupo E", :team=>cam, :group=> group_e)
# == Group F
f1 = Clasification.create!(:stage=>grupos, :position_key=>'F1', :name=>"Equipo 1 del Grupo F", :team=>ita, :group=> group_f)
f2 = Clasification.create!(:stage=>grupos, :position_key=>'F2', :name=>"Equipo 2 del Grupo F", :team=>par, :group=> group_f)
f3 = Clasification.create!(:stage=>grupos, :position_key=>'F3', :name=>"Equipo 3 del Grupo F", :team=>nze, :group=> group_f)
f4 = Clasification.create!(:stage=>grupos, :position_key=>'F4', :name=>"Equipo 4 del Grupo F", :team=>esl, :group=> group_f)
# == Group G
g1 = Clasification.create!(:stage=>grupos, :position_key=>'G1', :name=>"Equipo 1 del Grupo G", :team=>bra, :group=> group_g)
g2 = Clasification.create!(:stage=>grupos, :position_key=>'G2', :name=>"Equipo 2 del Grupo G", :team=>cdn, :group=> group_g)
g3 = Clasification.create!(:stage=>grupos, :position_key=>'G3', :name=>"Equipo 3 del Grupo G", :team=>cdm, :group=> group_g)
g4 = Clasification.create!(:stage=>grupos, :position_key=>'G4', :name=>"Equipo 4 del Grupo G", :team=>por, :group=> group_g)
# == Group H
h1 = Clasification.create!(:stage=>grupos, :position_key=>'H1', :name=>"Equipo 1 del Grupo H", :team=>esp, :group=> group_h)
h2 = Clasification.create!(:stage=>grupos, :position_key=>'H2', :name=>"Equipo 2 del Grupo H", :team=>sui, :group=> group_h)
h3 = Clasification.create!(:stage=>grupos, :position_key=>'H3', :name=>"Equipo 3 del Grupo H", :team=>hon, :group=> group_h)
h4 = Clasification.create!(:stage=>grupos, :position_key=>'H4', :name=>"Equipo 4 del Grupo H", :team=>chi, :group=> group_h)
# == Ovos Clasifications
first_a  = Clasification.create!(:stage=>octavos, :position_key=>'1A', :name=>"1° Grupo A")
second_a = Clasification.create!(:stage=>octavos, :position_key=>'2A', :name=>"2° Grupo A")
first_b  = Clasification.create!(:stage=>octavos, :position_key=>'1B', :name=>"1° Grupo B")
second_b = Clasification.create!(:stage=>octavos, :position_key=>'2B', :name=>"2° Grupo B")
first_c  = Clasification.create!(:stage=>octavos, :position_key=>'1C', :name=>"1° Grupo C")
second_c = Clasification.create!(:stage=>octavos, :position_key=>'2C', :name=>"2° Grupo C")
first_d  = Clasification.create!(:stage=>octavos, :position_key=>'1D', :name=>"1° Grupo D")
second_d = Clasification.create!(:stage=>octavos, :position_key=>'2D', :name=>"2° Grupo D")
first_e  = Clasification.create!(:stage=>octavos, :position_key=>'1E', :name=>"1° Grupo E")
second_e = Clasification.create!(:stage=>octavos, :position_key=>'2E', :name=>"2° Grupo E")
first_f  = Clasification.create!(:stage=>octavos, :position_key=>'1F', :name=>"1° Grupo F")
second_f = Clasification.create!(:stage=>octavos, :position_key=>'2F', :name=>"2° Grupo F")
first_g  = Clasification.create!(:stage=>octavos, :position_key=>'1G', :name=>"1° Grupo G")
second_g = Clasification.create!(:stage=>octavos, :position_key=>'2G', :name=>"2° Grupo G")
first_h  = Clasification.create!(:stage=>octavos, :position_key=>'1H', :name=>"1° Grupo H")
second_h = Clasification.create!(:stage=>octavos, :position_key=>'2H', :name=>"2° Grupo H")
# == Ctos Clasifications
one   = Clasification.create!(:stage=>cuartos, :position_key=>'1', :name=>"Ganador 1")
two   = Clasification.create!(:stage=>cuartos, :position_key=>'2', :name=>"Ganador 2")
three = Clasification.create!(:stage=>cuartos, :position_key=>'3', :name=>"Ganador 3")
four  = Clasification.create!(:stage=>cuartos, :position_key=>'4', :name=>"Ganador 4")
five  = Clasification.create!(:stage=>cuartos, :position_key=>'5', :name=>"Ganador 5")
six   = Clasification.create!(:stage=>cuartos, :position_key=>'6', :name=>"Ganador 6")
seven = Clasification.create!(:stage=>cuartos, :position_key=>'7', :name=>"Ganador 7")
eight = Clasification.create!(:stage=>cuartos, :position_key=>'8', :name=>"Ganador 8")
# == Semis Clasifications
a = Clasification.create!(:stage=>semis, :position_key=>'A', :name=>"Ganador A")
b = Clasification.create!(:stage=>semis, :position_key=>'B', :name=>"Ganador B")
c = Clasification.create!(:stage=>semis, :position_key=>'C', :name=>"Ganador C")
d = Clasification.create!(:stage=>semis, :position_key=>'D', :name=>"Ganador D")
# == Terceros Clasifications
p_i  = Clasification.create!(:stage=>terceros, :position_key=>'pI', :name=>"Perdedor I")
p_ii = Clasification.create!(:stage=>terceros, :position_key=>'pII',:name=>"Perdedor II")
# == Final Clasifications
g_i  = Clasification.create!(:stage=>final, :position_key=>'gI', :name=>"Ganador I")
g_ii = Clasification.create!(:stage=>final, :position_key=>'gII',:name=>"Ganador II")

### Create Matches (Schedule Fixture) ###
# == Zone A Matches
Match.create!(:stage=>grupos, :home_clasification=>a1, :visitor_clasification=>a2, :home_team=>sud, :visitor_team=>mex, :starts_at=>Time.mktime(2010,06,11,11))
Match.create!(:stage=>grupos, :home_clasification=>a3, :visitor_clasification=>a4, :home_team=>uru, :visitor_team=>fra, :starts_at=>Time.mktime(2010,06,16,15,30))
Match.create!(:stage=>grupos, :home_clasification=>a1, :visitor_clasification=>a3, :home_team=>sud, :visitor_team=>uru, :starts_at=>Time.mktime(2010,06,17,15,30))
Match.create!(:stage=>grupos, :home_clasification=>a4, :visitor_clasification=>a2, :home_team=>fra, :visitor_team=>mex, :starts_at=>Time.mktime(2010,06,11,15,30))
Match.create!(:stage=>grupos, :home_clasification=>a2, :visitor_clasification=>a3, :home_team=>mex, :visitor_team=>uru, :starts_at=>Time.mktime(2010,06,22,11))
Match.create!(:stage=>grupos, :home_clasification=>a4, :visitor_clasification=>a1, :home_team=>fra, :visitor_team=>sud, :starts_at=>Time.mktime(2010,06,22,11))
# == Zone B Matches
Match.create!(:stage=>grupos, :home_clasification=>b3, :visitor_clasification=>b4, :home_team=>cds, :visitor_team=>gre, :starts_at=>Time.mktime(2010,06,12,8,30))
Match.create!(:stage=>grupos, :home_clasification=>b1, :visitor_clasification=>b2, :home_team=>arg, :visitor_team=>nig, :starts_at=>Time.mktime(2010,06,12,11))
Match.create!(:stage=>grupos, :home_clasification=>b1, :visitor_clasification=>b3, :home_team=>arg, :visitor_team=>cds, :starts_at=>Time.mktime(2010,06,17,8,30))
Match.create!(:stage=>grupos, :home_clasification=>b4, :visitor_clasification=>b2, :home_team=>gre, :visitor_team=>nig, :starts_at=>Time.mktime(2010,06,17,11))
Match.create!(:stage=>grupos, :home_clasification=>b2, :visitor_clasification=>b3, :home_team=>nig, :visitor_team=>cds, :starts_at=>Time.mktime(2010,06,22,15,30))
Match.create!(:stage=>grupos, :home_clasification=>b4, :visitor_clasification=>b1, :home_team=>gre, :visitor_team=>arg, :starts_at=>Time.mktime(2010,06,22,15,30))
# == Zone C Matches
Match.create!(:stage=>grupos, :home_clasification=>c1, :visitor_clasification=>c2, :home_team=>ing, :visitor_team=>usa, :starts_at=>Time.mktime(2010,06,12,15,30))
Match.create!(:stage=>grupos, :home_clasification=>c3, :visitor_clasification=>c4, :home_team=>agl, :visitor_team=>slo, :starts_at=>Time.mktime(2010,06,13,8,30))
Match.create!(:stage=>grupos, :home_clasification=>c4, :visitor_clasification=>c2, :home_team=>slo, :visitor_team=>usa, :starts_at=>Time.mktime(2010,06,18,11))
Match.create!(:stage=>grupos, :home_clasification=>c1, :visitor_clasification=>c3, :home_team=>ing, :visitor_team=>agl, :starts_at=>Time.mktime(2010,06,18,15,30))
Match.create!(:stage=>grupos, :home_clasification=>c4, :visitor_clasification=>c1, :home_team=>slo, :visitor_team=>ing, :starts_at=>Time.mktime(2010,06,23,11))
Match.create!(:stage=>grupos, :home_clasification=>c2, :visitor_clasification=>c3, :home_team=>usa, :visitor_team=>agl, :starts_at=>Time.mktime(2010,06,23,11))
# == Zone D Matches
Match.create!(:stage=>grupos, :home_clasification=>d3, :visitor_clasification=>d4, :home_team=>ser, :visitor_team=>gha, :starts_at=>Time.mktime(2010,06,13,11))
Match.create!(:stage=>grupos, :home_clasification=>d1, :visitor_clasification=>d2, :home_team=>ale, :visitor_team=>aus, :starts_at=>Time.mktime(2010,06,13,15,30))
Match.create!(:stage=>grupos, :home_clasification=>d1, :visitor_clasification=>d3, :home_team=>ale, :visitor_team=>ser, :starts_at=>Time.mktime(2010,06,18,8,30))
Match.create!(:stage=>grupos, :home_clasification=>d4, :visitor_clasification=>d2, :home_team=>gha, :visitor_team=>aus, :starts_at=>Time.mktime(2010,06,19,11))
Match.create!(:stage=>grupos, :home_clasification=>d4, :visitor_clasification=>d1, :home_team=>gha, :visitor_team=>ale, :starts_at=>Time.mktime(2010,06,23,15,30))
Match.create!(:stage=>grupos, :home_clasification=>d2, :visitor_clasification=>d3, :home_team=>aus, :visitor_team=>ser, :starts_at=>Time.mktime(2010,06,23,15,30))
# == Zone E Matches
Match.create!(:stage=>grupos, :home_clasification=>e1, :visitor_clasification=>e2, :home_team=>hol, :visitor_team=>din, :starts_at=>Time.mktime(2010,06,14,8,30))
Match.create!(:stage=>grupos, :home_clasification=>e3, :visitor_clasification=>e4, :home_team=>jap, :visitor_team=>cam, :starts_at=>Time.mktime(2010,06,14,11))
Match.create!(:stage=>grupos, :home_clasification=>e1, :visitor_clasification=>e3, :home_team=>hol, :visitor_team=>jap, :starts_at=>Time.mktime(2010,06,19,8,30))
Match.create!(:stage=>grupos, :home_clasification=>e4, :visitor_clasification=>e2, :home_team=>cam, :visitor_team=>din, :starts_at=>Time.mktime(2010,06,19,15,30))
Match.create!(:stage=>grupos, :home_clasification=>e2, :visitor_clasification=>e3, :home_team=>din, :visitor_team=>jap, :starts_at=>Time.mktime(2010,06,24,15,30))
Match.create!(:stage=>grupos, :home_clasification=>e4, :visitor_clasification=>e1, :home_team=>cam, :visitor_team=>hol, :starts_at=>Time.mktime(2010,06,24,15,30))
# == Zone F Matches
Match.create!(:stage=>grupos, :home_clasification=>f1, :visitor_clasification=>f2, :home_team=>ita, :visitor_team=>par, :starts_at=>Time.mktime(2010,06,14,15,30))
Match.create!(:stage=>grupos, :home_clasification=>f3, :visitor_clasification=>f4, :home_team=>nze, :visitor_team=>esl, :starts_at=>Time.mktime(2010,06,15,8,30))
Match.create!(:stage=>grupos, :home_clasification=>f4, :visitor_clasification=>f2, :home_team=>esl, :visitor_team=>par, :starts_at=>Time.mktime(2010,06,20,8,30))
Match.create!(:stage=>grupos, :home_clasification=>f1, :visitor_clasification=>f3, :home_team=>ita, :visitor_team=>nze, :starts_at=>Time.mktime(2010,06,20,11))
Match.create!(:stage=>grupos, :home_clasification=>f4, :visitor_clasification=>f1, :home_team=>esl, :visitor_team=>ita, :starts_at=>Time.mktime(2010,06,24,11))
Match.create!(:stage=>grupos, :home_clasification=>f2, :visitor_clasification=>f3, :home_team=>par, :visitor_team=>nze, :starts_at=>Time.mktime(2010,06,24,11))
# == Zone G Matches
Match.create!(:stage=>grupos, :home_clasification=>g3, :visitor_clasification=>g4, :home_team=>cdm, :visitor_team=>por, :starts_at=>Time.mktime(2010,06,15,11))
Match.create!(:stage=>grupos, :home_clasification=>g1, :visitor_clasification=>g2, :home_team=>bra, :visitor_team=>cdn, :starts_at=>Time.mktime(2010,06,16,15,30))
Match.create!(:stage=>grupos, :home_clasification=>g1, :visitor_clasification=>g3, :home_team=>bra, :visitor_team=>cdm, :starts_at=>Time.mktime(2010,06,20,15,30))
Match.create!(:stage=>grupos, :home_clasification=>g4, :visitor_clasification=>g2, :home_team=>por, :visitor_team=>cdn, :starts_at=>Time.mktime(2010,06,21,8,30))
Match.create!(:stage=>grupos, :home_clasification=>g4, :visitor_clasification=>g1, :home_team=>por, :visitor_team=>bra, :starts_at=>Time.mktime(2010,06,25,11))
Match.create!(:stage=>grupos, :home_clasification=>g2, :visitor_clasification=>g3, :home_team=>cdn, :visitor_team=>cdm, :starts_at=>Time.mktime(2010,06,25,11))
# == Zone H Matches
Match.create!(:stage=>grupos, :home_clasification=>h3, :visitor_clasification=>h4, :home_team=>hon, :visitor_team=>chi, :starts_at=>Time.mktime(2010,06,16,8,30))
Match.create!(:stage=>grupos, :home_clasification=>h1, :visitor_clasification=>h2, :home_team=>esp, :visitor_team=>sui, :starts_at=>Time.mktime(2010,06,16,11))
Match.create!(:stage=>grupos, :home_clasification=>h4, :visitor_clasification=>h2, :home_team=>chi, :visitor_team=>sui, :starts_at=>Time.mktime(2010,06,21,11))
Match.create!(:stage=>grupos, :home_clasification=>h1, :visitor_clasification=>h3, :home_team=>esp, :visitor_team=>hon, :starts_at=>Time.mktime(2010,06,21,15,30))
Match.create!(:stage=>grupos, :home_clasification=>h4, :visitor_clasification=>h1, :home_team=>chi, :visitor_team=>esp, :starts_at=>Time.mktime(2010,06,25,15,30))
Match.create!(:stage=>grupos, :home_clasification=>h2, :visitor_clasification=>h3, :home_team=>sui, :visitor_team=>hon, :starts_at=>Time.mktime(2010,06,25,15,30))
# == 8vos Matches
Match.create!(:stage=>octavos, :home_clasification=>first_a, :visitor_clasification=>second_b, :starts_at=>Time.mktime(2010,06,26,11))
Match.create!(:stage=>octavos, :home_clasification=>first_c, :visitor_clasification=>second_d, :starts_at=>Time.mktime(2010,06,26,15,30))
Match.create!(:stage=>octavos, :home_clasification=>first_d, :visitor_clasification=>second_c, :starts_at=>Time.mktime(2010,06,27,11))
Match.create!(:stage=>octavos, :home_clasification=>first_b, :visitor_clasification=>second_a, :starts_at=>Time.mktime(2010,06,27,15,30))
Match.create!(:stage=>octavos, :home_clasification=>first_e, :visitor_clasification=>second_f, :starts_at=>Time.mktime(2010,06,28,11))
Match.create!(:stage=>octavos, :home_clasification=>first_g, :visitor_clasification=>second_h, :starts_at=>Time.mktime(2010,06,28,15,30))
Match.create!(:stage=>octavos, :home_clasification=>first_f, :visitor_clasification=>second_e, :starts_at=>Time.mktime(2010,06,29,11))
Match.create!(:stage=>octavos, :home_clasification=>first_h, :visitor_clasification=>second_g, :starts_at=>Time.mktime(2010,06,29,15,30))
# == 4tos Matches
Match.create!(:stage=>cuartos, :home_clasification=>one,  :visitor_clasification=>two,  :starts_at=>Time.mktime(2010,07,02,15,30))
Match.create!(:stage=>cuartos, :home_clasification=>five, :visitor_clasification=>six,  :starts_at=>Time.mktime(2010,07,02,11))
Match.create!(:stage=>cuartos, :home_clasification=>three,:visitor_clasification=>four, :starts_at=>Time.mktime(2010,07,03,11))
Match.create!(:stage=>cuartos, :home_clasification=>seven,:visitor_clasification=>eight,:starts_at=>Time.mktime(2010,07,03,15,30))
# == Semifinal Matches
Match.create!(:stage=>semis, :home_clasification=>a, :visitor_clasification=>b, :starts_at=>Time.mktime(2010,07,06,15,30))
Match.create!(:stage=>semis, :home_clasification=>c, :visitor_clasification=>d, :starts_at=>Time.mktime(2010,07,07,15,30))
# == Tercer Puesto Match
Match.create!(:stage=>terceros, :home_clasification=>p_i, :visitor_clasification=>p_ii, :starts_at=>Time.mktime(2010,07,10,15,30))
# == Final Match
Match.create!(:stage=>final, :home_clasification=>g_i, :visitor_clasification=>g_ii, :starts_at=>Time.mktime(2010,07,11,15,30))

