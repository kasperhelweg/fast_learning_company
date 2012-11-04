# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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
