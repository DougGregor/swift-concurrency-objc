
@available(iOS 11.0, *)
enum INLocationSearchType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case byLocationTrigger
}
