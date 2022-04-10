//
//  CourseDetailsWorker.swift
//  CleanSwiftCourses
//
//  Created by Олейник Богдан on 06.04.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

class CourseDetailsWorker {
    func getImage(from imageURL: URL?) -> Data? {
        ImageManager.shared.fetchImageData(from: imageURL)
    }
    
    func getFavoriteStatus(for courseName: String) -> Bool {
        DataManager.shared.getFavoriteStatus(for: courseName)
    }
    
    func setFavoriteStatus(for course: String, with status: Bool) {
        DataManager.shared.setFavoriteStatus(for: course, with: status)
    }
}
