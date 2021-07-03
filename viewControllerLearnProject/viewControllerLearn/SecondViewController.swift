//
//  SecondViewController.swift
//  viewControllerLearn
//
//  Created by Ilya Cherkasov on 03.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

    var someProperties: String? {
        didSet {
            print ("some properties")
        }
    }
    
    @IBOutlet weak var close: UIButton! {
        didSet {
            print("close button")
        }
    }
    
    // Срабатывает сразу, как пришла команда на
    // открытие viewController'a, то есть до didLoad
	// Когда объект получает сообщение awakeFromNib, ему гарантировано,
	// что все его выходы и действия уже установлены.
    override func awakeFromNib() {
        //super.awakeFromNib()
        print("awakeFromNib")
    }
    
//     Срабатывает сразу после загрузки view в память
//     В нем происходит инициализация всех параментров и объектов,
//     которые живут на протяжении всего жизненного цикла view
//     Позволяет вручную изменять те самые параметры
//     Границы view еще не заданы, поэтому мы не можем обращаться к
//     геометрии view
    override func viewDidLoad() {
        super.viewDidLoad()
        print("didLoad")
    }
    
    // Метод, сигнализирующий о том, что view появится на экране
    // и перед тем, как этот view будет добавлен в текующую иерархию
	// Используют ее для более тонкой настройки view
	// Он позволяет узнать, что изменилось во View, когда мы были вне его.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    // Срабатывает после того, как размер view изменился
    // под размер экрана. Срабатывает Autolayout
	// Вызываются чтобы убедиться, что все геометрия расставлена верно
	// Можно изменить размеры Subviews и их положение
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
	
	// Сохранение последнего состояния объекта
	// Настройка под геометрию экрана
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    
	
	// Уведомляет контейнер о том, что размер его представления скоро изменится.
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        print("viewWillTransition")
    }
	
	
    // Вызывается, когда представление уже загружено, и вы хотите, что - то показать
	// Также можно применять для подгрузки тяжелых объектов, например, данных из сети.
	// потому что он позволяет не блокировать экран от пользователя во время выполнения загрузки
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    // Сигнализирует, что память на устройстве заканчивается
    // и приложение может быть закрыто
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // Сработает перед тем, как view закроется и удалиться
	// из памяти
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    @IBAction func backChangeView(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    deinit {
        print("deinit")
    }
}
