import newrelic.agent
newrelic.agent.initialize('newrelic.ini')

from flask import Flask, render_template, request, flash, jsonify

app = Flask(__name__)      

@app.route('/')
def home():
  newrelic.agent.set_transaction_name("Home")
  return render_template('home.html')

@app.route('/about')
def about():
  newrelic.agent.set_transaction_name("About")
  return render_template('about.html')

@app.route('/contact', methods=['GET', 'POST'])
def contact():
  newrelic.agent.set_transaction_name("Contact")
  return render_template('contact.html')

@app.route('/showSignUp')
def showSignUp():
    newrelic.agent.set_transaction_name("ShowSignUp")
    return render_template('signup.html')
 
@app.route('/signUp',methods=['POST'])
def signUp():
    newrelic.agent.set_transaction_name("SignUp")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
