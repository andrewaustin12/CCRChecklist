//
//  NewNoteView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/29/23.
//

import SwiftUI

struct NewNoteView: View {
    @Environment (\.presentationMode) var presentationMode
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack{
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Spacer()
                
                Button {
                    print("Add")
                } label: {
                    Text("Add")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }

            }
            .padding()
            
            HStack(alignment: .top) {
                TextField("Add a new note...", text: $caption, axis: .vertical)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewNoteView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
