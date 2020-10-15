
extension INCar {
  @available(iOS 14.0, *)
  class HeadUnit : NSObject, NSCopying, NSSecureCoding {
    init(bluetoothIdentifier: String?, iAP2Identifier: String?)
    var bluetoothIdentifier: String? { get }
    var iAP2Identifier: String? { get }
  }
}
