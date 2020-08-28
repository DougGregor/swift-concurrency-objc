
@available(iOS 8.0, *)
class UIPrinter : NSObject {
  /*not inherited*/ init(url: URL)
  var url: URL { get }
  var displayName: String { get }
  var displayLocation: String? { get }
  var supportedJobTypes: UIPrinter.JobTypes { get }
  var makeAndModel: String? { get }
  var supportsColor: Bool { get }
  var supportsDuplex: Bool { get }
  func contactPrinter(_ completionHandler: ((Bool) -> Void)? = nil)
}
extension UIPrinter {
  @available(iOS 8.0, *)
  struct JobTypes : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var unknown: UIPrinter.JobTypes { get }
    static var document: UIPrinter.JobTypes { get }
    static var envelope: UIPrinter.JobTypes { get }
    static var label: UIPrinter.JobTypes { get }
    static var photo: UIPrinter.JobTypes { get }
    static var receipt: UIPrinter.JobTypes { get }
    static var roll: UIPrinter.JobTypes { get }
    static var largeFormat: UIPrinter.JobTypes { get }
    static var postcard: UIPrinter.JobTypes { get }
  }
}
