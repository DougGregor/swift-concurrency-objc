
@available(iOS 11.3, *)
enum CLSContextType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case app
  case chapter
  case section
  case level
  case page
  case task
  case challenge
  case quiz
  case exercise
  case lesson
  case book
  case game
  case document
  case audio
  case video
  @available(iOS 13.4, *)
  case course
  @available(iOS 13.4, *)
  case custom
}
@available(iOS 11.3, *)
struct CLSContextTopic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CLSContextTopic {
  @available(iOS 11.3, *)
  static let math: CLSContextTopic
  @available(iOS 11.3, *)
  static let science: CLSContextTopic
  @available(iOS 11.3, *)
  static let literacyAndWriting: CLSContextTopic
  @available(iOS 11.3, *)
  static let worldLanguage: CLSContextTopic
  @available(iOS 11.3, *)
  static let socialScience: CLSContextTopic
  @available(iOS 11.3, *)
  static let computerScienceAndEngineering: CLSContextTopic
  @available(iOS 11.3, *)
  static let artsAndMusic: CLSContextTopic
  @available(iOS 11.3, *)
  static let healthAndFitness: CLSContextTopic
}
@available(iOS 11.3, *)
class CLSContext : CLSObject {
  @available(iOS 13.4, *)
  var identifierPath: [String] { get }
  var identifier: String { get }
  @available(iOS 11.4, *)
  var universalLinkURL: URL?
  var type: CLSContextType { get }
  @available(iOS 13.4, *)
  var customTypeName: String?
  var title: String
  var displayOrder: Int
  var topic: CLSContextTopic?
  @available(iOS 14, *)
  var isAssignable: Bool
  @available(iOS 14, *)
  var suggestedAge: NSRange
  @available(iOS 14, *)
  var suggestedCompletionTime: NSRange
  @available(iOS 14, *)
  var progressReportingCapabilities: Set<CLSProgressReportingCapability> { get }
  @available(iOS 13.4, *)
  var summary: String?
  @available(iOS 13.4, *)
  var thumbnail: CGImage?
  init(type: CLSContextType, identifier: String, title: String)
  var isActive: Bool { get }
  func becomeActive()
  func resignActive()
  @available(iOS 14, *)
  func setType(_ type: CLSContextType)
  @available(iOS 14, *)
  func addProgressReportingCapabilities(_ capabilities: Set<CLSProgressReportingCapability>)
  @available(iOS 14, *)
  func resetProgressReportingCapabilities()
}
extension CLSContext {
  weak var parent: @sil_weak CLSContext? { get }
  func removeFromParent()
  func addChildContext(_ child: CLSContext)
  func descendant(matchingIdentifierPath identifierPath: [String], completion: @escaping (CLSContext?, Error?) -> Void)
  func descendant(matchingIdentifierPath identifierPath: [String]) async throws -> CLSContext?
}
