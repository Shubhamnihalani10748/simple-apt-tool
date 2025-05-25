# simple-apt-tool

A simple interactive **Bash script** to install or remove packages from your system.

## Features

- Friendly terminal-based interaction
- Lets users **choose between installing or removing** a package
- Uses `apt` and `sudo` to execute the commands
- Includes basic error handling

## How It Works

1. Greets the user and asks if they want to **install (I)** or **remove (R)** a package.
2. Prompts the user to enter the **package name**.
3. Executes the corresponding `apt install` or `apt purge` command.
4. Displays the **exit status** of the command.

## Usage

Run the script from a terminal:

```bash
bash script.sh
