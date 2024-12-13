#!/bin/bash

# Case selection
mycase=3
case $mycase in
    1) echo "you choose bash";;
    2) echo "this is jason";;
    3) echo "hello";;
    4) exit
esac

# Arithmetic operation
A=10
((B=A*A+10))

# Sort and diff files
sort -u file1 > sorted_file1
sort -u file2 > sorted_file2
diff sorted_file1 sorted_file2

# Print message and write to file
echo "Hello, world!" | tee /tmp/hello.txt

setAge() {
    local age=20
    echo "Local Age is $age"
}

# Function definition
function File {
    filename="sample.md"

    # Check if file exists
    if [ -e $filename ]; then
        echo "File exists"
    else
        echo "File does not exist"
    fi

    # Check if file is regular
    if [ -f $filename ]; then
        echo "File is a regular file"
    else
        echo "This is not a regular file"
        touch $filename
    fi

    # Check file permissions
    if [ -r $filename ]; then
        echo "File has read permission"
    else
        echo "File does not have read permission"
    fi

    # Check if directory exists
    dir_name="~/\u6587\u6863/gitrepo/linux-tutorial/practice"
    if [ -d $dir_name ]; then
        echo "Directory exists"
    else
        echo "Directory does not exist"
    fi

    # Trap signal
    trap 'echo "You hit Ctrl-C!"' INT

    # List signals
    kill -l

    # Array operations
    my_array=(apple banana orange)
    echo ${my_array[2]}
    echo ${my_array[@]}
    echo "B=$B"

    # Names array and loop
    names=(Jason, Joe, John, Jack)
    for name in ${names[@]}; do
        echo "Hello $name"
    done

    echo "Number of names is ${#names[@]}"
    echo ${names[0]}
    echo ${names[@]}

    # Argument count
    echo "Number of arguments is $#"

    # While loop
    count=5
    while [ $count -gt 0 ]; do
        echo "count is $count"
        ((count--))
    done

    echo "Number of arguments is $#"
}

# Main script logic
if [ $# -eq 2 ]; then
    File "$@"
    echo "File $*"
    exit 0
fi
