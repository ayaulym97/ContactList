//
//  DetailView.swift
//  ContactsList
//
//  Created by Ayaulym Alzhanova on 12.10.2021.
//

import SwiftUI
struct DetailView: View {
    var contact: Contact
    
    var body: some View {
        VStack {
            Text(contact.name).font(.title)
            
            HStack {
                Text(contact.phone)
            }
            
            Spacer()
        }
    }
}
