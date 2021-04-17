//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by paulkim on 4/16/21.
//

@testable import Bullseye
import XCTest

class BullseyeTests: XCTestCase {
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        game = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testScorePositive()  {
        let guess = game.target + 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 105)
    }

    func testScoreNegative()  {
        let guess = game.target - 5
        let score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
}
