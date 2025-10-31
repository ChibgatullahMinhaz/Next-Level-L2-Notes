const startTime = performance.now();
// for (let i = 0; i <= 5000; i++) {
//     console.log(i)
// }
const endTime = performance.now();
// console.log('This code Took', endTime - startTime, 'ms')



// convert ms to minute
const ms = endTime - startTime;
const howTake = (ms / (60 * 1000));
// console.log('take in minutes', howTake);

const arr = ['apple', 'orange'];
const removeDuplicate = (arr) => {
    const set = new Set(arr);
    const newArr = Array.from(set);
    newArr.push('banana')
    newArr.push('banana')
    return newArr;
}


console.log(removeDuplicate(arr))