
enum MSPropertyType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case listeningHistory
}
class MediaService : NSObject, NSSecureCoding, NSCopying {
  init(serviceAccount: MSServiceAccount, bundleIdentifier bundleID: String) throws
  var serviceName: String { get }
  var bundleIdentifier: String { get }
  var accountName: String { get }
  var isServiceRemovable: Bool { get }
  var updateListeningHistoryEnabled: Bool { get }
  var iconImageURL: URL { get }
}
