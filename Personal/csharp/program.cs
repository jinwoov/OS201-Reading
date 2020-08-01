using System;

public class program
{
    public static void Main(string[] args)
    {
        LinkedList ll =new LinkedList();

        ll.Insert(5);
        ll.Insert(11);
        ll.Insert(12);
        ll.InsertBeforeHead(101);
        ll.Print();
    }

    public class LinkedList
    {
        public Node Head{get;set;}

        public void Insert(int value)
        {
            Node node = new Node(value);
            if(Head == null)
            {
                Head = node;
                return;
            }
            else
            {
                Node current = Head;
                while(current.Next != null)
                {
                    current = current.Next;
                }

                current.Next = node;
            }
        }
        
        public void InsertBeforeHead(int value)
        {
            Node node = new Node(value);
            if(Head == null)
                Head = node;
            else
            {
                node.Next = Head;
                Head = node;
            }
        }

        public void Print()
        {
            if(Head == null)
                return;

            var current = Head;
            while(current != null)
            {
                Console.WriteLine(current.Value);
                current = current.Next;
            }
        }
    }
    

    public class Node
    {
        public int Value {get;set;}
        public Node Next {get;set;}

        public Node(int value)
        {
            Value = value;
            Next = null;
        }

    }
}