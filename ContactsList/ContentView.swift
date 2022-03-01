//
//  ContentView.swift
//  ContactsList
//
//  Created by Ayaulym Alzhanova on 17.09.2021.
//

import SwiftUI
struct ContactRow: View {
    var contact: Contact
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(contact.username)
                    .font(.headline)
                Text(contact.email)
                    .font(.subheadline)
            }
        }

    }
}
struct ContentView: View {
    
    @State var contacts: [Contact] = []
    var body: some View {
           NavigationView {
               List(contacts) {
                contact in
                NavigationLink(destination: DetailView(contact: contact)) {
                    ContactRow(contact: contact)
                }
               } .navigationBarTitle("Hiking Trails")
               .onAppear {
                           apiCall().getUsers { (contacts) in
                               self.contacts = contacts
                           }}
            
           }
    }
    
//    var body: some View {
//
//        List(contacts) { contact in
//            VStack(alignment: .leading) {
//                Text(contact.username)
//                    .font(.headline)
//                Text(contact.email)
//                    .font(.subheadline)
//                      }
//
//
//
//
//               } .onAppear {
//            apiCall().getUsers { (contacts) in
//                self.contacts = contacts
//            }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
