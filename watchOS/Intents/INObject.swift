
@available(watchOS 5.0, *)
class INObject : NSObject, INSpeakable, NSCopying, NSSecureCoding {
  init(identifier: String?, display displayString: String, pronunciationHint: String?)
  convenience init(identifier: String?, display displayString: String)
  @available(watchOS 7.0, *)
  convenience init(identifier: String?, display displayString: String, subtitle subtitleString: String?, image displayImage: INImage?)
  @available(watchOS 7.0, *)
  convenience init(identifier: String?, display displayString: String, pronunciationHint: String?, subtitle subtitleString: String?, image displayImage: INImage?)
  var displayString: String { get }
  @available(watchOS 7.0, *)
  var subtitleString: String?
  @available(watchOS 7.0, *)
  var displayImage: INImage?
}
