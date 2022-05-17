# coding_challenge

## Problem

Imagine a job as a string. Now imagine that it is not only one job. But multiple jobs. Each represented by a single character. Now as in real life some jobs are reliant on others. Meaning there is a dependency. For instance "a" my depend on "b". So this means that "b" should be placed before "a". The dependency determines of job on another has to result in that job start. Hence why "b" should be place before "a".

## Solution

So the solution for me is to create a ruby class "JobDependency" that will have 2 attributes "job_string" and "job_dependency". "job_string" will take in an array of characters representing the jobs, "job_dependency" will take the array stored in "job_string" and ask for a character each job will depend upon.

## Language

- Ruby
- Version 3.1.1

## Testing

- rspec-core 3.11.0
- rspec-expectations 3.11.0
- rspec-mocks 3.11.1
- rspec-support 3.11.0

## How to test

- run the program
- match a job dependency to the given string

## What works

- Validation for same job dependency gives an error

## What is not working and what still needs to be done

- Validation of user input for wrong dependency, like for instance a string being match with a character
- Same character strings can depend on other strings that where already structured
- Output of the final sequence of the ordered job
