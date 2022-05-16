# coding_challenge


## Problem
Imagine a job as a string. Now imagine that it is not only one job. But multiple jobs. Each represented by a single character. Now as in real life some jobs are reliant on others. Meaning there is a dependency. For instance "a" my depend on "b".  So this means that "b" should be placed before "a". The dependency determines of job on another has to result in that job start. Hence why "b" should be place before "a".

## Solution
So the solution for me is to create a ruby class "JobDependency" that will be the parent of "FinalSequence" class. The parent class will have 2 attributes "job_string" and "final_sequence". "job_string" will take in an array of characters representing the jobs, "final_sequence" will take the array stored in "job_string" and give a sequence output containing all the jobs that where stored in "job_string".

## Language
  - Ruby
  - Version 3.1.1

## Testing
  - rspec-core 3.11.0
  - rspec-expectations 3.11.0
  - rspec-mocks 3.11.1
  - rspec-support 3.11.0
