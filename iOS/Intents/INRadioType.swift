
@available(iOS 10.0, *)
enum INRadioType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case AM
  case FM
  case HD
  case satellite
  case DAB
}
