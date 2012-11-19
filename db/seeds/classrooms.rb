# encoding: utf-8

# Seed classrooms

# Den svære samtale
course = Course.find(5)

classroom_1 = course.classrooms.build(
                                      online_date: Date.today + 4 )

classroom_2 = course.classrooms.build(
                                      online_date: Date.today + 14 )

classroom_3 = course.classrooms.build(
                                      online_date: Date.today + 21 )

course.save

# Teamledelse
course = Course.find(2)


classroom_1 = course.classrooms.build(
                                      online_date: Date.today + 34 )

classroom_2 = course.classrooms.build(
                                      online_date: Date.today + 21 )

classroom_3 = course.classrooms.build(
                                      online_date: Date.today + 10 )

course.save

# Mødeledelse
course = Course.find(7)


classroom_1 = course.classrooms.build(
                                      online_date: Date.today + 11 )

classroom_2 = course.classrooms.build(
                                      online_date: Date.today + 16 )

classroom_3 = course.classrooms.build(
                                      online_date: Date.today + 9 )

course.save





