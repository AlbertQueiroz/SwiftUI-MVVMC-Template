import Combine
import Foundation

protocol ___VARIABLE_sceneName___ViewModelProtocol: ObservableObject {
    var presentationModel: ___VARIABLE_sceneName___PresentationModel { get }
    func onAction()
}

final class ___VARIABLE_sceneName___ViewModel: ___VARIABLE_sceneName___ViewModelProtocol {

    let presentationModel: ___VARIABLE_sceneName___PresentationModel,
    let useCase: ___VARIABLE_sceneName___UseCasing

    init(
        presentationModel: ___VARIABLE_sceneName___PresentationModel,
        useCase: ___VARIABLE_sceneName___UseCasing
    ) {
        self.presentationModel = presentationModel
        self.useCase = useCase
    }

    func onAction() {
        useCase.execute()
    }
}
