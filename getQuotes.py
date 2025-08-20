import requests

api_url = 'https://zenquotes.io/api/'
mode = 'random'


request = requests.get(url=f'{api_url}{mode}')

data = request.json()[0]
quote = data['q']
author = data['a']


with open('quote.txt', 'w') as file:
    file.write(quote)
    file.write('\n')
    file.write(author)