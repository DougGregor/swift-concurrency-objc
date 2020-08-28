
@available(tvOS 12.0, *)
class INVoiceShortcut : NSObject, NSSecureCoding, NSCopying {
  var identifier: UUID { get }
  var invocationPhrase: String { get }
  var shortcut: INShortcut { get }
}
