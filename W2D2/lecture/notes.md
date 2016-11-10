- Regursion testing
* make sure new additions does not break anything when test is run
* test verifies new code did not break anything

* rspec is a ruby language to test your code. 
* tests all public methods

- TDD: Test driven development

---- Write test cases first then write code that will address those changes
-- RED, GREEN, REFACTOR LOOP

* better than automation testing
- forces you think about your design and solution before you write code
- think of edge cases ahead of time helps you write your code
- you know your test cases work
- might take longer in the beginning to do tdd, but you see advantages once your code base matures. 
- you're more confident with the changes you want to make
- maintain quality in your code

- the way you write your test cases may affect the way your write your code
- can restrict the way you design your code

- BDD: Behaviour driven development
--- testing base on behaviour to test the outcome

- Gem file is a list of requirements of all the software that you need to load in your computer for you to work on the project
- Gems are packages of ruby code that others have written that you can use in your computer.
* powerful aspect of ruby development environment

- Gem guard / guard-respec automatically runs all your test cases rspec instead of doing them manually. 
* watching changes and immediately runs entire suite

* any changes to gem files, re-run bundle install

* bundle update to update the Gem lock file

- rspec sounds like plain English

<!-- bundle exec rspec spec/spec_example1.rb -->

- run bundle to make sure ruby is running the proper gems that is in your Gem lock file
-- all ruby commands have to be prefixed with bundle exec rspec 





















