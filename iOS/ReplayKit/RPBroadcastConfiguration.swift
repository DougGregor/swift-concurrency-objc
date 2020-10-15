
@available(iOS, introduced: 10.0, deprecated: 11.0, message: "No longer supported")
class RPBroadcastConfiguration : NSObject, NSCoding, NSSecureCoding {
  var clipDuration: TimeInterval
  var videoCompressionProperties: [String : NSSecureCoding & NSObjectProtocol]?
}
