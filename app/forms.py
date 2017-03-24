from flask_wtf import Form
from wtforms import StringField, BooleanField
from wtforms.validators import DataRequired

class QuizForm(Form):
	answer = StringField('answer', validators=[DataRequired()])