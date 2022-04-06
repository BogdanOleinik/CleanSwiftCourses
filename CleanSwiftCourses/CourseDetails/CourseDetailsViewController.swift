//
//  CourseDetailsViewController.swift
//  CleanSwiftCourses
//
//  Created by Олейник Богдан on 06.04.2022.
//

import UIKit

protocol CourseDetailsDisplayLogic: AnyObject {
    func displayCourseDetails(viewModel: CourseDetails.ShowDetails.ViewModel)
}

class CourseDetailsViewController: UIViewController {
    
    @IBOutlet private weak var courseNameLabel: UILabel!
    @IBOutlet private weak var numberOfLessonsLabel: UILabel!
    @IBOutlet private weak var numberOfTestsLabel: UILabel!
    @IBOutlet private weak var courseImage: UIImageView!
    @IBOutlet private weak var favoriteButton: UIButton!

    var interactor = CourseDetailsBusinessLogic?
    var router: (NSObjectProtocol & CourseDetailsRoutingLogic & CourseDetailsDataPassing)?
    
    //MARK: - Object lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passRequest()
    }
    
    @IBAction func toggleFavorite(_ sender: UIButton) {

    }
    
    private func passRequest() {
        let request = CourseDetails.ShowDetails.Request()
        interactor?.provideCourseDetails(request: request)
    }
}

extension CourseDetailsViewController: CourseDetailsDisplayLogic {
    func displayCourseDetails(viewModel: CourseDetails.ShowDetails.ViewModel) {
        
    }
}
