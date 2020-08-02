using System;

namespace Nodes
{
    public class Node
    {
        public int Value {get;set;}
        public Node Right {get;set;}
        public Node Left {get;set;}
        public Node(int val)
        {
            Value = val;
        }
    }
}