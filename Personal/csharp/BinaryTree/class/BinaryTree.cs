using System;
using Nodes;

public class BinaryTrees
{

    public static void InOrder(Node node)
    {
        if(node == null)
            return;
        
        else
        {
            InOrder(node.Left);
            System.Console.WriteLine(node.Value);
            InOrder(node.Right);
        }
    }
}