# frozen_string_literal: true

class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :approver, class_name: 'User'

  enum status: {
    todo: 'todo',
    in_progress: 'in progress',
    done: 'done'
  }
end
