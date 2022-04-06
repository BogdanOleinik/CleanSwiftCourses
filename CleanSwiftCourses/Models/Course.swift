//
//  Course.swift
//  CleanSwiftCourses
//
//  Created by Олейник Богдан on 06.04.2022.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
