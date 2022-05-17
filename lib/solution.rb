=begin
Class with two attributes. job_string for string characters
to be matched, job_dependency will validate job_string characters
=end
class JobDependency
    attr_accessor :job_string, :job_dependency
    def initialize(job_string, job_dependency)
        @job_string = job_string
        @job_dependency = job_dependency
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
    job_structure = ""

    for job in jobs
        puts job.job_string
        job_structure = gets.chomp()
        if job_structure == job.job_dependency
            puts "Error: job cannot depend on itself"
            exit
        elsif job_structure.length > 0
            puts "Error: Only one character string characters allowed"
            exit
        elsif job_structure != job.job_dependency
            puts "#{job_structure} => #{job.job_dependency}"
        end
    end
end

jobs_test(jobs)
