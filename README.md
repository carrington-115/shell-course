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
