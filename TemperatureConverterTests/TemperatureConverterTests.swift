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
        let fahrenheitFreezingPoint = Float(32)
        
        let fahrenheitTemperature = vc.convert(celsius: celsiusTemperature)
        XCTAssertEqual(fahrenheitTemperature, fahrenheitFreezingPoint, accuracy: 0.01, "The freezing point of water should be 32 degrees Fahrenheit. Fahrenheit Temperature: \(fahrenheitTemperature)")
    }
    
    func testWaterBoilingPoint() {
        let vc = ViewController()
        let celsiusTemperature = Float(100)
        let fahrenheitBoilingPoint = Float(212)
        
        let fahrenheitTemperature = vc.convert(celsius: celsiusTemperature)
        XCTAssertEqual(fahrenheitTemperature, fahrenheitBoilingPoint, accuracy: 0.01, "The boiling point of water should be 212 degrees Fahrenheit. Fahrenheit Temperature: \(fahrenheitTemperature)")
    }
    
    func testNegativeCelsiusTemperature() {
        let vc = ViewController()
        let celsiusTemperature = Float(-10)
        let fahrenheitExpected = Float(14)
        
        let fahrenheitTemperature = vc.convert(celsius: celsiusTemperature)
        XCTAssertEqual(fahrenheitTemperature, fahrenheitExpected, accuracy: 0.01, "-10 degrees Celsius should equal 14 degrees Fahrenheit. Fahrenheit Temperature: \(fahrenheitTemperature)")
    }
    
    func testNonIntegerFahrenheitConversion() {
        let vc = ViewController()
        let celsiusTemperature = Float(3)
        let fahrenheitExpected = Float(37.4)
        
        let fahrenheitTemperature = vc.convert(celsius: celsiusTemperature)
        XCTAssertEqual(fahrenheitTemperature, fahrenheitExpected, accuracy: 0.01, "3 degrees Celsius should equal 37.4 degrees Fahrenheit. Fahrenheit Temperature: \(fahrenheitTemperature)")
    }
}
