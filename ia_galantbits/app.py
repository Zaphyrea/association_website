from flask import Flask, render_template, request, redirect, url_for
from models.data import Data
import logging   # informations flask console (facultatif)

# The line `app = Flask(__name__)` creates an instance of the Flask class and assigns it to the
# variable `app`. The `__name__` argument is a special Python variable that represents the name of the
# current module. By passing `__name__` as the argument, Flask knows where to find the static and
# template files associated with the application.
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

# Define the view function for the 'donation_form' endpoint
@app.route('/donation_form.html', methods=['GET','POST'])
def donation_form():
    if request.method == 'POST':
        surname = request.values.get('surname')
        name = request.values.get('name')
        address = request.values.get('address')
        e_mail = request.values.get('e_mail')
        amount = int(request.values.get('amount'))
        comment = request.values.get('comment')
        Data.add_donor(surname, name, address, e_mail, amount, comment)
        return redirect(url_for('thank_you'))
# html take cares of datas which are required
    return render_template('donation_form.html')


# Define the view function for the 'conditions_of_use' endpoint
@app.route('/conditions_of_use')
def conditions_of_use():
    return render_template('conditions_of_use.html')

# Define the view function for the 'thank_you' endpoint
@app.route('/thank_you')
def thank_you():
    return render_template('thank_you.html')

# By default method is GET (here we just want to read datas)
# Define the view function for the 'donation_informations' endpoint
@app.route('/donation_informations')
def donation_informations():
    all_donors = Data.get_all_donors()
    total_amount = Data.total_amount()
    return render_template('donation_informations.html', all_donors=all_donors, total_amount=total_amount)


if __name__ == "__main__" :
    app.run(debug=True)
 
