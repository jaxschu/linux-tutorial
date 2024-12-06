Imports System
Module Program
    Sub Main(args As String())
        dim name as string = "John"
        dim x as integer = 10
        dim y as double = 20.5
        Console.WriteLine("Hello " & name)
        Console.WriteLine("x = " & x)
        Console.WriteLine("y = " & y)
        Console.WriteLine("Enter your input: ")
        dim input = Console.ReadLine()
        Console.WriteLine("You entered: " & input)

        for i as integer = 0 to 10
            Console.WriteLine(i)
        next
    End Sub
End Module
