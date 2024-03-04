func pascalTriangleComputation(_ rowsOfTriangle: Int) -> [[Int]] {
        // Some initial conditions with rows < 2
        guard rowsOfTriangle > 0 else { return [] }
        guard rowsOfTriangle > 1 else { return [[1]] }
        
        // Recursive computation to optimize the calculations
        var rowTriangle = pascalTriangleComputation(rowsOfTriangle - 1)
        let previousRow = rowTriangle.last!
        let newRow = [1] + zip(previousRow, previousRow.dropFirst()).map { $0 + $1 } + [1]
        rowTriangle.append(newRow)
        
        return rowTriangle
}

func printPascalTriangle(_ triangleNumbers: [[Int]]) {
        for row in triangleNumbers {
                print(row.map { String($0) }.joined(separator: " "))
        }
}

// Test the function
let rowsOfTriangle = 51
let triangleNumbers = pascalTriangleComputation(rowsOfTriangle)
printPascalTriangle(triangleNumbers)
