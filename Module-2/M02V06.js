//* Generate a lookup table

//? Input
const postsArray = [
    { id: "p-101", title: "Intro to SQL", author: "Alex" },
    { id: "p-102", title: "Data Structures in JS", author: "Beth" },
    { id: "p-103", title: "Understanding Reduce", author: "Chris" },
    { id: "p-104", title: "CSS Grid Tricks", author: "Alex" },
];
console.time('myCode')
const newObject = {}
postsArray.forEach((key, value) => {
    // const key = item.id ? item.id : 'root';
    if (!newObject[key]) newObject[key] = value
    // newObject[key].id = item.id;
    // newObject[key].title = item.title;
    // newObject[key].author = item.author;

})
console.log(newObject)
console.timeEnd('myCode')

console.time('courser')
const lookupTable = postsArray.reduce((table, post) => {
    console.log('post', post)
    console.log('table', post)
    table[post.id] = post;
    return table;
}, {});

for (let post in lookupTable) {
    console.log(lookupTable[post]);
}
console.timeEnd('courser')
//? Output
// {
//   "p-101": { "id": "p-101", "title": "Intro to SQL", "author": "Alex" },
//   "p-102": { "id": "p-102", "title": "Data Structures in JS", "author": "Beth" },
//   "p-103": { "id": "p-103", "title": "Understanding Reduce", "author": "Chris" },
//   "p-104": { "id": "p-104", "title": "CSS Grid Tricks", "author": "Alex" }
// }