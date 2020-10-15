
@available(macOS 11.0, *)
enum CLSBinaryValueType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case trueFalse
  case passFail
  case yesNo
  @available(macOS 11.0, *)
  case correctIncorrect
}
@available(macOS 11.0, *)
class CLSBinaryItem : CLSActivityItem {
  var value: Bool
  var valueType: CLSBinaryValueType { get }
  init(identifier: String, title: String, type valueType: CLSBinaryValueType)
}
