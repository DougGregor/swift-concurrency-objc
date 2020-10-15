

// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with AuthenticationServices
@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
struct SignInWithAppleButton : View {
  init(_ label: SignInWithAppleButton.Label = .signIn, onRequest: @escaping (ASAuthorizationAppleIDRequest) -> Void, onCompletion: @escaping ((Result<ASAuthorization, Error>) -> Void))
  struct Label {
    static var signIn: SignInWithAppleButton.Label
    static var `continue`: SignInWithAppleButton.Label
    static var signUp: SignInWithAppleButton.Label
  }
  struct Style {
    static var black: SignInWithAppleButton.Style
    static var white: SignInWithAppleButton.Style
    static var whiteOutline: SignInWithAppleButton.Style
  }
}

// Available when SwiftUI is imported with AuthenticationServices
extension View {
  @available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
  func signInWithAppleButtonStyle(_ style: SignInWithAppleButton.Style) -> some View
  
}

