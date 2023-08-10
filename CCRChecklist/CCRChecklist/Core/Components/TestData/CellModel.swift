//
//  WeatherData.swift
//  CCRChecklist
//
//  Created by andrew austin on 8/3/23.
//

import Foundation

struct CellOne: Identifiable {
    var id = UUID()
    let build: String
    let value: Double
    
}

let cellOneBuilds: [CellOne] = [
    CellOne(build: "1", value: 99),
    CellOne(build: "2", value: 98),
    CellOne(build: "3", value: 99),
    CellOne(build: "4", value: 96),
    CellOne(build: "5", value: 97),
    CellOne(build: "6", value: 95),
    CellOne(build: "8", value: 98),
    CellOne(build: "9", value: 99),
    CellOne(build: "10", value: 98),
    CellOne(build: "11", value: 99),
    CellOne(build: "12", value: 96),
    CellOne(build: "13", value: 97),
    CellOne(build: "14", value: 95),
    CellOne(build: "15", value: 98),
]

struct CellTwo: Identifiable {
    var id = UUID()
    let build: String
    let value: Double
    
}

let cellTwoBuilds: [CellTwo] = [
    CellTwo(build: "1", value: 99),
    CellTwo(build: "2", value: 98),
    CellTwo(build: "3", value: 99),
    CellTwo(build: "4", value: 96),
    CellTwo(build: "5", value: 97),
    CellTwo(build: "6", value: 95),
    CellTwo(build: "8", value: 98),
    CellTwo(build: "9", value: 99),
    CellTwo(build: "10", value: 98),
    CellTwo(build: "11", value: 99),
    CellTwo(build: "12", value: 96),
    CellTwo(build: "13", value: 97),
    CellTwo(build: "14", value: 95),
    CellTwo(build: "15", value: 97),
]

struct CellThree: Identifiable {
    var id = UUID()
    let build: String
    let value: Double
    
}

let cellThreeBuilds: [CellThree] = [
    CellThree(build: "1", value: 99),
    CellThree(build: "2", value: 98),
    CellThree(build: "3", value: 99),
    CellThree(build: "4", value: 96),
    CellThree(build: "5", value: 97),
    CellThree(build: "6", value: 95),
    CellThree(build: "8", value: 98),
    CellThree(build: "9", value: 99),
    CellThree(build: "10", value: 98),
    CellThree(build: "11", value: 99),
    CellThree(build: "12", value: 96),
    CellThree(build: "13", value: 97),
    CellThree(build: "14", value: 95),
    CellThree(build: "15", value: 95),
]
