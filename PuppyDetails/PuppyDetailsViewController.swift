import UIKit

class PuppyDetailsViewController: UIViewController
{
    @IBOutlet weak var pupDisplayImageView: UIImageView!
    @IBOutlet weak var pupDisplayNameLabel: UILabel!
    @IBOutlet weak var pupDisplayGenderLabel: UILabel!
    @IBOutlet weak var pupDisplayAgeLabel: UILabel!
    @IBOutlet weak var pupDisplayLengthLabel: UILabel!
    @IBOutlet weak var pupDisplayColorLabel: UILabel!
    
    var pupImage = UIImage()
    var pupName = ""
    var pupGender = ""
    var pupAge = ""
    var pupLength = ""
    var pupColor = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        pupDisplayImageView.image = pupImage
        pupDisplayNameLabel.text = pupName
        pupDisplayGenderLabel.text = pupGender
        pupDisplayAgeLabel.text = pupAge
        pupDisplayLengthLabel.text = pupLength
        pupDisplayColorLabel.text = pupColor
    }
    
    @IBAction func backPress(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(identifier: "PuppyListViewController") as! PuppyListViewController
        UIApplication.shared.windows[0].rootViewController = vc
    }
}
