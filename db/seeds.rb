# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed users
user_comp_1 = Company.new( 
                name: "Helweg & Pedersen",
                email: "info@helweg-pedersen.dk", 
                password: "123456", 
                password_confirmation: "123456" )

user_comp_2 = Company.new( 
                name: "Some Company",
                email: "info@somecompany.com", 
                password: "123456", 
                password_confirmation: "123456" )

user_emp_1 = user_comp_1.learners.build(
                name: "Stinne Tarp",
                email: "stinne@helweg-pedersen.dk", 
                password: "123456", 
                password_confirmation: "123456" )

user_emp_2 = user_comp_1.learners.build(
                name: "Kasper Helweg",
                email: "kasperhelweg@gmail.com", 
                password: "kiss2211", 
                password_confirmation: "kiss2211" )

user_comp_1.save!
user_comp_2.save!

# Seed courses
course_MUS = Course.create(
                title: "MUS samtaler",
                short_desc: "Velkommen til MUS",
                desc: "Dette kursus henvender sig..." )

course_TEAMLEDELSE = Course.create(
                title: "Teamledelse",
                short_desc: "Velkommen til Teamledelse",
                desc: "Dette kursus henvender sig..." )

course_SITUATION = Course.create(
                title: "Situationsbestemt ledelse",
                short_desc: "Velkommen til Situationsbestemt ledelse",
                desc: "Dette kursus henvender sig..." )


course_KONFLIKT = Course.new(
                title: "Konflikthåndtering",
                short_desc: "Velkommen til Konflikthåndtering",
                desc: "Dette kursus henvender sig..." )


course_VANSKELIG = Course.new(
                title: "Den svære samtale",
                short_desc: "Velkommen til Den svære samtale",
                desc: "Dette kursus henvender sig..." )

course_PRESENTATION = Course.create(
                title: "Præsentations teknik",
                short_desc: "Velkommen til Præsentations teknik",
                desc: "Dette kursus henvender sig..." )

course_MOEDE = Course.create(
                title: "Mødeledelse",
                short_desc: "Velkommen til Mødeledelse",
                desc: "Dette kursus henvender sig..." )

course_GRUND = Course.create(
                title: "Grundlæggende ledelse",
                short_desc: "Velkommen til Grundlæggende ledelse",
                desc: "Dette kursus henvender sig..." )

# Seed classrooms
mus_classroom_1 = course_VANSKELIG.classrooms.build(
                online_date: Date.today )
                
mus_classroom_2 = course_VANSKELIG.classrooms.build(
                online_date: Date.today + 14 )

konflikt_classroom_1 = course_KONFLIKT.classrooms.build(
                online_date: Date.today + 14 )

mus_classroom_1.pages.build(title: "Forside",
                            glyph: "icon-download",
                            content: '
<h4>Guide til det virtuelle læringsrum</h4>
<p>
Kurset sætter fokus på dit personlige lederskab i situationen for den svære samtale. Vi vil arbejde på at give dig konkrete teknikker til at gribe den svære samtale an ud fra en løsningsfokuseret tilgang. I Helweg & Pedersen tror vi på, at den løsningsfokuserede tilgang til samtalen giver det bedste resultat, for dig som leder. Metoden er fremadrettet og fokuserer på, at du får skabt løsninger i samspil med din medarbejder. 
</p>
<p>
Du vil her få en introduktion til, hvordan du skal arbejde med det virtuelle læringsrum for den svære samtale. For at du får mest muligt ud af kurset, anbefaler vi, at du følger vores guide</p>
'
                           )
mus_classroom_1.pages.build(title: "Introduktion", 
                            glyph: "icon-globe",
                            content: '
<h4>Den svære samtale</h4>
<p>Lær at håndtere en vanskelig samtale, ved at fokusere på løsninger.</p>
<a href="http://s3.amazonaws.com/ee14e1407f80ba91c4e21deb76e801076bc78a5d903cb70a87097ed4841a8ff0/resources/resources/000/000/002/original/dss.pdf?1352240664" class="btn btn-large btn-primary"><i class="icon-circle-arrow-down icon-white dglyph"></i>Download .PDF</a>
'
                            )

mus_classroom_1.pages.build(title: "Forberedelse",  
                            glyph: "icon-leaf",
                            content: '<h4>Forberedelse</h4>'
                            )

mus_classroom_1.pages.build(title: "Kursusdagen",  
                            glyph: "icon-heart",
                            content: '<h4>Kursusdagen</h4>'
                            )
mus_classroom_1.pages.build(title: "Opfølgning",  
                            glyph: "icon-bell",
                            content: '<h4>Opfølgning</h4>'
                            )
mus_classroom_1.pages.build(title: "Test",  
                            glyph: "icon-pencil",
                            content: '<h4>Test</h4>'
                            )
mus_classroom_1.pages.build(title: "Evaluering",  
                            glyph: "icon-tag",
                            content: '<h4>Evaluering</h4>'
                            )
mus_classroom_1.pages.build(title: "Bibliotek",  
                            glyph: "icon-book",
                            content: '<h4>Bibliotek</h4>'
                            )

course_VANSKELIG.save!
course_KONFLIKT.save!

test_Enrollment_01 = Enrollment.create(
                      learner_id: 3,
                      classroom_id: 1,
                      status: "enrolled" )

test_Enrollment_02 = Enrollment.create(
                      learner_id: 3,
                      classroom_id: 3,
                      status: "enrolled" )

