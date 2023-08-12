//
//  PressureTestAndPreBreatheView.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/27/23.
//

import SwiftUI

struct PelagianPressureTestAndPreBreatheView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var showSheet: Bool = false
    @State private var isPosTestChecked = false
    @State private var isNegTestChecked = false
    @State private var isPrebreatheChecked = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Pressure Test and Pre-breathe")
                    .font(.title)
                    .bold()
                    .padding(.leading)

                Text("PELAGIAN CHECKLIST")
                    .bold()
                    .padding(.leading)
                
                ProgressBarView(progress: Double((350/5) * 4))
                    .padding(.leading)
                
                Form {
                    Section {
                        VStack {
                            Toggle(isOn: $isPosTestChecked) {
                                Text("Positive pressure test satisfactory?")
                            }
                        }
                        VStack {
                            Toggle(isOn: $isNegTestChecked) {
                                Text("Negative pressure test satisfactory?")
                            }
                        }
                        VStack {
                            Toggle(isOn: $isPrebreatheChecked) {
                                Text("10 minute pre-breathe done?")
                            }
                        }
                        Button {
                            showSheet.toggle()
                        } label: {
                            Text("Timer")
                                .font(.title)
                                .frame(width: 300, height: 44)
                                .background(.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .sheet(isPresented: $showSheet) {
                            CountdownTimerView()
                        }
                        
                    } header: {
                        Text("Steps 27 - 29")
                    }
                }
            }
            
            
            
            HStack {
                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                .modifier(SmallSecondaryButtonModifier())
                
                NavigationLink("Finish", destination: {
                    PelagianSummaryView()
                })
                .modifier(SmallPrimaryButtonModifier())
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

struct PelagainPressureTestAndPreBreatheView_Previews: PreviewProvider {
    static var previews: some View {
        PelagianPressureTestAndPreBreatheView()
    }
}
