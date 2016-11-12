//
//  ViewController.swift
//  SampleSCLAlertView
//
//  Created by 一騎高橋 on 2016/11/12.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func showErrorAlert(_ sender: Any) {
        SCLAlertView().showError("Sample Error", subTitle: "Error内容を表示する。") // Error
    }

    @IBAction func showNoticeAlert(_ sender: Any) {
        SCLAlertView().showNotice("Sample Notice", subTitle: "Notice内容を通知する。") // Notice
    }
    
    @IBAction func showWarningAlert(_ sender: Any) {
        SCLAlertView().showWarning("Sample Warning", subTitle: "Warning内容を通知する。") // Warning
    }

    @IBAction func showInfoAlert(_ sender: Any) {
        SCLAlertView().showInfo("Sample Info", subTitle: "Info内容を通知する。") // Info
    }
    
    @IBAction func showEditAlert(_ sender: Any) {
        SCLAlertView().showEdit("Sample Edit", subTitle: "Edit内容を通知する。") // Edit
    }
    
    @IBAction func hideCloseButtonAlert(_ sender: Any) {
        let appearance = SCLAlertView.SCLAppearance(
            showCloseButton: false
        )
        let alertView = SCLAlertView(appearance: appearance)
        alertView.showSuccess("Sample No button", subTitle: "2秒後に消えます", duration: 2)
        
        // durationを指定しなかったら、永久に残る。。。
    }
    
    
}

