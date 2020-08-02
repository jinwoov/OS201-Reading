using System;
using BinarySearchTree;

namespace BinaryTree
{
    class Program
    {
        static void Main(string[] args)
        {

            BST bst = new BST();

            bst.Insert(bst.Root, 5);
            bst.Insert(bst.Root, 4);
            bst.Insert(bst.Root, 3);
            bst.Insert(bst.Root, 2);
            bst.Insert(bst.Root, 10);
            bst.Insert(bst.Root, 8);
            bst.Insert(bst.Root, 11);



            BinaryTrees.InOrder(bst.Root);
        }
    }
}
