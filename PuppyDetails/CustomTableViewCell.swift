import UIKit

class CustomTableViewCell: UITableViewCell
{
    @IBOutlet weak var pupImageView: UIImageView!
    @IBOutlet weak var pupNameLabel: UILabel!
    @IBOutlet weak var pupAgeLabel: UILabel!
    @IBOutlet weak var pupGenderLabel: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
}
