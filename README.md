# InterruptibleTransition

Bug on ios 14: https://openradar.appspot.com/FB9075949
- SwiftUI View hosted in a UIHostingController: Cancelling an interactive dismiss causes Button not to respond to taps

For activate fix:
- Go to file `FluidTransition/Transition/Animations/DismissAnimation.swift`
- Uncomment line №26

Пример для статьи [Всплывай! Транзишены в iOS](
 https://habr.com/ru/company/dodopizzaio/blog/463527/)
 
В проекте:
- анимированные переходы между экранами
- работа с UIPresentationController
- интерактивное закрытие и [отображение](https://github.com/akaDuality/InterruptibleTransition/tree/interactivePresentation) контроллера
