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
            
            HStack {
                Text("Scrubbers")
                    .font(.title)
                    .bold()
            }
            
            ScrollView {
                VStack() {
                    Toggle(isOn: $isChecked) {
                        Text("Is the scrubber filled?")
                            .fontWeight(.medium)
                    }
                    .padding()
                    .frame(width: 360, height: 80)
                    .background(Color(.systemGray6))
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
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            }
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Next") {
                    PelagianAssemblyView()
                }
                .modifier(SmallPrimaryButtonModifier())
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
