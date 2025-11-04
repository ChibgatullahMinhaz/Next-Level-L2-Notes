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
        this.items.pop();

    }
    peek (){
        if (this.isEmpty) {
            return undefined
        }
        return this.items.length -1
    }
    print(){
        console.log(this.items)
    }
    isEmpty() {
        this.items.length === 0
    }

}

const stackOperation = new Stack();

console.log(stackOperation.isEmpty());
stackOperation.add(10);
stackOperation.add(20);
stackOperation.add(30);

stackOperation.print()