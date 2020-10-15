
@available(macOS 11.0, *)
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
  @available(macOS 11.0, *)
  case course
  @available(macOS 11.0, *)
  case custom
}
@available(macOS 11.0, *)
struct CLSContextTopic : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension CLSContextTopic {
  @available(macOS 11.0, *)
  static let math: CLSContextTopic
  @available(macOS 11.0, *)
  static let science: CLSContextTopic
  @available(macOS 11.0, *)
  static let literacyAndWriting: CLSContextTopic
  @available(macOS 11.0, *)
  static let worldLanguage: CLSContextTopic
  @available(macOS 11.0, *)
  static let socialScience: CLSContextTopic
  @available(macOS 11.0, *)
  static let computerScienceAndEngineering: CLSContextTopic
  @available(macOS 11.0, *)
  static let artsAndMusic: CLSContextTopic
  @available(macOS 11.0, *)
  static let healthAndFitness: CLSContextTopic
}
@available(macOS 11.0, *)
class CLSContext : CLSObject {
  @available(macOS 11.0, *)
  var identifierPath: [String] { get }
  var identifier: String { get }
  @available(macOS 11.0, *)
  var universalLinkURL: URL?
  var type: CLSContextType { get }
  @available(macOS 11.0, *)
  var customTypeName: String?
  var title: String
  var displayOrder: Int
  var topic: CLSContextTopic?
  @available(macOS 11.0, *)
  var isAssignable: Bool
  @available(macOS 11.0, *)
  var suggestedAge: NSRange
  @available(macOS 11.0, *)
  var suggestedCompletionTime: NSRange
  @available(macOS 11.0, *)
  var progressReportingCapabilities: Set<CLSProgressReportingCapability> { get }
  @available(macOS 11.0, *)
  var summary: String?
  @available(macOS 11.0, *)
  var thumbnail: CGImage?
  init(type: CLSContextType, identifier: String, title: String)
  var isActive: Bool { get }
  func becomeActive()
  func resignActive()
  @available(macOS 11.0, *)
  func setType(_ type: CLSContextType)
  @available(macOS 11.0, *)
  func addProgressReportingCapabilities(_ capabilities: Set<CLSProgressReportingCapability>)
  @available(macOS 11.0, *)
  func resetProgressReportingCapabilities()
}
extension CLSContext {
  weak var parent: @sil_weak CLSContext? { get }
  func removeFromParent()
  func addChildContext(_ child: CLSContext)
  func descendant(matchingIdentifierPath identifierPath: [String], completion: @escaping (CLSContext?, Error?) -> Void)
  func descendant(matchingIdentifierPath identifierPath: [String]) async throws -> CLSContext?
}
