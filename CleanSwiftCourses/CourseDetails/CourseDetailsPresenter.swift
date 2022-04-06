//
//  CourseDetailsPresenter.swift
//  CleanSwiftCourses
//
//  Created by Олейник Богдан on 06.04.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

protocol CourseDetailsPresentationLogic {
    func presentSomething(response: CourseDetails.Something.Response)
}

class CourseDetailsPresenter: CourseDetailsPresentationLogic {
    
    weak var viewController: CourseDetailsDisplayLogic?
    
    func presentSomething(response: CourseDetails.Something.Response) {
        let viewModel = CourseDetails.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}