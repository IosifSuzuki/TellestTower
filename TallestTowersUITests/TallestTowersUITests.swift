import XCTest

class TallestTowersUITests: XCTestCase {
  var app: XCUIApplication!

  override func setUpWithError() throws {
    try super.setUpWithError()
    
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }

  func testNavigation() {
    let shanghaiTowerPredicate = NSPredicate(format: "label beginswith 'Shanghai Tower'")
    app.tables.buttons.element(matching: shanghaiTowerPredicate).tap()
    app.navigationBars.buttons.element(boundBy: 0).tap()
  }
}
