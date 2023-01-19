class Mission < ApplicationRecord
    belong_to :scientist
    belong_to :planet

    validates :name, presence: true
    validates :scientist, uniqueness: {scope: :name}
end
