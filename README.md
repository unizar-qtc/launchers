# launchers
*Scripts to launch calculations to BIFI queues*

### List of launchers (for *memento* & *cierzo*)
  - [G09_launcher](./docs/GAUSSIAN_launcher.rst)
  - [G16_launcher](./docs/GAUSSIAN_launcher.rst)
  - GMX_launcher
  - GMX_replicater
  - ORCA_launcher
  - JAGUAR_launcher
  - SCRIPT_launcher
  - INTERACTIVE_launcher


### Installation
No explicit installation is required. Just clone the repository to your preferred location. To include this folder in your path you can source the configuration file `launchers.rc` in your `.bashrc` file. Then restart the session and you are ready to go.

This same process can be briefly described with the following commands:
```bash
cd $HOME/bin
git clone https://github.com/unizar-qtc/launchers
echo "source $PWD/launchers/launchers.rc" >> $HOME/.bashrc
```

### Usage
To launch a calculation type the corresponding launcher script followed by additional options (if any) and finally the one or several input files.

Additional information about a specific launcher can be found in the [launcher's documentation](./docs) or using the `-h` option.
