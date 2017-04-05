from sqlalchemy import Column, DateTime, ForeignKey, Sequence, Integer, String, func
from sqlalchemy.orm import backref, relationship

from app.database import Base

class Questions(Base):
	__tablename__ = 'questions'

	id = Column(Integer, primary_key=True)
	judul = Column(String(200), index=True, unique=True)
	jawaban = Column(String(64), index=True, unique=True)

	def __init__(self, judul, jawaban):
		self.judul = judul
		self.jawaban = jawaban

	def __repr__(self):
		return '<Question %r>' % self.judul

class Participant(Base):
	__tablename__ = 'participant'

	id = Column(Integer, Sequence('userid_seq'), primary_key=True)
	nama = Column(String(64), index=True, unique=True)
	kota = Column(String(64))
	gender = Column(String(10))
	answers = Column(Integer, ForeignKey('answer.id'), nullable =True)
	answerdate = Column(DateTime, default=func.now())

	def __init__(self, nama, kota, gender, answers):
		self.nama = nama
		self.kota = kota
		self.gender = gender
		self.answers = answers

	def __repr__(self):
		return '<Participant %r>' % self.nama

class Answer(Base):
	__tablename__ = 'answer'

	id = Column(Integer, Sequence('answerid_seq'), primary_key=True)
	questionID = Column(Integer, ForeignKey('questions.id'))
	answer = Column(String(64))

	def __init__(self, userID, questionID, answer, time):
		self.questionID = questionID
		self.answer = answer

	def __repr__(self):
		return '<Answer %r>' % self.answer