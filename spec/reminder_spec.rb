require_relative '../lib/reminder.rb'

RSpec.describe "Reminder" do
  context "fails" do
    it "when no name is given" do
      expect { Reminder.new("") }.to raise_error "No name given, try again"
    end

    it "when there is no task set to do" do
      todo = Reminder.new("Maddy")
      expect { todo.remind_me_to("") }.to raise_error "No task set"
    end

    it "when task given is not a string" do
      todo = Reminder.new("Maddy")
      expect { todo.remind_me_to(2) }.to raise_error "It is a not a string, try again"
    end

    it "when task completed is not in the task list" do
      todo = Reminder.new("Maddy")
      todo.remind_me_to("Walk the doggo")
      expect { todo.complete("cook dinner") }.to raise_error "It is not in your to do list, try again"
    end

  end

  it "reminds user to do one task when given one task" do
    todo = Reminder.new("Maddy")
    todo.remind_me_to("Walk the doggo")
    expect(todo.remind).to eq "Walk the doggo, Maddy"
  end

  it "reminds user to do two task when given two task" do
    todo = Reminder.new("Maddy")
    todo.remind_me_to("Walk the doggo")
    todo.remind_me_to("cook dinner")
    expect(todo.remind).to eq "Walk the doggo, Maddy"
  end

  it "deletes the task from the task list when completed" do
    todo = Reminder.new("Maddy")
    todo.remind_me_to("Walk the doggo")
    todo.remind_me_to("cook dinner")
    todo.complete("cook dinner")
    expect(todo.remind).to eq "Walk the doggo, Maddy"
  end

end