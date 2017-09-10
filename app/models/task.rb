class Task < ApplicationRecord

	belongs_to :tasklist

	validates :tasktitle, presence: true
	validates :taskdesc, presence: true
	validates :taskstatus, presence: true
	validates :taskdue, presence: true

end