
@available(tvOS 14.0, *)
enum INMediaAffinityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case like
  case dislike
}
