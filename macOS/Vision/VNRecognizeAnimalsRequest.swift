
struct VNAnimalIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension VNAnimalIdentifier {
  @available(macOS 10.15, *)
  static let dog: VNAnimalIdentifier
  @available(macOS 10.15, *)
  static let cat: VNAnimalIdentifier
}
@available(macOS 10.15, *)
class VNRecognizeAnimalsRequest : VNImageBasedRequest {
  class func knownAnimalIdentifiers(forRevision requestRevision: Int) throws -> [VNAnimalIdentifier]
}
@available(macOS 10.15, *)
let VNRecognizeAnimalsRequestRevision1: Int
