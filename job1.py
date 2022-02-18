'''
Job 1
Fetches CO2 Trends as on the given Date
NOTE: If the data is not available for a specific date then the program Fails
'''

import requests
import sys

''' 
getCO2() fetches CO2 data from the API.
This function takes 1 argument as input, date. 
date is a string type in format yyyy-mm-dd
'''

def getCO2(date):
    y,m,d=map(int,date.split('-'))    
    url="https://global-warming.org/api/co2-api"
    data=requests.get(url).json()
    for dt in data['co2']:
        if int(dt['year'])==y and int(dt['month'])==m and int(dt['day'])==d:
            return {'cycle':dt['cycle'],'trend':dt['trend']}
    sys.exit("Data not found for this date")


print(getCO2("2022-02-13"))