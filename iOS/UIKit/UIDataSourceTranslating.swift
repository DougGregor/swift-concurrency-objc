
@available(iOS 11.0, *)
protocol UIDataSourceTranslating : NSObjectProtocol {
  func presentationSectionIndex(forDataSourceSectionIndex dataSourceSectionIndex: Int) -> Int
  func dataSourceSectionIndex(forPresentationSectionIndex presentationSectionIndex: Int) -> Int
  func presentationIndexPath(forDataSourceIndexPath dataSourceIndexPath: IndexPath?) -> IndexPath?
  func dataSourceIndexPath(forPresentationIndexPath presentationIndexPath: IndexPath?) -> IndexPath?
  func performUsingPresentationValues(_ actionsToTranslate: () -> Void)
}
