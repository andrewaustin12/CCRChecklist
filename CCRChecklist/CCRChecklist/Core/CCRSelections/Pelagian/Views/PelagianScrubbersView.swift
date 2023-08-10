//
//  PelagianScrubbers.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianScrubbersView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isScrubberFilledChecked = false
    @State private var timeRemaining = ""
    
    var body: some View {
        VStack {
            
            Text("PELAGIAN CHECKLIST")
                .font(.title)
            HStack{
                Text("Scrubbers")
                    .bold()
            }

            
            Form {
                Section {
                    VStack() {
                        Toggle(isOn: $isScrubberFilledChecked) {
                            Text("Is the scrubber filled?")
                                .fontWeight(.medium)
                        }
                    }
                    
                    HStack() {
                        Text("Time remaining on scrubber in mins")
                            .fontWeight(.medium)
                        Spacer()
                        TextField("Minutes",
                                  value: $timeRemaining,
                                  formatter: NumberFormatter())
                                    .keyboardType(.numberPad)
                                    .frame(width: 80)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                } header: {
                    Text("Steps 5 - 6")
                }

                    
                
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct PelagianScrubbersView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianScrubbersView()
    }
}
