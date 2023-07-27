//
//  SidewinderModel.swift
//  CCRChecklist
//
//  Created by andrew austin on 7/25/23.
//

import Foundation

struct SidewinderChecklist: Identifiable, Hashable, Codable {
    let id: String
    let step1: String
    let step2: String
    let step3: String
    let step4: String
    let step5: String
    
}

extension SidewinderChecklist {
    static var COMPUTER: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Turn on Computer. Check voltage of computer battery ( > 1.25V )",
            step2: "Note millivolts from each cell at ambient air pressure (.21) and fill columns 1 & 2 of linearity sheet",
            step3: "",
            step4: "",
            step5: ""
        )
    ]
    
    static var SCRUBBER: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Fill and pack each canister with absorbent to inner line",
            step2: "Inspect, clean and lubricate Canister O-Rings as needed",
            step3: "Place Screens in cannisters",
            step4: "Attach each cannister head ensuring proper alignment. Make sure they are on correct cannisters",
            step5: "Reset stacktime"
        )
    ]
    
    static var COUNTERLUNG: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Place counter lung in harness ensuring waistbelt and wing are in proper positions.",
            step2: "Inspect, clean and lubricate counter lung O-rings as needed",
            step3: "Attach counter lung to cannister ensuring the clips are set properly",
            step4: "Attach cannisters to harness",
            step5: ""
        )
    ]
    
    static var LOOP: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Inpect Mouth Piece for holes and tears",
            step2: "Preform Mushroom Valve Check",
            step3: "Inspect and lube O-Rings",
            step4: "Install loop to towers (Verify EXHALE goes to the RIGHT tower)",
            step5: "Verify bayonets are closed"
        )
    ]
    
    static var NEGATIVECHECK: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Preform Negative check on air",
            step2: "The Millivolts should decend and hold. Pick a cell and record millivolt. Wait 5 minutes and compare starting millivolts to new value",
            step3: "",
            step4: "",
            step5: ""
        )
    ]
    
    static var OXYGEN: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Analyze Oxygen tank",
            step2: "Pressure check Oxygen tank",
            step3: "Mount 02, Properly Route hose and 1st stage. LEAVE TANK OFF.",
            step4: "",
            step5: ""
        )
    ]
    
    static var FLUSH: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Open mouthpiece slightly, flush with O2. Monitor cells for smooth and even increases",
            step2: "Record millivolts from each of the cells at 1.00 and fill lineartiy chart",
            step3: "INSERT LINEARITY CHART HERE",
            step4: "Calibrate computer if necessary (make sure loop is at ambient pressure)",
            step5: ""
        )
    ]
    
    static var POSITIVECHECK: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Open mouthpiece slightly, flush with O2. Monitor cells for smooth and even increases",
            step2: "Record millivolts from each of the cells at ...... and fill lineartiy chart",
            step3: "INSERT LINEARITY CHART HERE",
            step4: "Calibrate computer if necessary (make sure loop is at ambient pressure)",
            step5: ""
        )
    ]
    
    static var TRANSPORT: [SidewinderChecklist] = [
        .init(
            id: NSUUID().uuidString,
            step1: "Ensure the DSV is closed",
            step2: "Ensure O2 tank is closed",
            step3: "Ensure Computer is cliped and secured",
            step4: "(Optional) If O2 tank is detached for transport ensure O2 1st stage is secured.",
            step5: ""
        )
    ]
}
