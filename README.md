# Level 2 hwllo 


`There is not a fixed number of Big O notations; there are six common types, with others also used. The most common include constant (\(O(1)\)), logarithmic (\(O(\log n)\)), linear (\(O(n)\)), and polynomial (\(O(n^{2})\)), along with others like linearithmic (\(O(n\log n)\)), exponential (\(O(2^{n})\)), and factorial (\(O(n!)\)). `




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