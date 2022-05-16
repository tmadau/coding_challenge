=begin
Parent class for outlining job dependencies
=end
class JobDependency
    attr_accessor :job_string, :final_sequence
    def intialize(job_string, final_sequence)
        @job_string = job_string
        @final_sequence = final_sequence
    end
end

=begin
Child class inheriting from jobdependencies
to give structure based on user input
=end
class FinalSequence < JobDependency
    def FinalSequence

    end
end

