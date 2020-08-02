using System;
using Nodes;

namespace BinarySearchTree
{
    public class BST
    {
        public Node Root{get;set;}

        public Node Insert(Node root, int value)
        {
            if(Root == null)
            {
                Node node = new Node(value);
                Root = node;
                return node;
            }
            else
            {
                if(root == null)
                {
                    root = new Node(value);
                    return root;
                }
                
                if(root.Value > value)
                    root.Left = Insert(root.Left, value);
                else
                    root.Right = Insert(root.Right, value);
                
                return root;
            }


        }
    }
}