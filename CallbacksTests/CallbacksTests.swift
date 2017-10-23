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

class AdapterViewPortSpy: AdapterViewPort {
    var updateViewWasCalled = false
    func updateView(with model: String) {
        updateViewWasCalled = true
    }
}
class CallbacksTests: XCTestCase {
    
    var adapter: Adapter!
    var adapterViewPortSpy: AdapterViewPortSpy!
    
    override func setUp() {
        super.setUp()
        adapterViewPortSpy = AdapterViewPortSpy()
        adapter = Adapter(delegate: adapterViewPortSpy)
    }
    
    func testHandleTapEventUpdatesTheDisplay() {
        let _ =  adapter.handleButtonTap(value: "0")
        expect(self.adapterViewPortSpy.updateViewWasCalled).to(beTrue())
    }
    
    func testIncrementByOneComputesValueCorrectly() {
       let result =  adapter.incrementByOne(input: "0")
        expect(result).to(equal("1"))
    }
}
