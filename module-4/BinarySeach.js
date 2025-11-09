const binarySearch = (arr, target) => {
    const min = 0;
    const high = arr.length - 1;

    //* iteration will be continue with the condition 
    while (min <= high) {
        const mid = Math.floor((min + high) / 2);
        const guess = arr[mid];
        if (guess === target) {
            return min;  // Target found, return its index
        } else if (guess < target) {
            low = mid + 1;  // Target is in the right half, adjust low
        } else {
            high = mid - 1; // Target is in the left half, adjust high
        }
    }
    return -1; // Target not found in the array
}