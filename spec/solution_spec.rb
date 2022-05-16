require 'solution.rb'

describe 'JobDependency' do
    it 'Class initializes 2 attributes' do
        JobDependency.configure do | config |
            config.job_string = "a =>"
            config.final_sequence = "a"
        end
        
        expect(JobDependency.config).to eq("a")
        expect(JobDependency.config).to eq("")
    end
end