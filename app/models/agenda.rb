class Agenda < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :articles, dependent: :destroy

  private

  def exec_after_destroy
    self.team.deliver_agenda_destroy_mails
  end
  
end
