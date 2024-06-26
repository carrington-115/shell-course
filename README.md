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

- **`<<` command**: This is a great way to supply multiple lines of text to a command.

```bash
cat << EOF
Hello world!
How are you doing
Mark?
EOF

# multiline operators
```

- **`<<<` command**: This is used to supply single strings to a command.

```bash
wc -w <<< 'Hello there Mark Carrington'
```

10. **Test operators**: They are used to verify the validity of a script and return `true` or `false`. `true` is denoted as `0` (zero) and `false` as `1` (one).

```bash
[ hello = hello ]
echo $?

# $? is used to return the output of the last command (execos)

```

11. **Conditional statements \***(if / elif / else)**\***: With the shell `if / elif / else` syntax, we can run conditional scripts in bash. A great way to test conditional scritpts is by using position arguments. For example

```bash
if [ ${1,,} = mark ]; then
    echo "I know you Mark"
elif [ ${1,,} = help ]; then
    echo "How can I help?"
else
    echo "Why are you here?"
fi
```

- The `${1,,}` is to enter conditional arguments that ignore the case type. To run the script

```bash
# give permissions
chmod u+x ../file.sh

# run
../file.sh mark

#output: I know you Mark
```

12. **Case Statements**: They are used when dealing with multiple conditions

```bash
case ${1,,} in
    mark | administrator)
        echo "I know you"
        ;;
    help)
        echo "What do you want to know"
        ;;
    *)
        echo "I do not know you"
        ;;

esac

# To run the code: ../file.sh mark
# outut: I know you
```

13. **Arrays**: We can initialise arrays in shell and access the values using the method below:

```bash
NUMBERS=(1 2 3 4 5)

# print the whole array
echo ${NUMBERS[@]}

# PRINT THE VALUE 3
echo ${NUMBERS[2]}
```

14. **For Loops**: We can use for loop to loop over the array data and perform operations. For example

```bash

# example: 1
NUMBERS=(1 2 3 4 5)
for items in ${NUMBERS[@]}; do echo $items; done

# example: 2
NAMES=(MARK FRU CARRINGTON CHEI)
for name in ${NAMES[@]}; do echo name | wc -c; done

```

15. **Functions**: It is used to order code in blocks. For example

```bash
# for example: function to print a name
printname(){
    FIRSTNAME=FRU MARK
    LASTNAME=CARRINGTON CHEI
    echo $FIRSTNAME $LASTNAME
}

printname
```

- In shell, when we define variables in the functions, they will be available in the whole. This can cause some problems in larger scripts. We have to make sure that all function variables are local within the function. To solve this problem, we just add the `local` keyword before defining the variable

```bash
name=mark
echo name
printname(){
    local name=carrington
    echo name

}

printname
echo name

```

- We can pass positional arguments to functions

```bash
printname(){
    echo $1
}

printname mark
```

16. Exit codes:

```bash
showname(){
    echo hello $1
    if [ ${1,,} = mark ]; then
        return 0
    else
        return 1
    fi
}

showname $1
if [ $? = 1 ] then
    echo "This is an unknown user"
fi
```

17. **AWK**: it is one of the most of the useful tool in bash scripting. It is used to filter parts of a file in order to extract content in the file. To use **_awk_**, we can filter a file or we can filter parts of a command output by piping that output in awk. We can use awk on any file format to get specific content with positional arguments.

```bash
# extracting specific content
awk '{print $1}' file.txt # this extracts the word on first position
awk -F, '{print $1}' file.csv # to extract data from csv file

echo "Hello there, how are you" | awk '{print $3}' # output: how
echo "Hello there: Mark Carrington" | awk -F: '{print $2}' # output: Mark Carrington
echo "Hello there: Mark Carrington" | awk -F: '{print $2}' | cut -c2 # output: M
echo "Hello there: Mark Carrington" | awk -F: '{print $2}' | cut -c2- # output: ark Carrington


```

18. **SED**: They are used to modify values in text file using regular expressions

- We can use SED in modes, it can be to replace or substitute content in a file
- While performing operations with sed, we can also keep an original copy of the file we are dealing with by performing some operations

```bash
# substituting mode
sed 's/hi/hello/g' file.txt # s/hi/hello/g - means s for 'substitute' the word 'hi' with 'hello' and g means globally in file.txt
sed -i.ORIGINAL 's/hi/hello/g' file.txt
```
