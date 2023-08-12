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
            VStack(alignment: .leading) {
                Text("Scrubbers")
                    .font(.title)
                    .bold()
                    .padding(.leading)

                Text("PELAGIAN CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: Double((350/5) * 1))
                    .padding(.leading)
                
                Form {
                    Section {
                        VStack() {
                            Toggle(isOn: $isScrubberFilledChecked) {
                                Text("Is the scrubber filled?")
                            }
                        }
                        
                        HStack() {
                            Text("Time remaining on scrubber in mins")
                                
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
