
@available(macOS 10.5, *)
class SBObject : NSObject, NSCoding {
  init(properties: [AnyHashable : Any])
  init(data: Any)
  func get() -> Any?
  @available(macOS 10.6, *)
  func lastError() -> Error?
}
extension SBObject {
  init(elementCode code: DescType, properties: [String : Any]?, data: Any?)
  func property(withCode code: AEKeyword) -> SBObject
  func property(with cls: AnyClass, code: AEKeyword) -> SBObject
  func elementArray(withCode code: DescType) -> SBElementArray
  func setTo(_ value: Any?)
}
