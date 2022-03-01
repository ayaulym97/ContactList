//
//  contactModel.swift
//  ContactsList
//
//  Created by Ayaulym Alzhanova on 17.09.2021.
//


import SwiftUI

struct Contact: Codable, Identifiable {
    let id = UUID()
    let username: String
    let name: String
    let email:String
    var phone:String
}
