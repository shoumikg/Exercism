// TODO: Define the Position struct
struct Position {
    var x = 0, y = 0
    mutating func moveTo(newX: Int = 0, newY: Int = 0) {
        x += newX
        y += newY
    }
    
    func description() -> String {
        return "Position: (\(x), \(y))"
    }
}

// TODO: Define the Size struct

struct Size {
    var width = 80, height = 60
    
    mutating func resize(newWidth: Int, newHeight: Int) {
        width = newWidth
        height = newHeight
    }
    
    func description() -> String {
        return "Size: (\(width) x \(height))"
    }
}

// TODO: Define the Window class
class Window {
    var title: String
    var screenSize: Size
    var size: Size
    var position: Position
    var contents: String?
    
    init(title: String = "New Window",
         screenSize: Size = Size(width: 800, height: 600),
         size: Size = Size(),
         position: Position = Position(),
         contents: String? = nil) {
        self.title = title
        self.screenSize = screenSize
        self.size = size
        self.position = position
        self.contents = contents
    }
    
    static func createMainWindow() {
        mainWindow.update(title: "Main Window")
        mainWindow.resize(to: Size(width: 400, height: 300))
        mainWindow.move(to: Position(x: 100, y: 100))
        mainWindow.update(text: "This is the main window")
    }
    
    func resize(to newSize: Size) {
        size.height = newSize.height + position.y > screenSize.height ? screenSize.height - position.y : newSize.height
        size.width = newSize.width + position.x > screenSize.width ? screenSize.width - position.x : newSize.width
        if newSize.height < 1 {
            size.height = 1
        }
        if newSize.width < 1 {
            size.width = 1
        }
    }
    
    func move(to newPosition: Position) {
        position.y = size.height + newPosition.y > screenSize.height ? screenSize.height - size.height : newPosition.y
        position.x = size.width + newPosition.x > screenSize.width ? screenSize.width - size.width : newPosition.x
        if newPosition.x < 0 {
            position.x = 0
        }
        if newPosition.y < 0 {
            position.y = 0
        }
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        return "\(title)\n\(position.description()), \(size.description())\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}

var mainWindow: Window = {
    var window = Window()
    window.update(title: "Main Window")
    window.resize(to: Size(width: 400, height: 300))
    window.move(to: Position(x: 100, y: 100))
    window.update(text: "This is the main window")
    
    return window
}()
