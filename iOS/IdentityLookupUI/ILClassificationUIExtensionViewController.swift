
@available(iOS 12.0, *)
class ILClassificationUIExtensionViewController : UIViewController {
  func prepare(for request: ILClassificationRequest)
  func classificationResponse(for request: ILClassificationRequest) -> ILClassificationResponse
}
