class Cohort < ActiveRecord::Base
    has_many :students

    def add_student(name:, age:)
        Student.create(name: name, age: age, cohort_id: self.id)
    end

    def average_age
        self.students.average(:age).to_i
    end

    def total_students
        self.students.count
    end

    def self.biggest
        max_students = 0
        biggest_cohort = nil
        self.all.each do |cohort| 
            num_students = cohort.total_students
            if num_students > max_students
                max_students = num_students
                biggest_cohort = cohort
            end
        end
        puts "#{biggest_cohort.name} is the biggest cohort with #{max_students} students"
        biggest_cohort
    end

    def self.sort_by_mod
        self.order(:current_mod)
    end
end