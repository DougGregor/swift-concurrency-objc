
@available(iOS 12.0, *)
class INObject : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(identifier: String?, display displayString: String, pronunciationHint: String?)
  convenience init(identifier: String?, display displayString: String)
  @available(iOS 14.0, *)
  convenience init(identifier: String?, display displayString: String, subtitle subtitleString: String?, image displayImage: INImage?)
  @available(iOS 14.0, *)
  convenience init(identifier: String?, display displayString: String, pronunciationHint: String?, subtitle subtitleString: String?, image displayImage: INImage?)
  var displayString: String { get }
  @available(iOS 14.0, *)
  var subtitleString: String?
  @available(iOS 14.0, *)
  var displayImage: INImage?
}
