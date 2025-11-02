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

const newCountObject = {}
surveyResponses.forEach(res => {
    if (newCountObject[res]) {
        newCountObject[res]++
    } else {
        newCountObject[res] = 1
    }

})
console.log(newCountObject)