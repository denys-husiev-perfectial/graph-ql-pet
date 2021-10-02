# frozen_string_literal: true

class User < ApplicationRecord
  has_many :goals, dependent: :destroy
  has_many :goals_to_approve,
           dependent: :nullify,
           class_name: 'Goal',
           foreign_key: :approver_id,
           inverse_of: :goal
end
