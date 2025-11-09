class Stack {
    constructor() {
        this.items = []
    }
    //* 0(1)
    add(value) {
        this.items.push(value)
    }
    //* 0(1)
    pop(){
        if (this.isEmpty) {
            return undefined;
        }
       return this.items.pop();
    }
    peek (){
        if (this.isEmpty) {
            return undefined
        }
        return this.items[this.items.length -1]
    }
    print(){
        console.log(this.items)
    }
    isEmpty() {
      return  this.items.length === 0
    }

}

const stack = new Stack();

console.log(stack.isEmpty());
stack.add(10);
stack.add(20);
stack.add(30);
console.log(stack.isEmpty());
console.log(stack.peek())
stack.print()
