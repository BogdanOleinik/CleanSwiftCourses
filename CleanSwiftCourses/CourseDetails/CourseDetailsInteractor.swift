//
//  CourseDetailsInteractor.swift
//  CleanSwiftCourses
//
//  Created by Олейник Богдан on 06.04.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

protocol CourseDetailsBusinessLogic {
    var isFavorite: Bool { get }
    func provideCourseDetails()
    func setFavoriteStatus()
}

protocol CourseDetailsDataStore {
    var course: Course? { get set }
}

class CourseDetailsInteractor: CourseDetailsBusinessLogic, CourseDetailsDataStore {
    
    var presenter: CourseDetailsPresentationLogic?
    var worker: CourseDetailsWorker?
    var course: Course?
    var isFavorite: Bool = false
    
    func provideCourseDetails() {
        worker = CourseDetailsWorker()
        
        let imageData = worker?.getImage(from: course?.imageUrl)
        isFavorite = worker?.getFavoriteStatus(for: course?.name ?? "") ?? false
        
        let response = CourseDetails.ShowDetails.Response(
            courseName: course?.name,
            numberOfLessons: course?.numberOfLessons,
            numberOfTests: course?.numberOfTests,
            imageData: imageData,
            isFavorite: isFavorite
        )
        presenter?.presentSomething(response: response)
    }
    
    func setFavoriteStatus() {
        isFavorite.toggle()
        worker?.setFavoriteStatus(for: course?.name ?? "", with: isFavorite)
        
        let response = CourseDetails.SetFavoriteStatus.Response(isFavorite: isFavorite)
        presenter?.presentFavoriteStatus(response: response)
    }
}
