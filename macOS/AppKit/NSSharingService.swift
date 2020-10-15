
extension NSSharingService {
  struct Name : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.8, *)
  enum SharingContentScope : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case item
    case partial
    case full
  }
  @available(macOS 10.12, *)
  struct CloudKitOptions : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var standard: NSSharingService.CloudKitOptions { get }
    static var allowPublic: NSSharingService.CloudKitOptions { get }
    static var allowPrivate: NSSharingService.CloudKitOptions { get }
    static var allowReadOnly: NSSharingService.CloudKitOptions { get }
    static var allowReadWrite: NSSharingService.CloudKitOptions { get }
  }
}
extension NSSharingService.Name {
  @available(macOS 10.8, *)
  static let composeEmail: NSSharingService.Name
  @available(macOS 10.8, *)
  static let composeMessage: NSSharingService.Name
  @available(macOS 10.8, *)
  static let sendViaAirDrop: NSSharingService.Name
  @available(macOS 10.8, *)
  static let addToSafariReadingList: NSSharingService.Name
  @available(macOS 10.8, *)
  static let addToIPhoto: NSSharingService.Name
  @available(macOS 10.8, *)
  static let addToAperture: NSSharingService.Name
  @available(macOS 10.8, *)
  static let useAsDesktopPicture: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postOnFacebook: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postOnTwitter: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postOnSinaWeibo: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postOnTencentWeibo: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postOnLinkedIn: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let useAsTwitterProfileImage: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let useAsFacebookProfileImage: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let useAsLinkedInProfileImage: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postImageOnFlickr: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postVideoOnVimeo: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postVideoOnYouku: NSSharingService.Name
  @available(macOS, introduced: 10.8, deprecated: 10.14, message: "This service is no longer included with the system.")
  static let postVideoOnTudou: NSSharingService.Name
  @available(macOS 10.12, *)
  static let cloudSharing: NSSharingService.Name
}
@available(macOS 10.8, *)
class NSSharingService : NSObject {
  weak var delegate: @sil_weak NSSharingServiceDelegate?
  var title: String { get }
  var image: NSImage { get }
  var alternateImage: NSImage? { get }
  @available(macOS 10.9, *)
  var menuItemTitle: String
  @available(macOS 10.9, *)
  var recipients: [String]?
  @available(macOS 10.9, *)
  var subject: String?
  @available(macOS 10.9, *)
  var messageBody: String? { get }
  @available(macOS 10.9, *)
  var permanentLink: URL? { get }
  @available(macOS 10.9, *)
  var accountName: String? { get }
  @available(macOS 10.9, *)
  var attachmentFileURLs: [URL]? { get }
  class func sharingServices(forItems items: [Any]) -> [NSSharingService]
  /*not inherited*/ init?(named serviceName: NSSharingService.Name)
  init(title: String, image: NSImage, alternateImage: NSImage?, handler block: @escaping () -> Void)
  func canPerform(withItems items: [Any]?) -> Bool
  func perform(withItems items: [Any])
}
protocol NSSharingServiceDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func sharingService(_ sharingService: NSSharingService, willShareItems items: [Any])
  @available(macOS 10.8, *)
  @asyncHandler optional func sharingService(_ sharingService: NSSharingService, didFailToShareItems items: [Any], error: Error)
  @available(macOS 10.8, *)
  @asyncHandler optional func sharingService(_ sharingService: NSSharingService, didShareItems items: [Any])
  @available(macOS 10.8, *)
  optional func sharingService(_ sharingService: NSSharingService, sourceFrameOnScreenForShareItem item: Any) -> NSRect
  @available(macOS 10.8, *)
  optional func sharingService(_ sharingService: NSSharingService, transitionImageForShareItem item: Any, contentRect: UnsafeMutablePointer<NSRect>) -> NSImage?
  @available(macOS 10.8, *)
  optional func sharingService(_ sharingService: NSSharingService, sourceWindowForShareItems items: [Any], sharingContentScope: UnsafeMutablePointer<NSSharingService.SharingContentScope>) -> NSWindow?
  @available(macOS 10.8, *)
  optional func anchoringView(for sharingService: NSSharingService, showRelativeTo positioningRect: UnsafeMutablePointer<NSRect>, preferredEdge: UnsafeMutablePointer<NSRectEdge>) -> NSView?
}
protocol NSCloudSharingServiceDelegate : NSSharingServiceDelegate {
  @available(macOS 10.8, *)
  @asyncHandler optional func sharingService(_ sharingService: NSSharingService, didCompleteForItems items: [Any], error: Error?)
  @available(macOS 10.12, *)
  optional func options(for cloudKitSharingService: NSSharingService, share provider: NSItemProvider) -> NSSharingService.CloudKitOptions
  @available(macOS 10.12, *)
  @asyncHandler optional func sharingService(_ sharingService: NSSharingService, didSave share: CKShare)
  @available(macOS 10.12, *)
  @asyncHandler optional func sharingService(_ sharingService: NSSharingService, didStopSharing share: CKShare)
}
extension NSItemProvider {
  @available(macOS 10.12, *)
  func registerCloudKitShare(preparationHandler: @escaping (@escaping (CKShare?, CKContainer?, Error?) -> Void) -> Void)
  @available(macOS 10.12, *)
  func registerCloudKitShare(_ share: CKShare, container: CKContainer)
}
@available(macOS 10.8, *)
class NSSharingServicePicker : NSObject {
  weak var delegate: @sil_weak NSSharingServicePickerDelegate?
  init(items: [Any])
  func show(relativeTo rect: NSRect, of view: NSView, preferredEdge: NSRectEdge)
}
protocol NSSharingServicePickerDelegate : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func sharingServicePicker(_ sharingServicePicker: NSSharingServicePicker, sharingServicesForItems items: [Any], proposedSharingServices proposedServices: [NSSharingService]) -> [NSSharingService]
  @available(macOS 10.8, *)
  optional func sharingServicePicker(_ sharingServicePicker: NSSharingServicePicker, delegateFor sharingService: NSSharingService) -> NSSharingServiceDelegate?
  @available(macOS 10.8, *)
  @asyncHandler optional func sharingServicePicker(_ sharingServicePicker: NSSharingServicePicker, didChoose service: NSSharingService?)
}
