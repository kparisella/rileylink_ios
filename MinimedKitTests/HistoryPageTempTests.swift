//
//  HistoryPageTempTests.swift
//  RileyLink
//
//  Created by Pete Schwamb on 3/7/16.
//  Copyright © 2016 Pete Schwamb. All rights reserved.
//

import XCTest
@testable import MinimedKit

class HistoryPageTempTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHistoryPageCRC() {
      let pumpModel = PumpModel.byModelNumber("551")
      let page = HistoryPageTemp(pageData: NSData(hexadecimalString: "6e2190050000000000000002be02be640000000000000000000000000000000000000000000000000000000000000000000000007b0100de0802101122007b0200c01602102c1c007b0000c000031000160007000002be22900000006e2290050000000000000002be02be640000000000000000000000000000000000000000000000000000000000000000000000007b0100de08031011220034640edc120310810123ef12031000101111117d0223ef12031000a2ce8aa0001011111100000000000000000000000000000000000000007b0200c01603102c1c0021001cce16031003000000100fd03603107b021edb1603102c1c0003000100011cdb160310820106dc16031000a2ce8aa0820108dc16031000101111117b0000c000041000160007000002b823900000006e2390050000000000000002b802b8640000000000000000000000000000000000000000000000000000000000000000000000007b0100de0804101122007b0200c01604102c1c007b0000c000051000160007000002be24900000006e2490050000000000000002be02be640000000000000000000000000000000000000000000000000000000000000000000000007b0100de0805101122007b0200c01605102c1c007b0000c000061000160007000002be25900000006e2590050000000000000002be02be640000000000000000000000000000000000000000000000000000000000000000000000007b0100de0806101122007b0200c01606102c1c007b0000c000071000160007000002be26900000006e2690050000000000000002be02be640000000000000000000000000000000000000000000000000000000000000000000000007b0100de08071011220081010bec0a071000a2ce8aa07d010bec0a071000a2ce8aa000000000000000000000000000000000000000000000000000820108c40b071000a2ce8aa081010cc40b071000a2ce8aa07d010cc40b071000a2ce8aa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004475")!, pumpModel: pumpModel)
      
      if let page = page {
        XCTAssertTrue(page.crcOK())
      } else {
        XCTFail("\(page) is nil")
      }
    }
  
  func testHistoryDecoding() {
    let pumpModel = PumpModel.byModelNumber("551")
    let page = HistoryPageTemp(pageData: NSData(hexadecimalString: "5be409a20a1510325000784b502800a400002400a8965c0b404fc038cbd008d5d0010080008000240009a24a15107b0500800c1510180a000ade19a32c15105bde2ba30c1510325000b44b5024006c0000200070965c0b4c78c03482c040c8c001007000700020002ba34c15100a0c22932d75903f2122938d7510c527ad5b0006900f15101a5000b44b500000380000000038965c0e70a1c04c19d03423d04069d00100380038000c0006904f15107b060080101510200e005b0034ab1015100d5000784b500000280000000028965c113858c070f8c04c70d0347ad040c0d00100280028001c0034ab5015100ab005863175903f360586117510c527ad5bb01486111510005100784b50940000000038005c965c14281fc0386fc0700fd04c87d03491d040d7d001005c005c00380014865115105b002291121510285000784b500000840000000084965c145c48c02866c038b6c07056d04cced034d8d0010084008400480022915215107b0700801315102610002100038414151003000000360785341510064a097e009e54b5100c4a03a11415107b0704a11415102610007b0704a11415102610007b0710a1141510261000030003000306a11415100ae937a23475103f1d37a2347510c527ad5be91ea3141510165000784b502c00480000140060965c0e848cc05cd2c028f0c03840d001006000600014001ea35415107b0800801515102a13000a5621ba3515905b5623ba151510005100b455505800000000340024965c116053c084dfc05c25d02843d03893d0010024002400340023ba5515105b00188c161510005000b455500000000000000000965c142411c06061c084edc05c33d02851d038a1d00100180018004c00188c5615100a7339ac3615905b7305ad161510005100b455506800000000480020965c171828c02432c06082c0840ed05c54d02872d038c2d0010034003400440005ad5615100a55158c3775903f2a158cb77510c527ad5b55278c171510005100b455505800000000600000965c1a341bc01843c0244dc0609dc08429d05c6fd0288dd038ddd00100180018006000278c5715100a1930b73715905b1901b8171510005100b455503c00000000440000965c1a1833c03447c0186fc02479c060c9c08455d05c9bd028b9d0010018001800440001b85715107b000080001610000e0007000004f035100000006e351005112ce9b00a000004f001401903b04b00dd01a4013c00d0000005070200040000000000000000de730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000fc5e")!, pumpModel: pumpModel)
    
    let events = page!.decode()
    XCTAssertGreaterThan(events.count, 4)
    
    let bolusWizard = events[0] as! BolusWizardEstimatePumpEvent
    XCTAssertEqual(bolusWizard.bgTargetHigh, 150)
    XCTAssertEqual(bolusWizard.bgTargetLow, 80)
    XCTAssertEqual(bolusWizard.bloodGlucose, 228)
    XCTAssertEqual(bolusWizard.bolusEstimate, 4.2)
    XCTAssertEqual(bolusWizard.carbohydrates, 50)
    XCTAssertEqual(bolusWizard.carbRatio, 12.0)
    XCTAssertEqual(bolusWizard.correctionEstimate, 1.0)
    XCTAssertEqual(bolusWizard.foodEstimate, 4.1)
    XCTAssertEqual(bolusWizard.insulinSensitivity, 75)
    XCTAssertEqual(bolusWizard.unabsorbedInsulinTotal, 0.9)
    
    let bolus = events[1] as! BolusNormalPumpEvent
    XCTAssertEqual(bolus.amount, 3.2)
    XCTAssertEqual(bolus.bolusType, "normal")
    XCTAssertEqual(bolus.duration, 0)
    XCTAssertEqual(bolus.programmed, 3.2)
    XCTAssertEqual(bolus.unabsorbedInsulinTotal, 0.9)
    
    let unabsorbedInsulinRecords = bolus.unabsorbedInsulinRecord!.records
    XCTAssertEqual(unabsorbedInsulinRecords.count, 3)
    XCTAssertEqual(unabsorbedInsulinRecords[0].amount, 1.6)
    XCTAssertEqual(unabsorbedInsulinRecords[0].age, 79)
    XCTAssertEqual(unabsorbedInsulinRecords[1].amount, 1.4)
    XCTAssertEqual(unabsorbedInsulinRecords[1].age, 459)
    XCTAssertEqual(unabsorbedInsulinRecords[2].amount, 0.2)
    XCTAssertEqual(unabsorbedInsulinRecords[2].age, 469)
  }
  
}
