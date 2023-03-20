class Reminder
  def initialize(name) # name is a string
    fail "No name given, try again" if name == ""
    @name = name.to_s
    @task_to_do = []
  end

  def remind_me_to(task) # task is a string
    fail "It is a not a string, try again" unless task.is_a? String
    fail "No task set" if task.empty?

    @task_to_do << task
  end

  def remind()
    @task_to_do.each do |task|
      return "#{task}, Maddy"
    end
  end

  def complete(task) # task is a string
    fail "It is not in your to do list, try again" unless @task_to_do.include? task
    @task_to_do.delete(task)
  end

end