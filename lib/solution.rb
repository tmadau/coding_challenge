=begin
Parent class for outlining job dependencies
=end
class JobDependency
    # 
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
job1 = "a => "
job2 = "b => "
job3 = "c => "

jobs = [
    JobDependency.new(job1, "a"),
    JobDependency.new(job2, "b"),
    JobDependency.new(job3, "c")
]
puts "Please enter how jobs depend on each other"

# Method for ordering jobs based on the their dependency
def jobs_test(jobs)
    answer = ""
    for job in jobs
        puts job.job_string
        answer = gets.chomp()
        if answer == job.final_sequence
            puts "Error: job cannot depend on itself"
            exit
        elsif answer[0] == "" && answer[0 - 1] == ""
            puts "final sequence job sequence\n a"
            exit
        elsif answer != job.final_sequence
            sequence_order = answer.prepend(job.final_sequence + " => ")
            puts answer
        end
        puts "Out here" + answer[0]
    end
end

jobs_test(jobs)

