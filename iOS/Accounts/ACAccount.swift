
@available(iOS 5.0, *)
class ACAccount : NSObject {
  init!(accountType type: ACAccountType!)
  weak var identifier: @sil_weak NSString! { get }
  var accountType: ACAccountType!
  var accountDescription: String!
  var username: String!
  @available(iOS 7.0, *)
  var userFullName: String! { get }
  var credential: ACAccountCredential!
}
