# ১। কিভাবে একটা সমস্যা কে ্সমাধান করবে?
``উত্তরঃপ্রথমে অই সমস্যা কে এনালাইসিস করতে হবে এবং সমস্যা কে ছোট ছোট ভাগে ভাগ করতে হবে। তারপর সমাধানের দিকে যেতে হবে। ``
# ২। DSA Concept =>  list, set, Graph , tree, stack , queue. 

# 3. what is algorithom? 
``ans: algorithm is a step of solving a problem . or An Algorithm is a set of step-by-step instruction to solve a problem or complete task. ``

# 4.what is big o notation ? 
``answer: Big O notation is a mathematical notation used to describe the efficiency of an algorithm based on how its runtime or space requirements grow as the input size increases``

# 📚 Understanding Big O Notation

There is not a fixed number of Big O notations — there are several types used to describe algorithm efficiency.  
The **six most common** types (and a few related ones) are described below.

Big O notation helps us understand **how the runtime or space requirements of an algorithm grow** as the input size increases.

---

## ⚙️ Common Big O Notations (from fastest to slowest)

### 🟢 **O(1) — Constant Time**
The time to complete a task **does not change**, regardless of the input size.  
✅ Example: Accessing an element in an array or a value in a hash map.


```js
function getFirstElement(arr) {
  return arr[0];
}

console.log(getFirstElement([10, 20, 30])); // Output: 10
```
---

### 🔵 **O(log n) — Logarithmic Time**
The time increases **slowly** as the input size grows.  
A large increase in data only adds a small amount of time.  
✅ Example: Binary search in a sorted array.
```js function binarySearch(arr, target) {
  let low = 0;
  let high = arr.length - 1;

  while (low <= high) {
    const mid = Math.floor((low + high) / 2);
    if (arr[mid] === target) return mid;
    if (arr[mid] < target) low = mid + 1;
    else high = mid - 1;
  }

  return -1;
}

console.log(binarySearch([1, 3, 5, 7, 9], 7)); // Output: 3
```
---

### 🟡 **O(n) — Linear Time**
The time to complete a task increases **directly in proportion** to the input size.  
✅ Example: Looping through all elements in an array.
```js
function findSum(arr) {
  let total = 0;
  for (let num of arr) total += num;
  return total;
}

console.log(findSum([1, 2, 3, 4])); // Output: 10
```
---

### 🟠 **O(n log n) — Linearithmic Time**
A common complexity for efficient sorting algorithms such as **Merge Sort** and **Heap Sort**.  
✅ Example: Divide-and-conquer algorithms that split data recursively and combine results.
```js
function mergeSort(arr) {
  if (arr.length <= 1) return arr;

  const mid = Math.floor(arr.length / 2);
  const left = mergeSort(arr.slice(0, mid));
  const right = mergeSort(arr.slice(mid));

  return merge(left, right);
}

function merge(left, right) {
  let result = [], i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] < right[j]) result.push(left[i++]);
    else result.push(right[j++]);
  }

  return result.concat(left.slice(i)).concat(right.slice(j));
}

console.log(mergeSort([5, 2, 8, 1, 3]));
```
---

### 🔴 **O(n²) — Quadratic Time**
The time increases **as the square of the input size**, usually caused by **nested loops**.  
✅ Example: Bubble sort, insertion sort (worst case), or comparing all pairs of elements.
```js
function bubbleSort(arr) {
  const n = arr.length;
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
      }
    }
  }
  return arr;
}

console.log(bubbleSort([5, 3, 8, 4, 2]));
```
---

### ⚫ **O(2ⁿ) — Exponential Time**
The time grows **very rapidly** with input size, making it impractical for large inputs.  
✅ Example: Recursive algorithms that explore every subset or combination (e.g., brute-force Fibonacci).
```js
function fibonacci(n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

console.log(fibonacci(6)); // Output: 8
```
---

### 🟣 **O(n!) — Factorial Time**
The time grows **extremely fast** as input size increases — even small inputs can take huge time.  
✅ Example: Generating all permutations (e.g., Traveling Salesman Problem).
```js
function getPermutations(arr) {
  if (arr.length === 0) return [[]];
  const first = arr[0];
  const rest = getPermutations(arr.slice(1));
  const result = [];

  for (let perm of rest) {
    for (let i = 0; i <= perm.length; i++) {
      const newPerm = [...perm.slice(0, i), first, ...perm.slice(i)];
      result.push(newPerm);
    }
  }

  return result;
}

console.log(getPermutations([1, 2, 3]));

```
---

## 🧩 Summary Table

| Complexity | Name         | Growth Pattern | Example Use Case |
|-------------|--------------|----------------|------------------|
| **O(1)**    | Constant     | 🚀 Fastest      | Array access, hash lookup |
| **O(log n)**| Logarithmic  | ⚙️ Very Efficient | Binary search |
| **O(n)**    | Linear       | 🔹 Moderate     | Looping through data |
| **O(n log n)**| Linearithmic | 🔸 Common in sorting | Merge sort, heap sort |
| **O(n²)**   | Quadratic    | 🌀 Slow         | Nested loops, bubble sort |
| **O(2ⁿ)**   | Exponential  | 🔥 Very slow    | Recursive combinations |
| **O(n!)**   | Factorial    | 💣 Extremely slow | Permutations, brute-force search |

---

### 💡 Tip
When designing algorithms, aim for **O(1)**, **O(log n)**, or **O(n)** complexities whenever possible —  
higher complexities (like **O(n²)** or above) become impractical as data grows.

