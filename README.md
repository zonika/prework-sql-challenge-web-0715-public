---
tags: prework, sql
languages: sql
---

# Prework SQL Challenge

We're going to review what we just learned in the previous lesson on SQL.

## Setup

Let's pretend we have a table called cats. The cats table has the following columns: id (integer), name (text), age (integer), breed (text).

The table looks like the following:

|id |name|age|breed|
|---|----|---|-----|
|1  |Maro| 6 |Scottish Fold|
|2  |Nala| 3 |Siamese|
|3  |Grumpy Cat|2|Ragdoll|
|4  |Lil Bub|3|dwarf|

In fact, if you've gone through the [ZetCode SQL Course](http://zetcode.com/db/sqlite/) and are comfortable creating a table in SQLite3, consider plugging this data into a table to play around with it. This isn't necessary to complete this challenge, but encouraged.

**Note:** The queries you will be inputting are CASE SENSITIVE. SQL statements and keywords like SELECT, FROM, COUNT, WHERE, UPDATE, DELETE, etc should be in all caps. Note your statements should also end with a semi-colon and table name and column names are lower case.

Let's take a look at the first question, with the answer given:

```ruby
  it 'creates a table called cats' do 
    your_answer = "CREATE TABLE cats;"
    expect(your_answer).to eq(answer_1)
  end
```

## Directions

1. Fork this repository, clone that fork, and open up the directory in terminal.

2. Open up the file in the `spec` directory called `sql_challenge_spec.rb`. This is our RSpec file where the tests for this challenge live.

3. Fill in your answers in quotes:

```ruby
your_answer = __
```

4. When you've finished answering all of the questions, run `rspec` to make sure you're seeing all green.

5. When you're finished (all of the tests pass and you're seeing green in your terminal):

* Stage the changes you made: `git add .`
* Commit those changes with a message: `git commit -m "all done"`
* Push those changed up to your fork: `git push origin master`
* Then open up a pull request on the original repository (that you cloned from).