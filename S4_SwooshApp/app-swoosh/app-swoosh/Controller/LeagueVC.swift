//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by minjoo on 2021/01/22.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
        
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
            
            performSegue(withIdentifier: "skillVCSegue", sender: self)
        }

    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }

    @IBAction func onCoedTapped(_ sender: Any) {
        player.desiredLegue = "coed"
    }

    func selectLeague(leagueType: String) {
        player.desiredLegue = leagueType
        nextBtn.isEnabled = true
    }
    
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    koverride func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
