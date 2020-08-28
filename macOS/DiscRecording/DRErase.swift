
class DRErase : NSObject {
  /*not inherited*/ init!(for device: DRDevice!)
  init!(device: DRDevice!)
  func start()
  func status() -> [AnyHashable : Any]!
  func properties() -> [AnyHashable : Any]!
  func setProperties(_ properties: [AnyHashable : Any]!)
  func device() -> DRDevice!
}
extension DRErase {
  func eraseType() -> String!
  func setEraseType(_ type: String!)
}
@available(macOS 10.2, *)
let DREraseTypeKey: String
@available(macOS 10.2, *)
let DREraseTypeQuick: String
@available(macOS 10.2, *)
let DREraseTypeComplete: String
extension NSNotification.Name {
  @available(macOS 10.2, *)
  static let DREraseStatusChanged: NSNotification.Name
}
