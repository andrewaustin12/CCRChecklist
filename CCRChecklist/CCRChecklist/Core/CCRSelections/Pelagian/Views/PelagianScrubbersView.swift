//
//  PelagianScrubbers.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianScrubbersView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isChecked = false
    @State private var timeRemaining = ""
    
    var body: some View {
        VStack {
            
//            HStack {
//                TabHeaderView(title1: "Pelagian Checklist")
//                    .ignoresSafeArea()
//            }
            
            ScrollView {
                VStack() {
                    Toggle(isOn: $isChecked) {
                        Text("Is the scrubber filled?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
                }
                
                HStack() {
                    Text("Time remaining on scrubber in mins")
                        .fontWeight(.medium)
                    TextField("PP02",
                              value: $timeRemaining,
                              formatter: NumberFormatter())
                                .keyboardType(.numberPad)
                                .frame(width: 80)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemFill))
                    .cornerRadius(8)
            }
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 180, height: 44)
                .background(Color(.systemGray))
                .cornerRadius(8)
                
                NavigationLink("Next") {
                    PelagianAssemblyView()
                }
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .frame(width: 180, height: 44)
                .background(Color(.systemBlue))
                .cornerRadius(8)
            }
            .navigationTitle("Scrubbers")
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.automatic)
            .padding()
        }
    }
}

struct PelagianScrubbersView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianScrubbersView()
    }
}
