import requests
from bs4 import BeautifulSoup
import pandas as pd

# URL of the player's stats page (e.g., LeBron James)
url = "https://www.basketball-reference.com/players/j/jamesle01.html"

# Send a GET request to the URL
response = requests.get(url)

# Parse the HTML content using BeautifulSoup
soup = BeautifulSoup(response.text, 'html.parser')

# print(soup)
# Find the table with the player's per-game stats
table = soup.find('table', id='per_game_stats')

# Extract table headers
headers = [th.text for th in table.find('thead').find_all('th')]

# Extract table rows
rows = []
for row in table.find('tbody').find_all('tr'):
    cells = [cell.text for cell in row.find_all(['th', 'td'])]
    rows.append(cells)

# Convert the data into a pandas DataFrame
df = pd.DataFrame(rows, columns=headers)

# Display the DataFrame

# totalPoints = for points in df['PTS']
print(dir(df))