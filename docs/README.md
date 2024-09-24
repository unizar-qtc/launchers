# launcher's documentation

All the launchers are standalone scripts (no dependencies) and can be used from a `bash` shell.

To get a brief description of a launcher usage and options in the command line, use the `-h` option.

For a more detailed explanation of the usage and examples, click on each launcher to go to its specific documentation.

| launcher | software called | input file extensions | agustina | remarks |
| --- | :---: | :---: | :---: | --- |
| [`G16_launcher`](./GAUSSIAN_launcher.rst) | Gaussian 16 | *.com* / *.gjf* | :heavy_check_mark: | Can also use Gaussian 09 with `--g09` option |
| `GMX_launcher` | GROMACS | *.tpr* [*.cpt*] | :heavy_check_mark: | |
| `GMX_replicater` | GROMACS | *.mdp* *.gro* [*.ndx* *.top*] | :heavy_check_mark: | |
| `ORCA_launcher` | ORCA | *.inp* | :heavy_check_mark: | |
| `VASP_launcher` | VASP | *-* | :heavy_check_mark: | |
| `SCRIPT_launcher` | bash | *.sh* | :heavy_check_mark: | |
| `INTERACTIVE_launcher` | bash | *-* | :heavy_check_mark: | |

