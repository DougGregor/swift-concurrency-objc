
extension UIPrintInfo {
  enum OutputType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case general
    case photo
    case grayscale
    @available(tvOS 7.0, *)
    case photoGrayscale
  }
  enum Orientation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case portrait
    case landscape
  }
  enum Duplex : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case longEdge
    case shortEdge
  }
}
@available(tvOS 4.2, *)
class UIPrintInfo : NSObject, NSCopying, NSCoding {
  class func printInfo() -> UIPrintInfo
  /*not inherited*/ init(dictionary: [AnyHashable : Any]?)
  var printerID: String?
  var jobName: String
  var outputType: UIPrintInfo.OutputType
  var orientation: UIPrintInfo.Orientation
  var duplex: UIPrintInfo.Duplex
  var dictionaryRepresentation: [AnyHashable : Any] { get }
}
