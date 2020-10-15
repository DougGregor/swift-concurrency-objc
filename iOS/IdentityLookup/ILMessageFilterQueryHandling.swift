
@available(iOS 11.0, *)
protocol ILMessageFilterQueryHandling : NSObjectProtocol {
  func handle(_ queryRequest: ILMessageFilterQueryRequest, context: ILMessageFilterExtensionContext, completion: @escaping (ILMessageFilterQueryResponse) -> Void)
}
