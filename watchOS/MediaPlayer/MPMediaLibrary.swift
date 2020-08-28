
@available(watchOS 2.3, *)
enum MPMediaLibraryAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case denied
  case restricted
  case authorized
}
@available(watchOS 2.0, *)
class MPMediaLibrary : NSObject, NSSecureCoding {
  class func `default`() -> MPMediaLibrary
  var lastModifiedDate: Date { get }
  func beginGeneratingLibraryChangeNotifications()
  func endGeneratingLibraryChangeNotifications()
  @available(watchOS 2.3, *)
  class func authorizationStatus() -> MPMediaLibraryAuthorizationStatus
  @available(watchOS 2.3, *)
  class func requestAuthorization(_ handler: @escaping (MPMediaLibraryAuthorizationStatus) -> Void)
  @available(watchOS 2.3, *)
  func addItem(withProductID productID: String, completionHandler: (([MPMediaEntity], Error?) -> Void)? = nil)
  @available(watchOS 2.3, *)
  func getPlaylist(with uuid: UUID, creationMetadata: MPMediaPlaylistCreationMetadata?, completionHandler: @escaping (MPMediaPlaylist?, Error?) -> Void)
}
extension NSNotification.Name {
  static let MPMediaLibraryDidChange: NSNotification.Name
}
