require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    task_list.add(FakeTaskNotComplete.new)
    task_list.add(FakeTaskComplete.new)

    expect(task_list.all_complete?).to eq false
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    task_list.add(FakeTaskComplete.new)
    task_list.add(FakeTaskComplete.new)

    expect(task_list.all_complete?).to eq true
  end

  it "return an array of tasks" do
    task_list = TaskList.new
    fake_task_1 = FakeTask.new
    fake_task_2 = FakeTask.new
    task_list.add(fake_task_1)
    task_list.add(fake_task_2)

    expect(task_list.all).to eq [fake_task_1, fake_task_2]
  end

  class FakeTaskNotComplete
    def complete?
      return false
    end
  end

  class FakeTaskComplete
    def complete?
      return true
    end
  end

  class FakeTask
  end

  # Unit test `#all` and `#all_complete?` behaviour
end
