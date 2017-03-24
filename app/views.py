from flask import render_template, flash, redirect
from app import app
from .forms import QuizForm


user = {'nickname': 'User'}
@app.route('/')
@app.route('/index')
def index():
	return render_template('index.html', title='Homepage', user=user)

@app.route('/form', methods=['GET', 'POST'])
def form():
	form = QuizForm()
	return render_template('testform.html', title='TEST', form=form, user=user)