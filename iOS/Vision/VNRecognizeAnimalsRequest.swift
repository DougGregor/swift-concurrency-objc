
struct VNAnimalIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNAnimalIdentifier {
  @available(iOS 13.0, *)
  static let dog: VNAnimalIdentifier
  @available(iOS 13.0, *)
  static let cat: VNAnimalIdentifier
}
@available(iOS 13.0, *)
class VNRecognizeAnimalsRequest : VNImageBasedRequest {
  class func knownAnimalIdentifiers(forRevision requestRevision: Int) throws -> [VNAnimalIdentifier]
}
@available(iOS 13.0, *)
let VNRecognizeAnimalsRequestRevision1: Int
