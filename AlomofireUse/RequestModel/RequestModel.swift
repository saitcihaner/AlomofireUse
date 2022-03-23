//
//  RequestModel.swift
//  AlomofireUse
//
//  Created by Sait Cihaner on 23.03.2022.
//

import Foundation

struct Request: Codable {
    let name, email: String?
    let position : Int?
    let selected_periods : [Int]
    let cv, notes: String?

    enum CodingKeys: String, CodingKey {
        case name, email, position
        case selected_periods
        case cv, notes
    }
}



struct Response: Codable {
    let id, name, email: String?
    let position: Position?
    let selectedPeriods: [SelectedPeriod]?
    let cv, notes: String?

    enum CodingKeys: String, CodingKey {
        case id, name, email, position
        case selectedPeriods = "selected_periods"
        case cv, notes
    }
}

// MARK: - Position
struct Position: Codable {
    let id: Int?
    let name: String?
}

// MARK: - SelectedPeriod
struct SelectedPeriod: Codable {
    let id: Int?
    let name, startDate, endDate, lastApplicationDate: String?
    let location: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case startDate = "start_date"
        case endDate = "end_date"
        case lastApplicationDate = "last_application_date"
        case location
    }
}
