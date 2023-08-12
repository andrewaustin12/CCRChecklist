//
//  SwiftUIView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianTanksAnalyzedView: View {
    @Environment (\.presentationMode) var presentationMode

    @State var o2 = ""
    @State var diluent = ""
    @State var bailout = ""
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading) {
                Text("Analyzed Tanks")
                    .font(.title)
                    .bold()
                    .padding(.leading)

                Text("PELAGIAN CHECKLIST")
                    .bold()
                    .padding(.leading)
                    
                
                ProgressBarView(progress: Double((350/5) * 0.1))
                    .padding(.leading)
                
                
                
                Form {
                    Section {
                        HStack() {
                            Text("Enter 02")
                            Spacer()
                            TextField("PP02",
                                      value: $o2,
                                      formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        
                        HStack() {
                            Text("Diluent")
                            Spacer()
                            TextField("PP02",
                                      value: $diluent,
                                      formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        HStack() {
                            Text("Bailout Gas")
                            Spacer()
                            TextField("PP02",
                                      value: $bailout,
                                      formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .frame(width: 80)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                    } header: {
                        Text("Steps 1 -4 ")
                    }

                }
            }
                
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Next") {
                    PelagianScrubbersView()
                }
                .modifier(SmallPrimaryButtonModifier())
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

struct PelagianTanksAnalyzedView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianTanksAnalyzedView()
    }
}
