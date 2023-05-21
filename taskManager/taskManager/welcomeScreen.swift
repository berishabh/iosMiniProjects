import UIKit

class welcomeScreen: UIViewController {

 override func viewDidLoad() {

 super.viewDidLoad()

 self.view.backgroundColor = .lightGray
//
// // Define the points of the trapezoid
// let pointA = CGPoint(x: 50, y: 50)
// let pointB = CGPoint(x: 386, y: 50)
// let pointC = CGPoint(x: 386, y: 475)
// let pointD = CGPoint(x: 50, y: 550)
//
// // Create a bezier path with the points
// let path = UIBezierPath()
// path.move(to: pointA)
// path.addLine(to: pointB)
// path.addLine(to: pointC)
// path.addLine(to: pointD)
// path.close()
//
// // Create a shape layer with the path
// let shapeLayer = CAShapeLayer()
// shapeLayer.path = path.cgPath
// shapeLayer.fillColor = UIColor.systemPink.cgColor
//     shapeLayer.cornerRadius = 20
//
// // Add the shape layer to your view's layer
// view.layer.addSublayer(shapeLayer)

     // Create a rounded rectangle path with the same size as your trapezium
     let rect = CGRect(x: 170, y: 300, width: 500, height: 600) // Change the height from 500 to 600

     let path = UIBezierPath(roundedRect: rect, cornerRadius: 20)

     // Get the points of the path
     var points = [CGPoint](repeating: .zero, count: 4)
     path.cgPath.apply(info: &points) { info, element in
         guard let points = info?.assumingMemoryBound(to: CGPoint.self) else { return }
         switch element.pointee.type {
         case .moveToPoint:
             points[0] = element.pointee.points[0]
         case .addLineToPoint:
             points[1] = element.pointee.points[0]
             points[2] = element.pointee.points[1]
             points[3] = element.pointee.points[2]
         default:
             break
         }
     }

     // Modify the points to create the trapezium shape
     points[2].y -= 75
     points[3].y += 75

     // Create a new path with the modified points
     let newPath = UIBezierPath()
     newPath.move(to: points[0])
     newPath.addLine(to: points[1])
     newPath.addLine(to: points[2])
     newPath.addLine(to: points[3])
     newPath.close()

     // Create a shape layer with the new path
     let shapeLayer = CAShapeLayer()
     shapeLayer.path = newPath.cgPath
     shapeLayer.fillColor = UIColor.systemPink.cgColor

     // Add the shape layer to your view's layer
     view.layer.addSublayer(shapeLayer)

 }

}
