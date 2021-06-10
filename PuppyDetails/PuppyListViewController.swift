import UIKit

class PuppyListViewController: UIViewController
{
    @IBOutlet weak var puppyTableView: UITableView!
    
    let pupImageArray = ["German Shepherd","Bulldog","Poodle","Labrador","Golden Retriever","Siberian Husky","Rottweiler","Pomeranian","Dobermann","Border Collie"]
    
    let pupNameArray = ["German Shepherd","Bulldog","Poodle","Labrador","Golden Retriever","Siberian Husky","Rottweiler","Pomeranian","Dobermann","Border Collie"]
    
    let pupMonthArray = ["9 months old","6 months old","8 months old","11 months old","5 months old","6 months old","10 months old","8 months old","7 months old","9 months old"]
    
    let pupLengthArray = ["1.4 feet length","0.5 feet length","2.2 feet length","1.0 feet length","0.8 feet length","2.0 feet length","1.2 feet length","0.7 feet length","1.7 feet length","0.5 feet length"]
    
    let pupGenderArray = ["Male","Female","Male","Male","Female","Male","Female","Male","Female","Male"]
    
    let pupColorArray = ["Black","Brown","Brown","White","Golden","Grey","Black","White","Black","Black"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}

extension PuppyListViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return pupImageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.pupImageView.image = UIImage(named: pupImageArray[indexPath.row])
        cell.pupNameLabel.text = pupNameArray[indexPath.row]
        cell.pupAgeLabel.text = "\(pupMonthArray[indexPath.row]) / \(pupLengthArray[indexPath.row])"
        cell.pupGenderLabel.text = pupGenderArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let vc = storyboard?.instantiateViewController(identifier: "PuppyDetailsViewController") as! PuppyDetailsViewController
        vc.pupImage = UIImage(named: pupImageArray[indexPath.row])!
        vc.pupName = pupNameArray[indexPath.row]
        vc.pupGender = pupGenderArray[indexPath.row]
        vc.pupAge = pupMonthArray[indexPath.row]
        vc.pupLength = pupLengthArray[indexPath.row]
        vc.pupColor = pupColorArray[indexPath.row]
        UIApplication.shared.windows[0].rootViewController = vc
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 150
    }
}
