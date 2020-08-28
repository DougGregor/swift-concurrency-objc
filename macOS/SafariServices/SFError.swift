
let SFErrorDomain: String
enum SFErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case noExtensionFound
  case noAttachmentFound
  case loadingInterrupted
}
