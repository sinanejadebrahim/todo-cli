
# ✨ Simple TODO CLI ✨

Manage your tasks with ease using this minimalist TODO CLI tool written in Bash. Keep your tasks organized effortlessly without any external dependencies. 📝

## Features

- **Simple and Lightweight**: With just around 30 lines of Bash, this tool provides a basic yet functional CLI interface for managing your tasks.
- **No External Dependencies**: You don't need to install any additional packages or dependencies to use this tool. It relies solely on Bash built-ins.
- **Organized Task Storage**: Tasks are stored in files named after their creation date (e.g., `03-02-2024`). This ensures easy organization and retrieval of tasks, allowing you to keep track of your progress over time.
- **Customizable Behavior**: The tool's behavior can be easily customized to suit your preferences or workflow. Whether you want to add new features or tweak existing ones, the codebase is open and accessible for modifications.

[![asciicast](https://asciinema.org/a/657609.svg)](https://asciinema.org/a/657609)

## Usage

1. **Add a Task**:
   ```
   todo add "Your task description"
   ```

2. **Remove a Task**:
   ```
   todo rm <task_number>
   ```

3. **Mark a Task as Done**:
   ```
   todo do <task_number>
   ```

4. **List Tasks**:
   ```
   todo ls
   ```

## Getting Started

1. **Clone the Repository**:
   ```
   git clone https://github.com/sinanejadebrahim/todo-cli.git
   ```

2. **Navigate to the Repository**:
   ```
   cd todo-cli
   ```

3. **Make the Script Executable and move it to bin**:
   ```
   # by default task files are saved in /var/log/todo - you can change it in the script
   chmod +x todo.sh
   mkdir /var/log/todo
   cp todo.sh /usr/bin/todo

   ```

4. **Start Managing Your Tasks**:
   ```
   todo add test cicd setup
   ```

## Contributing

i'm trying to keep this as simple as possible - Contributions are welcome! If you have any ideas for improving this tool or want to add new features, feel free to fork your own or submit a pull request. 🚀

## License

This project is licensed under the [Apache License 2.0](LICENSE). 📄


