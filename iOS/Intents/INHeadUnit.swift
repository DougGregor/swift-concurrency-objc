
@available(iOS 14.0, *)
class INHeadUnit : NSObject, NSCopying, NSSecureCoding {
  init(bluetoothIdentifier: String?, iap2Identifier: String?)
  var bluetoothIdentifier: String? { get }
  var iap2Identifier: String? { get }
}
