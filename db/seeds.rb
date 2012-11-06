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
course_MUS = Course.new(
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


course_KONFLIKT = Course.create(
                title: "Konflikthåndtering",
                short_desc: "Velkommen til Konflikthåndtering",
                desc: "Dette kursus henvender sig..." )


course_VANSKELIG = Course.create(
                title: "Vanskelige samtaler",
                short_desc: "Velkommen til Vanskelige samtaler",
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
mus_classroom_1 = course_MUS.classrooms.build(
                online_date: Date.today )
                
mus_classroom_2 = course_MUS.classrooms.build(
                online_date: Date.tomorrow )

mus_classroom_1.pages.build(title: "Forside",
                            glyph: "icon-download",
                            content: '
<h4>Guide til det virtuelle læringsrum</h4>
<p>
Kurset sætter fokus på dit personlige lederskab i situationen for den svære samtale. Vi vil arbejde på at give dig konkrete teknikker til at gribe den svære samtale an ud fra en løsningsfokuseret tilgang. I Helweg & Pedersen tror vi på, at den løsningsfokuserede tilgang til samtalen giver det bedste resultat, for dig som leder. Metoden er fremadrettet og fokuserer på, at du får skabt løsninger i samspil med din medarbejder. 
</p>
<p>
Du vil her få en introduktion til, hvordan du skal arbejde med det virtuelle læringsrum for den svære samtale. For at du får mest muligt ud af kurset, anbefaler vi, at du følger vores guide</p>
<button class="btn btn-large btn-primary" type="button"><i class="icon-circle-arrow-down icon-white dglyph"></i> Download .PDF</button>
'
                           )
mus_classroom_1.pages.build(title: "Introduktion", glyph: "icon-globe")
mus_classroom_1.pages.build(title: "Forberedelse",  glyph: "icon-leaf")
mus_classroom_1.pages.build(title: "Kursusdagen",  glyph: "icon-heart")
mus_classroom_1.pages.build(title: "Opfølgning",  glyph: "icon-bell")
mus_classroom_1.pages.build(title: "Test",  glyph: "icon-pencil")
mus_classroom_1.pages.build(title: "Evaluering",  glyph: "icon-tag")
mus_classroom_1.pages.build(title: "Bibliotek",  glyph: "icon-book")





course_MUS.save!


test_Enrollment_02 = Enrollment.create(
                      learner_id: 3,
                      classroom_id: 1,
                      status: "enrolled" )

