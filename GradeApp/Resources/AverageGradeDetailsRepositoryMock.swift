//
//  AverageGradeDetailsRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import Foundation

class AverageDetailsRepositoryMock {
    
    static let shared = AverageDetailsRepositoryMock()
    
    var averages: [AvarageDetails] = []
    
    func getAvarageGradeDetails(completion: @escaping ([AvarageDetails]) -> ()) {
        completion(averages)
    }
    
    func addAverage(average: AvarageDetails) {
        averages.append(average)
    }
}
