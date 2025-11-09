//* constructor to initialize a new node with data
class Node {
    constructor(value) {
        this.value = value;
        this.next = null
    }

}

const head = new Node(1)

class LinkList {
    constructor() {
        this.head = null;
        this.tail = null;
        this.size = 0;
    }
    append(value) {
        const newNode = new Node(value);
        if (this.head === null) {
            this.head = newNode;
            this.tail = newNode;
        } else {
            this.tail.next = newNode;
            this.tail = newNode;
        }
        this.size++;
    }
    prepend(value) {
        const newNode = new Node(value);
        if (this.head === null) {
            this.head = newNode;
            this.tail = newNode;
        } else {
            newNode.next = this.head;
            this.head = newNode;
        }
        this.size++;
    }
    //* If The insert in the end of list
    insert(idx, value) {
        if (idx < 0 || idx > this.size) {
            console.error('Cannot make it');
            return undefined;
        }
        if (idx === 0) {
            return this.append(value)
        }
        if (idx === this.length) {
            return this.append(value)
        }
        //* if insert in middle
        //* find leadingNode
        const leadingNode = this._traverseToIndex(idx - 1);
        const holdingNode = leadingNode.next
        const newNode = new Node(value);
        leadingNode.next = newNode;
        newNode.next = holdingNode;
        this.size++;
    }
    _traverseToIndex(idx) {
        let count = 0
        let leadingNode = this.head;
        while (count !== idx - 1) {
            leadingNode = leadingNode.next;
            count++
        }
    }
    print() {
        const arr = [];
        let currentNode = this.head;
        while (currentNode !== null) {
            arr.push(currentNode.value);
            currentNode = currentNode.next;
        }
        console.log(arr.join('=>'), '=> null')
    }
}

const linkList = new LinkList()
console.log(linkList)
linkList.append(10)
linkList.append(20)
linkList.append(30)
linkList.append(50)
// console.log(linkList)

linkList.prepend(409)
linkList.insert(3, 100)
linkList.print()