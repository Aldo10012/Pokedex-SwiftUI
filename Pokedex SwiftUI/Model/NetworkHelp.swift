//
//  NetworkHelp.swift
//  Pokedex SwiftUI
//
//  Created by Alberto Dominguez on 9/13/21.
//

import Foundation

enum Result<T> {
   case success(T)
   case failure(Error)
}

enum EndPointError: Error {
    case couldNotParse
    case noData
}
