//
//  AverageGradeDetailsRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import Foundation

class AverageDetailsRepositoryMock {
    
    static let shared = AverageDetailsRepositoryMock()
    
    var averages: [AverageDetails] = []
    
    func getAvarageGradeDetails(completion: @escaping ([AverageDetails]) -> ()) {
        completion(averages)
    }
    
    func addAverage(average: AverageDetails) {
        averages.append(average)
    }
}
