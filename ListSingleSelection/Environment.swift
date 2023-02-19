//
//  Environment.swift
//  ListSingleSelection
//
//  Created by Satyadev Chauhan on 19/02/23.
//

import Foundation

enum Environment: String, Equatable, Identifiable, CaseIterable {
    
    case dev
    case qa
    case prod
    
    var id: Self {
        return self
    }
    
    var title: String {
        switch self {
        case .dev: return "DEV"
        case .qa: return "QA"
        case .prod: return "PROD"
        }
    }
}
