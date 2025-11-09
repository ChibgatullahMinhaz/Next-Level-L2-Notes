//* cache 


const cacheData = new Map();

const expensiveTask = (id) => {
    console.log('Run Expensive Task for this id: ', id);
    return {
        id: id,
        data: `Show some data for id:${id}`,
        timeStamp: new Date().getTime()
    }
}

const getData = (id) => {
    //* check data is already exist or not into cache 
    if (cacheData.has(id)) {
        console.log('cache hit for this id :', id);
        return cacheData.get(id)
    }

    //* if not exist 
    console.log('cache miss')
    const data = expensiveTask(id);
    cacheData.set(id, data);
    return data;

}

console.log(cacheData)
console.log(getData(1235))
console.log(getData(1236))
console.log(cacheData)
