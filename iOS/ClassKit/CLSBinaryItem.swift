
@available(iOS 11.3, *)
enum CLSBinaryValueType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case trueFalse
  case passFail
  case yesNo
  @available(iOS 12.2, *)
  case correctIncorrect
}
@available(iOS 11.3, *)
class CLSBinaryItem : CLSActivityItem {
  var value: Bool
  var valueType: CLSBinaryValueType { get }
  init(identifier: String, title: String, type valueType: CLSBinaryValueType)
}
