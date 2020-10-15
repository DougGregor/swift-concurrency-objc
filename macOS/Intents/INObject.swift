
@available(macOS 11.0, *)
class INObject : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(identifier: String?, display displayString: String, pronunciationHint: String?)
  convenience init(identifier: String?, display displayString: String)
  convenience init(identifier: String?, display displayString: String, subtitle subtitleString: String?, image displayImage: INImage?)
  convenience init(identifier: String?, display displayString: String, pronunciationHint: String?, subtitle subtitleString: String?, image displayImage: INImage?)
  var displayString: String { get }
  var subtitleString: String?
  var displayImage: INImage?
}
