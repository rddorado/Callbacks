//
//  CallbacksTests.swift
//  CallbacksTests
//
//  Created by Ronaldo II Dorado on 23/10/17.
//  Copyright © 2017 Ronaldo II Dorado. All rights reserved.
//

import XCTest
import Nimble
@testable import Callbacks

class CallbacksTests: XCTestCase {
    
    var adapter: Adapter!
    
    override func setUp() {
        super.setUp()
        adapter = Adapter()
    }
    
    func testHandleTapEventUpdatesTheDisplay() {
        let _ =  adapter.handleButtonTap(value: "0")
        var updateViewWasCalled = true
        adapter.buttonTapProcessComplete = { viewModel in
            updateViewWasCalled = true
        }
        expect(updateViewWasCalled).to(beTrue())
    }
    
    func testIncrementByOneComputesValueCorrectly() {
       let result =  adapter.incrementByOne(input: "0")
        expect(result).to(equal("1"))
    }
}
