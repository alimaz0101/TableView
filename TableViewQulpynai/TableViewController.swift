//
//  TableViewController.swift
//  TableViewQulpynai
//
//  Created by Alima Zhaksylyk on 18.07.2023.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayItems = [Items(name: "Вупи пай", price: "5500 тг", imageName: "whoopiepie", description: "Ортасына чиз-крем жағылған жұмсақ бисквитті америкалық тәтті нан. Өте дәмді, әрі жұмсақ. Құрамы: сары май, ұн, какао, пісіру ұнтағы, жұмыртқа, қант, шоколад, қант ұнтағы, табиғи кілегей, сүзбе ірімшігі."),
                      Items(name: "Макаронс", price: "500 тг", imageName: "macarons", description: "Макаронс – бадам ұнынан дайындалған қанық франуздық тәтті нан. Әртүрлі салындысы бар қытырлақ, әрі нәзік. Құрамы: Бадам ұны, қант ұнтағы, қант, жұмыртқа, тағамдық бояу, қара/ақ шоколад, кілегей, май"),
                      Items(name: "Сникерс трайфл", price: "1 100 тг.", imageName: "triffle", description: "Карамельмен араласқан жержаңғағы бар, сүзбелі-ірімшік пен кілегейді араластыра көпіртілген кремі бар шоколадты бисквит. Құрамы: жұмыртқа, қант, ұн, пісіру ұнтағы, какао, бал, жержаңғақ, шоколадты ганаш, табиғи кілегей, кофе сиропы, сүзбе ірімшігі"),
                      Items(name: "Пирожное Шу", price: "550 тг.", imageName: "shu", description: "Қайнатылған қамырдан дайындалған қытырлаған тәтті қабығы үлпілдеген кілегейімен үйлесімді, таңғажайып нәзік дәм береді. Құрамы: сүт, май, тұз, қант, ұн, жұмыртқа, жүгері крахмалы, табиғи кілегей, қант ұнтағы"),
                      Items(name: "Эскимо", price: "500 тг.", imageName: "eskimo", description: "Балмұздақ пішінді шоколадты бисквиттен жасалған таяқшадағы тәтті нан. Эскимоға шоколад құйылып, жержаңғақ түйіршіктері себілген. Құрамы: жұмыртқа, ұн, қоюландырылған сүт, какао, бал, ас содасы, шпинат, сүт, май, қант, кілегей, қант ұнтағы, шоколадты ганаш, ұсақталған жержаңғақ.")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)

        let labelName = cell.viewWithTag(1) as! UILabel
        labelName.text = "\(arrayItems[indexPath.row].name)"
        
        let labelPrice = cell.viewWithTag(2) as! UILabel
        labelPrice.text = "\(arrayItems[indexPath.row].price)"
        
        let imageView = cell.viewWithTag(3) as! UIImageView
        imageView.image = UIImage(named: arrayItems[indexPath.row].imageName)

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
        navigationController?.show(detailVc, sender: self)
        
        detailVc.name = arrayItems[indexPath.row].name
        detailVc.price = arrayItems[indexPath.row].price
        detailVc.imageName = arrayItems[indexPath.row].imageName
        detailVc.detail = arrayItems[indexPath.row].description
    }
    
    /*
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
         
         navigationController?.show(detailVc, sender: self)
         
         detailVc.name = arrayItems[indexPath.row].name
         detailVc.price = arrayItems[indexPath.row].price
         detailVc.imageName = arrayItems[indexPath.row].imageName
         detailVc.detail = arrayItems[indexPath.row].description
     }
     */
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
