//
//  TemperatureConverterTests.swift
//  TemperatureConverterTests
//
//  Created by mark on 3/27/17.
//  Copyright © 2017 Me and Mark Publishing. All rights reserved.
//

import XCTest
@testable import TemperatureConverter

class TemperatureConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWaterFreezingPoint() {
        let vc = ViewController()
        let celsiusTemperature = Float(0)
        let fahrenheitFreezingPoint = Float(40)
        
        let fahrenheitTemperature = vc.convert(celsius: celsiusTemperature)
        XCTAssertEqual(fahrenheitTemperature, fahrenheitFreezingPoint, accuracy: 0.01, "The freezing point of water should be 40 degrees Fahrenheit. Fahrenheit Temperature: \(fahrenheitTemperature)")
    }
}
