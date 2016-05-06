import XCTest
import BitsAndBobs

class BitsAndBobsTests: XCTestCase {
    
    var today: NSDate!
    var fixedDate: NSDate!
    
    override func setUp() {
        today = NSDate()
        let dateComponents = NSDateComponents()
        dateComponents.month = 11
        dateComponents.day = 11
        dateComponents.year = 2011
        dateComponents.hour = 11
        dateComponents.minute = 11
        dateComponents.second = 11
        dateComponents.calendar = NSCalendar.currentCalendar()
        fixedDate = dateComponents.date
    }
    
    func testSecondsBetween() {
        let testDate = today!.plusMinutes(1)
        let secsBetween = NSDate.secondsBetween(date1: today!, date2: testDate)
        XCTAssert(secsBetween == 60, "There should be 60 seconds between today and test date")
    }
    
    func testMinutesBetween() {
        let testDate = today!.plusHours(2)
        let minBetween = NSDate.minutesBetween(date1: today!, date2: testDate)
        XCTAssert(minBetween == 120, "There should be 120 minutes between today and test date")
    }
    
    func testHoursBetween() {
        let testDate = today!.plusDays(1)
        let hoursBetween = NSDate.hoursBetween(date1: today!, date2: testDate)
        XCTAssert(hoursBetween == 24, "There should be 24 hours between today and test date")
    }
    
    func testDaysBetween() {
        let testDate = today!.plusWeeks(1)
        let daysBetween = NSDate.daysBetween(date1: today!, date2: testDate)
        XCTAssert(daysBetween == 7, "There should be 7 days between today and test date")
    }
    
    func testWeeksBetween() {
        let testDate = today!.plusDays(16)
        let weeksBetween = NSDate.weeksBetween(date1: today!, date2: testDate)
        XCTAssert(weeksBetween == 2, "There should be 2 weeks between today and test date")
    }
    
    func testMonthsBetween() {
        let testDate = today!.plusDays(65)
        let monthsBetween = NSDate.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 2, "There should be 2 months between today and test date")
    }
    
    func testMonthsBetween2() {
        let testDate = today!.plusMonths(2).minusDays(3)
        let monthsBetween = NSDate.monthsBetween(date1: today!, date2: testDate)
        XCTAssert(monthsBetween == 1, "There should be 1 month between today and test date")
    }
    
    func testYearsBetween() {
        let testDate = today!.plusMonths(28)
        let secsBetween = NSDate.yearsBetween(date1: today!, date2: testDate)
        XCTAssert(secsBetween == 2, "There should be 2 years between today and test date")
    }
    
    func testDirectMonth() {
        var month: UInt = 0
        if let date = fixedDate {
            month = date.month
        }
        XCTAssert(month == 11, "Month should be 11")
    }
    
    func testDirectDay() {
        var day: UInt = 0
        if let date = fixedDate {
            day = date.day
        }
        XCTAssert(day == 11, "Day should be 11")
    }
    
    func testDirectYear() {
        var year: UInt = 0
        if let date = fixedDate {
            year = date.year
        }
        XCTAssert(year == 2011, "Year should be 2011")
    }
    
    func testDirectHour() {
        var hour: UInt = 0
        if let date = fixedDate {
            hour = date.hour
        }
        XCTAssert(hour == 11, "Month should be 11")
    }
    
    func testDirectMinute() {
        var minute: UInt = 0
        if let date = fixedDate {
            minute = date.minute
        }
        XCTAssert(minute == 11, "Minute should be 11")
    }
    
    func testDirectSecond() {
        var second: UInt = 0
        if let date = fixedDate {
            second = date.second
        }
        XCTAssert(second == 11, "Second should be 11")
    }
    
    func testGreaterComparison() {
        let now = NSDate()
        let then = now.minusDays(1)
        let greater = now.isGreaterThan(then)
        XCTAssert(greater == true, "Now should be greater than then")
    }
    
    func testLessComparison() {
        let now = NSDate()
        let tomorrow = now.plusDays(1)
        let lessThan = now.isLessThan(tomorrow)
        XCTAssert(lessThan == true, "Now should be less than tomorrow")
    }
}
