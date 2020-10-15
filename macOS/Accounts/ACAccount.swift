
@available(macOS 10.8, *)
class ACAccount : NSObject {
  init!(accountType type: ACAccountType!)
  weak var identifier: @sil_weak NSString! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  var credential: ACAccountCredential!
}
