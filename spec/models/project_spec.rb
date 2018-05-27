require 'rails_helper'

RSpec.describe Project do
  let(:project) { Project.new }
  let(:task) { Task.new }

  it 'considers a project with no tasks to be done' do
    expect(project.done?).to be_truthy
  end

  it 'knows that a project with an incomplete tasks is not done' do
    project.tasks << task
    expect(project.done?).to be_falsy
  end

  it 'marks a project if its tasks are done' do
    project.tasks << task
    task.mark_completed
    expect(project).to be_done
  end
end
