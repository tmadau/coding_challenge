=begin
Class with two attributes. job_string for string characters
to be matched, final_sequence will validate job_string characters
=end
class JobDependency
    attr_accessor :job_string, :final_sequence
    def initialize(job_string, final_sequence)
        @job_string = job_string
        @final_sequence = final_sequence
    end
end

=begin
These strings will be used to check which jobs are depedent
on others. Then compare them with the store gets.chomp
input from the user
=end
job1 = "a"
job2 = "b"
job3 = "c"

# Jobstring array that contains job strings and 
jobs = [
    JobDependency.new(job1, "a"),
    JobDependency.new(job2, "b"),
    JobDependency.new(job3, "c")
]
puts "Please enter how jobs depend on each other"

=begin
method to loop through all the jobs by character
prompts the user to give a structure and validates
the input and give the proper order of the jobs
if a depends on c, it will output c => a
=end
def jobs_test(jobs)
    answer = ""
    for job in jobs
        puts job.job_string
        answer = gets.chomp()
        if answer == job.final_sequence
            puts "Error: job cannot depend on itself"
            exit
        elsif answer != job.final_sequence
            puts "#{answer} => #{job.final_sequence}"
        end
    end
end

jobs_test(jobs)
