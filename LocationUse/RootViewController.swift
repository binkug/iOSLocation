//
//  RootViewController.swift
//  LocationUse
//
//  Created by 304 on 2020/09/15.
//  Copyright © 2020 blkin. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {
    var titles = Array<String>()
    var contents = Array<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "iOS 실습"
        
        titles.append("현재 위치 정보")
        contents.append("위치 정보 사용하여 현재 위치 가져오기")
        
        titles.append("지도 이용하기")
        contents.append("지도")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //셀의 구분자를 생성
        let cellIdenfier = "cell"
        //테이블 뷰에서 재사용 가능한 셀을 받아옵니다.
        var cell = tableView.dequeueReusableCell(withIdentifier:cellIdenfier)
        //재사용 가능 셀이 없으면 생성
        //style을 subtitle로 설정하면 레이블 2개, 이미지 뷰 1개
        //엑세서리 뷰 1개 모두 사용 가능
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdenfier)
        }
        //레이블에 텍스트를 출력
        cell!.textLabel?.text = titles[indexPath.row]
        cell!.detailTextLabel!.text = contents[indexPath.row]
        //액세서리 모양을 설정
        cell!.accessoryType = .disclosureIndicator

        return cell!

    }
    
    //셀을 선택했을 때 호출되는 메소드
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           if indexPath.row == 0{
               
               let viewController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
               
               self.navigationController?.pushViewController(viewController, animated: true)
           }else if indexPath.row == 1{
               
               let mapVC = self.storyboard?.instantiateViewController(withIdentifier: "MapVC") as! MapVC
               
               self.navigationController?.pushViewController(mapVC, animated: true)
           }
        
    }


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
