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
        //weak: nil (ok)
    
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
        nextBtn.isEnabled = true    //Main.storyBoard -> deselect enable
    }
   //  we don't need to call super on this or anything like that because we're overwriting it.
    //  typically what that means is when you are writing and you don't call super.
    //  It means that you don't need the VC implementation of it you don't need that code to run.
    //  our code is going to take over from here.
    
    //  prepareFoSegue is alwayscalled before viewDisLoad on the destination view controller
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC { 
            skillVC.player = player //LeagueVC's player -> skillVC's player 전달
        }
    }
}
