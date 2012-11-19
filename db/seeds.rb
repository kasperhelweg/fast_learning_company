# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require File.expand_path('../seeds/users', __FILE__)
require File.expand_path('../seeds/courses', __FILE__)
require File.expand_path('../seeds/classrooms', __FILE__)
require File.expand_path('../seeds/invitations', __FILE__)
require File.expand_path('../seeds/enrollments', __FILE__)
require File.expand_path('../seeds/class_5_1', __FILE__)


