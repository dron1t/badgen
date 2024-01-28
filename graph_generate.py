import pandas
from matplotlib import pyplot as plt

data = pandas.read_csv('requests.csv')
print(data)
data.plot(subplots=True)

plt.show()
