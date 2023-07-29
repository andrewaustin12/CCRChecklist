//
//  NotesView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/22/23.
//

import SwiftUI


struct NotesView: View {
    @State private var showNewNoteView = false
    @State var note = ""
    
    var body: some View {

        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 0) {
                
                HStack {
                    Text("Add a new note...")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Button {
                        print("new not added")
                    } label: {
                        Image(systemName: "trash")
                            .resizable()
                            .frame(width: 23, height: 23)
                            .foregroundColor(.white)
                    }

                }
                .padding()
                .padding(.top, 75)
                .background(Color.blue)
                
                Spacer()
            
            }.edgesIgnoringSafeArea(.top)
            
            
            VStack {
                Button {
                    showNewNoteView.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .foregroundColor(.blue)
                        .accentColor(.white)
                        .frame(width: 60, height: 60)
                        .padding()
                }
                .clipShape(Circle())
                .padding()
                .fullScreenCover(isPresented: $showNewNoteView) {
                    NewNoteView()
                }
            }
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
