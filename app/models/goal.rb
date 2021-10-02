# frozen_string_literal: true

class Goal < ApplicationRecord
  belongs_to :user
  belongs_to :approver, class_name: 'User', inverse_of: :goals_to_approve

  enum status: {
    todo: 'todo',
    in_progress: 'in progress',
    done: 'done'
  }
end
