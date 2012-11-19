# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require File.expand_path('../seeds/users', __FILE__)

# Seed courses
course_MUS = Course.new(
                           title: "MUS samtaler",
                           short_desc: "Velkommen til MUS",
                           desc: "Dette kursus henvender sig...",
                           color: "#EACD27" 
                           )

course_TEAMLEDELSE = Course.create(
                                   title: "Teamledelse",
                                   short_desc: "Velkommen til Teamledelse",
                                   desc: "Dette kursus henvender sig...",
                                   color: "#9900AD" 
                                   )

course_SITUATION = Course.create(
                                 title: "Situationsbestemt ledelse",
                                 short_desc: "Velkommen til Situationsbestemt ledelse",
                                 desc: "Dette kursus henvender sig..." )


course_KONFLIKT = Course.new(
                             title: "Konflikthåndtering",
                             short_desc: "Velkommen til Konflikthåndtering",
                             desc: "Dette kursus henvender sig...",
                             color: "#107F00" 
                             )


course_VANSKELIG = Course.new(
                              title: "Den svære samtale",
                              short_desc: "Velkommen til Den svære samtale",
                              desc: "Dette kursus henvender sig...",
                              color: "#9900AD"  
                              )

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

mUS_classroom_1 = course_MUS.classrooms.build(
                                              online_date: Date.today + 14 )

mus_classroom_1.pages.build(title: "Forside",
                            glyph: "icon-download",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Guide til det virtuelle læringsrum</h4>
    <p>
      Kurset sætter fokus på dit personlige lederskab i situationen for den svære samtale. Vi vil arbejde på at give dig konkrete teknikker til at gribe den svære samtale an ud fra en løsningsfokuseret tilgang. I Helweg & Pedersen tror vi på, at den løsningsfokuserede tilgang til samtalen giver det bedste resultat, for dig som leder. Metoden er fremadrettet og fokuserer på, at du får skabt løsninger i samspil med din medarbejder. 
    </p>
    <p>
      Du vil her få en introduktion til, hvordan du skal arbejde med det virtuelle læringsrum for den svære samtale. For at du får mest muligt ud af kurset, anbefaler vi, at du følger vores guide:</p>
  </div>

<div class="clear"></div>

  <div class="span8">
    <h4>Introduktion til kurset</h4>
    <p>Her vil du blive præsenteret for baggrunden for kurset og hvorfor vi i Helweg & Pedersen ser temaet som relevant for dig som leder. Du vil stifte bekendtskab med nogle eksempler på den svære samtale – og samtidig også få en mere nuanceret forståelse for, hvornår en samtale kan siges at være svær.</p>
  </div>
  <div class="span4"><img alt="Convert-html" height="226" src="/assets/convert-html.png" width="285" /></div>
  
  <div class="span4"><img alt="Thumbnail-files" height="226" src="/assets/thumbnail-files.png" width="285" /></div>
  <div class="span8">
    <h4>Forberedelse</h4>
    <p>Når du har sat dig ind i baggrunden for den svære samtale, er næste skridt din forberedelse. Forberedelsen har til formål at klæde dig bedst muligt på til kursusdagen, hvor din tilgang til den svære samtale vil blive sat i spil.
    </p>
  </div>
</div>
'
                           )
mus_classroom_1.pages.build(title: "Introduktion", 
                            glyph: "icon-globe",
                            content: '
<div class="row content-classroom">
 <div class="span9"> 
<h4>Den svære samtale</h4>
<p>Lær at håndtere en vanskelig samtale, ved at fokusere på løsninger.</p>
<a href="https://s3.amazonaws.com/2ee49c5a83c63507e858d59c850ac4e0fb9d89d4214fcc4744a23fe213412454/resources/resources/000/000/001/original/dss.pdf" class="btn btn-large btn-primary"><i class="icon-circle-arrow-down icon-white dglyph"></i>Download .PDF</a>
</div>
</div>
'
                            )

mus_classroom_1.pages.build(title: "Forberedelse",  
                            glyph: "icon-leaf",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Forberedelse</h4>
  </div>
</div>
'
                            )

mus_classroom_1.pages.build(title: "Kursusdagen",  
                            glyph: "icon-heart",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Kursusdagen</h4>
  </div>
</div>
'
                            )
mus_classroom_1.pages.build(title: "Opfølgning",  
                            glyph: "icon-bell",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Opfølgning</h4>
  </div>
</div>
'
                            )
mus_classroom_1.pages.build(title: "Test",  
                            glyph: "icon-pencil",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Test</h4>
  </div>
</div>
'
                            )
mus_classroom_1.pages.build(title: "Evaluering",  
                            glyph: "icon-tag",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Evaluering</h4>
  </div>
</div>
'
                            )
mus_classroom_1.pages.build(title: "Bibliotek",  
                            glyph: "icon-book",
                            content: '
<div class="row content-classroom">
  <div class="span9"> 
    <h4>Bibliotek</h4>
  </div>
</div>
'
                            )

course_VANSKELIG.save!
course_KONFLIKT.save!
course_MUS.save!

test_Enrollment_01 = Enrollment.create(
                      learner_id: 3,
                      course_id: 6,
                      status: "invited" )

test_Enrollment_02 = Enrollment.create(
                      learner_id: 3,
                      course_id: 7,
                      status: "invited" )


test_Enrollment_03 = Enrollment.create(
                      learner_id: 3,
                      course_id: 8,
                      status: "invited" )
