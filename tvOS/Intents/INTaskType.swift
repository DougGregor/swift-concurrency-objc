
@available(tvOS 11.0, *)
enum INTaskType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case notCompletable
  case completable
}
