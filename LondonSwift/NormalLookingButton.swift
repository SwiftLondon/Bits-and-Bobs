import UIKit

public class NormalLookingButton: UIButton {
    
    public var backgroundCornerRadius: CGFloat = 4 {
        didSet {
            setNeedsLayout()
        }
    }
    
    public var backgroundRectColor: UIColor = UIColor.greenColor() {
        didSet{
            setNeedsLayout()
        }
    }
    
    public var backgroundStrokeColor: UIColor = UIColor.blackColor() {
        didSet{
            setNeedsLayout()
        }
    }
    
    //The standard UIKit naming is confusing (lineWidth)
    public var backgroundStrokeWidth: CGFloat = 1 {
        didSet{
            setNeedsLayout()
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        layoutBackgroundLayer()
    }
    
    private var backgroundLayer: CAShapeLayer?
    
    private func layoutBackgroundLayer(){
        if let existingBackground = backgroundLayer {
            existingBackground.removeFromSuperlayer()
        }
        
        let newBackgroundLayer = CAShapeLayer()
        newBackgroundLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: backgroundCornerRadius).CGPath
        newBackgroundLayer.fillColor = backgroundRectColor.CGColor
        newBackgroundLayer.strokeColor = backgroundStrokeColor.CGColor
        newBackgroundLayer.lineWidth = backgroundStrokeWidth
        layer.insertSublayer(newBackgroundLayer, atIndex: 0)
        self.backgroundLayer = newBackgroundLayer
    }
    
}