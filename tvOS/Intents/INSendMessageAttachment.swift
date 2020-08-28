
@available(tvOS 14.0, *)
class INSendMessageAttachment : NSObject {
  /*not inherited*/ init(audioMessageFile: INFile)
  @NSCopying var audioMessageFile: INFile? { get }
}
