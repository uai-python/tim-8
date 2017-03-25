from app import db

class Questions(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	judul = db.Column(db.String(200), index=True, unique=True)
	sumber = db.Column(db.String(64), index=True, unique=True)

class Participant(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	nama = db.Column(db.String(64), index=True, unique=True)
	usia = db.Column(db.Integer)
	gender = db.Column(db.String(10))
	answers = db.relationship('Answer', backref='author', lazy='dynamic')

class Answer(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	userID = db.Column(db.Integer, db.ForeignKey('Participant.id'))
	questionID = db.Column(db.Integer, db.ForeignKey('Questions.id'))
	answer = db.Column(db.String(64))