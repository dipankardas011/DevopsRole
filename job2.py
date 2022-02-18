'''
Job 2
Calculates Foreign Exchange Rates of currencies as per USD
'''

import requests
import sys

'''
getFX() fetches the Foreign exchange rates for currencies.
It takes 2 arguments as input, "ccy" and "dates"
ccy (string) is the currency whose value has to be translated to USD
Values for ccy could be (INR, AUD, JPY, EUR, GBP) etc
dates(list) is a list of dates for which the Foreign exchange rates have to be calculated.
dates have to be in format yyyy-mm-dd
'''

def getFX(ccy,date):

  url = 'http://currencies.apps.grandtrunk.net/getrate/'
  u = url+date+'/'+ccy+'/USD'
  return requests.get(u).json()


getFX("GBP","2022-02-13")