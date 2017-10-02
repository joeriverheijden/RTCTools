import matplotlib.dates as mdates
import matplotlib.pyplot as plt
import numpy as np

plt.style.use('ggplot')

def unite_legends(axes):
    h, l = [], []
    for ax in axes:
        tmp = ax.get_legend_handles_labels()
        h.extend(tmp[0])
        l.extend(tmp[1])
    return h, l

# Plot #1: Data over time. X-axis is always time.
f, axarr = plt.subplots(5, sharex=True)
# TODO: Do not use private API of PIMixin
times = self._timeseries_import.times

axarr[0].set_ylabel('Water level\n[m]')
axarr[0].plot(times, results['Afdeling1_HQ_H'], label='Afdeling 1',
              linewidth=2, color='b')
axarr[0].plot(times, self.wl_max1 * np.ones_like(times), label='Afdeling1 Max',
              linewidth=2, color='r', linestyle='--')
axarr[0].plot(times, self.wl_min1 * np.ones_like(times), label='Afdeling1 Min',
              linewidth=2, color='g', linestyle='--')
ymin, ymax = axarr[0].get_ylim()
axarr[0].set_ylim(ymin - 0.1, ymax + 0.1)

axarr[0].set_ylabel('Water level\n[m]')
axarr[0].plot(times, results['Afdeling2_HQ_H'], label='Afdeling 2',
              linewidth=2, color='b')
axarr[0].plot(times, self.wl_max2 * np.ones_like(times), label='Afdeling2 Max',
              linewidth=2, color='r', linestyle='--')
axarr[0].plot(times, self.wl_min2 * np.ones_like(times), label='Afdeling2 Min',
              linewidth=2, color='g', linestyle='--')
ymin, ymax = axarr[0].get_ylim()
axarr[0].set_ylim(ymin - 0.1, ymax + 0.1)

axarr[0].set_ylabel('Water level\n[m]')
axarr[0].plot(times, results['Afdeling3_HQ_H'], label='Afdeling 3',
              linewidth=2, color='b')
axarr[0].plot(times, self.wl_max2 * np.ones_like(times), label='Afdeling3 Max',
              linewidth=2, color='r', linestyle='--')
axarr[0].plot(times, self.wl_min2 * np.ones_like(times), label='Afdeling3 Min',
              linewidth=2, color='g', linestyle='--')
ymin, ymax = axarr[0].get_ylim()
axarr[0].set_ylim(ymin - 0.1, ymax + 0.1)

axarr[1].set_ylabel('Water level\n[m]')
axarr[1].plot(times, self.get_timeseries('Waddenzee_H', 0).values, label='Sea',
              linewidth=2, color='b')
ymin, ymax = axarr[1].get_ylim()
axarr[1].set_ylim(ymin - 0.5, ymax + 0.5)

axarr[2].set_ylabel('Energy price\n[EUR/kWh]')
axarr[2].step(times, self.get_timeseries('energy_price', 0).values, label='Energy price',
              linewidth=2, color='b')
ymin, ymax = axarr[2].get_ylim()
axarr[2].set_ylim(-0.1, ymax + 0.1)

axarr[3].set_ylabel('Discharge\n[$\mathdefault{m^3\!/s}$]')
axarr[3].step(times, results['leemanspumpingstationafd1.pomp1.Q'], label='Leemans1 Pump 1',
              linewidth=2, color='b')
axarr[3].step(times, results['leemanspumpingstationafd1.pomp2.Q'], label='Leemans1 Pump 2',
              linewidth=2, color='r')
axarr[3].plot(times, self.get_timeseries('RR_afdeling1_Q', 0).values, label='Inflow afdeling 1',
              linewidth=2, color='g')
ymin, ymax = axarr[3].get_ylim()

axarr[3].set_ylabel('Discharge\n[$\mathdefault{m^3\!/s}$]')
axarr[3].step(times, results['leemanspumpingstationafd3.pomp1.Q'], label='Leemans2 Pump 1',
              linewidth=2, color='b')
axarr[3].step(times, results['leemanspumpingstationafd3.pomp2.Q'], label='Leemans2 Pump 2',
              linewidth=2, color='r')
axarr[3].plot(times, self.get_timeseries('RR_afdeling3_Q', 0).values, label='Inflow afdeling 3',
              linewidth=2, color='g')
ymin, ymax = axarr[3].get_ylim()

axarr[3].set_ylabel('Discharge\n[$\mathdefault{m^3\!/s}$]')
axarr[3].step(times, results['slootvaartpumpingstation.pomp1.Q'], label='Slootvaart Pump 1',
              linewidth=2, color='b')
axarr[3].step(times, results['slootvaartpumpingstation.pomp1.Q'], label='Slootvaart Pump 2',
              linewidth=2, color='r')
axarr[3].plot(times, self.get_timeseries('RR_afdeling2_Q', 0).values, label='Inflow afdeling 2',
              linewidth=2, color='g')
ymin, ymax = axarr[3].get_ylim()

axarr[3].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[3].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

axarr[4].set_ylabel('Pump speed\n[$\mathdefault{min^{-1}}$]')
axarr[4].step(times, results['leemanspumpingstationafd1.pomp1_speed'], label='Leemans Pump 1',
              linewidth=2, color='b')
axarr[4].step(times, results['leemanspumpingstationafd1.pomp2_speed'], label='Leemans Pump 2',
              linewidth=2, color='r')
ymin, ymax = axarr[4].get_ylim()
axarr[4].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[4].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

axarr[3].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[3].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

axarr[4].set_ylabel('Pump speed\n[$\mathdefault{min^{-1}}$]')
axarr[4].step(times, results['leemanspumpingstationafd3.pomp1_speed'], label='Leemans2 Pump 1',
              linewidth=2, color='b')
axarr[4].step(times, results['leemanspumpingstationafd3.pomp2_speed'], label='Leemans2 Pump 2',
              linewidth=2, color='r')
ymin, ymax = axarr[4].get_ylim()
axarr[4].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[4].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

axarr[3].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[3].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

axarr[4].set_ylabel('Pump speed\n[$\mathdefault{min^{-1}}$]')
axarr[4].step(times, results['slootvaartpumpingstation.pomp1_speed'], label='Slootvaart Pump 1',
              linewidth=2, color='b')
axarr[4].step(times, results['slootvaartpumpingstation.pomp2_speed'], label='Slootvaart Pump 2',
              linewidth=2, color='r')
ymin, ymax = axarr[4].get_ylim()
axarr[4].set_ylim(-0.05 * (ymax - ymin), ymax * 1.1)
axarr[4].xaxis.set_major_formatter(mdates.DateFormatter('%H:%M'))

f.autofmt_xdate()

# Shrink each axis by 20% and put a legend to the right of the axis
for i in range(len(axarr)):
    box = axarr[i].get_position()
    axarr[i].set_position([box.x0, box.y0, box.width * 0.8, box.height])
    axarr[i].legend(loc='center left', bbox_to_anchor=(1, 0.5), frameon=False)

# Output Plot
f.set_size_inches(8, 9)
plt.savefig(os.path.join(self._output_folder, 'overall_results.png'), bbox_inches='tight', pad_inches=0.1)

# Plot the working area with the operating points of the pump.
plot_operating_points(self, self._output_folder)
