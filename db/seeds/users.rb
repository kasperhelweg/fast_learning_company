# encoding: utf-8

# Seed users
user_comp_1 = Company.create( 
                             name: "Helweg & Pedersen",
                             email: "info@helweg-pedersen.dk", 
                             password: "123456", 
                             password_confirmation: "123456"
                             )

user_comp_2 = Company.create( 
                             name: "Some Company",
                             email: "info@somecompany.com", 
                             password: "123456", 
                             password_confirmation: "123456"
                             )

user_emp_1 = user_comp_1.learners.build(
                                        name: "Stinne Tarp",
                                        email: "stinne@helweg-pedersen.dk", 
                                        password: "123456", 
                                        password_confirmation: "123456"
                                        )

user_emp_2 = user_comp_1.learners.build(
                                        name: "Kasper Helweg",
                                        email: "kasperhelweg@gmail.com", 
                                        password: "123456", 
                                        password_confirmation: "123456"
                                        )


#user_emp_2.avatar = File.open("/home/kasper/Pictures/kaps.png")


user_comp_1.save!
user_comp_2.save!
