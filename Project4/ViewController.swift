//
//  ViewController.swift
//  Project4
//
//  Created by Juliano Santos on 6/6/22.
//

import WebKit

class ViewController: UITableViewController {

    var websites = ["apple.com", "hackingwithswift.com", "google.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Site Viewer"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //goNavigation(websites[indexPath.row])
        if let vc = storyboard?.instantiateViewController(withIdentifier: "WebBrowser") as? WebBrowserViewController {
            vc.websites = self.websites
            vc.website = websites[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
  
}

