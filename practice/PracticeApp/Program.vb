Imports System
Module Program
    Sub Main(args As String())
        dim name as string = "John"
        dim x as integer = 10
        Console.WriteLine("Hello " & name)
        Console.WriteLine("x = " & x)

        Console.WriteLine("Enter your input: ")
        dim input = Console.ReadLine()
        Console.WriteLine("You entered: " & input)
    End Sub
End Module
