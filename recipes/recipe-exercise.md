# Reminder Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

noun = task
verbs = add task, see task, complete and remove task from list

## 2. Design the Class Interface

```ruby
# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    @name = name
    @task_to_do = []
  end

  def remind_me_to(task) # task is a string
    # check if task is in task_to_do array
    # if it is, raise an error
    # if not, append task to task_to_do array
  end

  def remind()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do task/s
  end

  def complete(task) # task is a string
    # check if task is in task_to_do array
    # if it is, delete task
    # if not, throw error
  end

end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# 1
todo = Reminder.new("") # => fails with "No name given, try again"

# 2
todo = Reminder.new("Maddy")
todo.remind_me_to("") # fails with "No task set."

# 3
todo = Reminder.new("Maddy")
todo.remind_me_to("Walk the doggo")
todo.complete("cook dinner") # => fails "It is not in your to do list, try again"

# 4
todo = Reminder.new("Maddy")
todo.remind_me_to(2)
todo.remind() # => faits with "It is a not a string, try again"

# 5
todo = Reminder.new("Maddy")
todo.remind_me_to("Walk the doggo")
todo.remind() # => "Walk the dog, Maddy"

# 6
todo = Reminder.new("Maddy")
todo.remind_me_to("Walk the doggo")
todo.remind_me_to("cook dinner")
todo.remind() # => "Walk the dog, Maddy"
                     # "eat, Maddy"

# 6
todo = Reminder.new("Maddy")
todo.remind_me_to("Walk the doggo")
todo.remind_me_to("cook dinner")
todo.complete("cook dinner") # => task_to_do = ["Walk the doggo"]   
```


## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
