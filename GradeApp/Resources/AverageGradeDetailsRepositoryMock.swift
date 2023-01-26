//
//  AverageGradeDetailsRepositoryMock.swift
//  GradeApp
//
//  Created by Lucas Parolin on 25/01/23.
//

import Foundation

class AverageGradeDetailsRepositoryMock {
    
    static let shared = AverageGradeDetailsRepositoryMock()
    
    var averages: [AvarageGradeDetails] = []
    
    func getAvarageGradeDetails(completion: @escaping ([AvarageGradeDetails]) -> ()) {
        completion(averages)
    }
    
    func addAverage(average: AvarageGradeDetails) {
        averages.append(average)
    }
}
