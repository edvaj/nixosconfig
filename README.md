## **NixOS Config**

Welcome to my NixOS configuration.


Kept files and folders neatly organised with import trees to avoid monolithic configuration.nix file, easy to find, edit and update modular parts of the configuration, and allows for quick swaps of configurations.

If using on your personal machine, make sure to use your own "hardware-configuration.nix" before rebuilding. 

Currently running this on only one machine, my personal laptop, henceforth the auto-cpufreq module, feel free to remove that from the import hierarchy or "rm -rf" it entirely if using on desktop.

Feel free to fork the repository and submit pull requests if you'd like to contribute improvements. Open issues if you encounter any problems with the config or have ideas for new features.
