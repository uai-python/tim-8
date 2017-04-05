from flask import request, render_template, flash, redirect, session, url_for
from app import app
from app import database
from app.models import Questions, Participant, Answer

@app.route('/')
def index():
	if session['user']:
		dataQuiz = Question.query.order_by(func.rand()).limit(2).all()
		user = session['user']
		return render_template('quiz.html', data=dataQuiz, user=user)
	else:
		return redirect(url_for("login"))

@app.route('/login', methods=['GET', 'POST'])
def login():
	if request.method == 'POST':
		session['user'] = request.form['nama']
		nama = request.form['nama']
		kota = request.form['kota']
		gender = request.form['gender']

		participant = Participant(nama, kota, gender, 0)
		db_session.add(participant)
		db_session.commit()

		return redirect(url_for("index"))
	else:
		return render_template('login.html', title='Isi Data Pribadi')

@app.route('/logout')
def logout():
    session.pop('user', None)
    return redirect(url_for("index"))

@app.errorhandler(404)
def not_found(error):
    return 'Page not found!', 404