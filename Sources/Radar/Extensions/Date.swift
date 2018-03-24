import Foundation

extension Date {
    func toTimestamp() -> Int64! {
        return Int64(self.timeIntervalSince1970)
    }

    func secondsSince(_ time: Int64!) -> Int64! {
        return Int64(self.toTimestamp() - time)
    }
}