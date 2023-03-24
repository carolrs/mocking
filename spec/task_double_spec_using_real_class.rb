require 'task_list'

RSpec.describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = TaskList.new

    task_t = double :fake_true
    allow(task_t).to receive(:complete?).and_return(true)

    task_f = double :fake_false
    allow(task_f).to receive(:complete?).and_return(false)

    # Don't edit below
    task_list.add(task_t)
    task_list.add(task_f)

    expect(task_list.all_complete?).to eq false
    # expect(task_list.list).to eq [task]
    # expect(task_list.count).to eq 1
    # expect(task_list.clear).to eq :success
  end
end