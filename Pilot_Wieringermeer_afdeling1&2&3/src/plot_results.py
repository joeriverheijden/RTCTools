import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import matplotlib.dates as mdates
from datetime import datetime

plt.style.use('ggplot')

data_path_tsout = '../output/timeseries_export.csv'
data_path_tsin = '../input/timeseries_import.csv'

delimiter = ','

# Import Data
def get_csv_data(path):
  ncols = len(np.genfromtxt(path, max_rows=1, delimiter=delimiter))
  datefunc = lambda x: datetime.strptime(x, '%Y-%m-%d %H:%M:%S')
  results = np.genfromtxt(path, converters={0: datefunc}, delimiter=delimiter,
                          dtype='object' + ',float' * (ncols - 1), names=True)
  return results

ts_out = get_csv_data(data_path_tsout)
ts_in = get_csv_data(data_path_tsin)

# Generate Plot
n_subplots = 4
f, axarr = plt.subplots(n_subplots, sharex=True, figsize=(8, 3 * n_subplots))
axarr[0].set_title('Optimalisation run Wieringermeer')

# Upper subplot
axarr[0].set_ylabel('Water Level [m]')
#axarr[0].plot(ts_out['time'], ts_out['storage_level'], label='Storage',
#              linewidth=2, color='b')
#axarr[0].plot(ts_out['time'], ts_out['sea_level'], label='Sea',
#             linewidth=2, color='m')
axarr[0].plot(ts_out['time'], (ts_out['sea_level']-ts_out['storage_level']), label='Level dif',linewidth=2, color='b')


# Middle subplot
axarr[1].set_ylabel('Water Level [m]')
axarr[1].plot(ts_out['time'], ts_out['storage_level'], label='Storage',
              linewidth=2, color='b')
axarr[1].plot(ts_out['time'], -4.5 * np.ones_like(ts_out['time']), label='Storage Max',
              linewidth=2, color='r', linestyle='--')
axarr[1].plot(ts_out['time'], -4.7 * np.ones_like(ts_out['time']), label='Storage Min',
              linewidth=2, color='g', linestyle='--')
axarr[1].set_ylim(-4.8, -4.4)

# Middle Subplot
axarr[2].set_ylabel('Flow Rate [m3/s]')
axarr[2].step(ts_out['time'], ts_out['Q_pump'], label='Pump',
              linewidth=2, color='r')
axarr[2].plot(ts_out['time'], ts_in['Q_in'], label='Inflow',
              linewidth=2, color='b')
axarr[2].set_ylim(-0.5, 30)

# Lower Subplot
axarr[3].set_ylabel('Costs [euro]')
axarr[3].step(ts_out['time'], ts_out['Costs'], label='Costs',
              linewidth=2, color='r')
axarr[3].plot(ts_out['time'], ts_in['energy_price']*100, label='Price',
              linewidth=2, color='b')
axarr[3].set_ylim(-0.5, 100)

axarr[3].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))
f.autofmt_xdate()

# Shrink each axis by 20% and put a legend to the right of the axis
for i in range(n_subplots):
    box = axarr[i].get_position()
    axarr[i].set_position([box.x0, box.y0, box.width * 0.8, box.height])
    axarr[i].legend(loc='center left', bbox_to_anchor=(1, 0.5), frameon=False)

# Output Plot
plt.show()
