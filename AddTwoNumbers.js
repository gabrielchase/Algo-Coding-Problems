// https://leetcode.com/problems/add-two-numbers/

/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} l1
 * @param {ListNode} l2
 * @return {ListNode}
 */
appendToNode = (node, val) => {
  // constructor if node is empty
  if (!node) {
    return new ListNode(val)
  }

  let _node = node 

  while (_node.next) {
    _node = _node.next
  }
  
  if (!_node.next) {
    let newNode = new ListNode(val)
    _node.next = newNode
  } 

  return node 
}

addTwoNumbers = (l1, l2) => {
  let answerNode 
  let carry = 0
  let val 
  let sum 

  while(l1 || l2) {
    sum = (l1 && l1.val ? l1.val : 0) + (l2 && l2.val ?  l2.val : 0)
    
    if (carry === 1) {
      sum += 1
      carry = 0
    }
    val = sum % 10 

    answerNode = appendToNode(answerNode, val)

    if (sum >= 10) 
      carry = 1

    l1 = l1 && l1.next ? l1.next : null 
    l2 = l2 && l2.next ? l2.next : null
  }

  if (carry === 1) 
    answerNode = appendToNode(answerNode, 1)

  return answerNode
};
