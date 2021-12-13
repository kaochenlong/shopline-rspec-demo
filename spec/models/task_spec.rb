require 'rails_helper'

RSpec.describe Task, type: :model do
  it "can toggle complete on task" do
    task_not_done = create(:task)
    task_not_done.toggle_complete!

    task_completed = create(:task, :completed)
    task_completed.toggle_complete!

    expect(task_not_done.completed_at).not_to be nil
    expect(task_completed.completed_at).to be nil
  end
end
