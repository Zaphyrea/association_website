# association_website
A basic website for a caritative association

AI Galantbits website (caritative fictive association)

The AI Galantbits is a web application built using Flask that allows users to submit donation information through a form and view donation-related information. The application stores donor details and donation amounts in a MySQL database.
Features

    Donation Form: Users can submit their donation details including name, address, email, amount, and an optional comment.
    Donation Information: Users can view a list of all donors and the total donation amount.
    Thank You Page: After submitting a donation, users are directed to a thank you page.
    Conditions of Use: A page with conditions of use is available for users to read.

Requirements

    Python 3.x
    Flask
    MySQL Connector (mysql-connector-python)
    CSS styles for UI

Installation

    Clone the repository:

    bash

git clone https://github.com/your-username/ia_galantbits.git

Install the required dependencies using pip:


git clone https://github.com/your-username/ia_galantbits.git

Create a MySQL database named association with appropriate tables to store donor information.

Update the database connection details in the models/connection.py file:

python

class Connection:
    # Update __USER, __PWD, __HOST, __PORT, and __DB with your database credentials

Run the Flask application:

bash

python app.py

Access the application in your web browser at http://localhost:5000.

Usage

    Access the home page to see the introduction and link to the donation form.

    Fill out the donation form with your details and submit.

    After submitting the form, you'll be redirected to a thank you page.

    Access the "Donation Information" page to view a list of all donors and the total donation amount.

    You can also explore the "Conditions of Use" page to understand the terms.

Structure

    app.py: Main Flask application script.
    models/connection.py: Class for managing database connection.
    models/data.py: Class for interacting with the database (add donor, get all donors, total amount).
    templates/: Contains HTML templates for different pages.
    static/: Contains CSS files for styling.

Contributions

Contributions are welcome! Feel free to open issues and submit pull requests for any enhancements or bug fixes.
