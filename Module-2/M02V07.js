//? input
const surveyResponses = [
    "A",
    "C",
    "B",
    "A",
    "B",
    "B",
    "C",
    "A",
    "B",
    "D",
    "A",
    "C",
    "B",
    "A",
];

// ? onw way 
console.time('oneWay')
const newCountObject = {}
surveyResponses.forEach(res => {
    if (newCountObject[res]) {
        newCountObject[res]++
    } else {
        newCountObject[res] = 1
    }

})
console.log(newCountObject)
console.timeEnd('oneWay')



// ? second way
console.time('second')

const totalCountOfEvery = surveyResponses.reduce((acc, value) => {
    acc[value] ? acc[value]++ : acc[value] = 1
    return acc
}, {})

console.log(totalCountOfEvery)
console.timeEnd('second')
