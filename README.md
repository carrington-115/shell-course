# shell-course

## Contributing to this project

1. First, clone the repo: `git clone <url>`
2. Second, install all the node dependencies: `npm install`
3. Verify the .env file for all the necessary protected data.
4. Create your branch: `git branch <branch-name>`, and switch to the branch: `git checkout <branch-name>`
5. Add feature and commit your changes in the following steps

```bash
git add .
git commit -m "commit message"
git push -u origin <branch-name>

```

## Notes

- Python is a better choice for advance scripting especially in frameworks like ansible

### Basic commands

1. **echo**: This is used to display content

```bash
echo 'hello world'

```

2. **file.sh and bash file.sh**: To create a bash file, we use the **.sh** extension. Then to run the shell file,

```bash
bash file.sh
```

3. To automatically run the file in the shell by passing it simply using the path, we can do the following:

- First get the shell type by running

```bash
echo $SHELL
```

- Copy the output and at the top `file.sh`, we can add the `OUTPUT`

```bash
#!<OUTPUT>
.....
```

- Then we give the file permission by running

```bash
chmod u+x file.sh
```

- To execute the file we can now run the path of the file e.g. `../file.sh`, if it is the valid location of the file will run the file.

4. **Defining Variables:** We define a variable by giving the name of the variable and assigning its value. For example

```bash
NAME=MARK
```

- To get the **_variable_**, We use the dollar sign with the name of the variable. For example:

```bash
echo $NAME
echo Hello $NAME
```

5. We can collect data from the user using the `read` command.

```bash
read VAR_NAME
```

6. **Positional arguments**: A positional argument is an argument that is placed behind the script that is to be ran. It goes from `1` because `0` is for the shell. for example if the script below is ran

```bash
echo Hello $1 $2

# shell command
# <file-url> (e.g ../file.sh) mark carrington

# output
# Hello mark carrington

```

7. **Piping**: They are use to perform multiple commands. This is the pipe command `|`. For example

```bash
echo Hello World! > hello.txt | cat hello.txt
```

8. **Output redirections**: This is used to log outputs of a script to a file. This is usefule for logs. We use the `>` or the `>>` sign for this purpose. For example

```bash
ls -la > ./logs/filelists.txt
```

- If we perform this with the `>` many times, it will be over-written. To just append new logs, we use the `>>` command.

```bash
echo hello world >> ./logs/filelists.txt
```

9. **`<` command**: We use this to feed data to a command script. For example in modifying the word count command

```bash
wc -w ./logs/listlogs.txt
# output: 32 ./logs/listlogs.txt

wc -w < ./logs/listlogs.txt
# output: 32
```
