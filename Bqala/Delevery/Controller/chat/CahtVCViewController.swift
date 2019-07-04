//
//  CahtVCViewController.swift
//  Bqala
//
//  Created by Moe on 6/17/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CahtVCViewController: UIViewController,UITextViewDelegate {
    
    @IBOutlet weak var ChatTable: UITableView!
    @IBOutlet weak var chatTV: UITextView!
    @IBOutlet weak var sendMsgBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var tableHeightConstriant: NSLayoutConstraint!
    @IBOutlet weak var txtViewHeight: NSLayoutConstraint!
    @IBOutlet weak var outSafeView: UIView!
    @IBOutlet weak var sendBtn: UIButton!
    
    var tableHeightContant: CGFloat = 0
    
    var MassageArray : [Messages] = [Messages]()
    var textHeightConstraint: NSLayoutConstraint!
    
    private var keyboardHeight: CGFloat = 0.0
    private var firstTime = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ChatTable.register(ChatCell.self, forCellReuseIdentifier: "ChatCell")
        ChatTable.delegate = self
        ChatTable.dataSource = self
        chatTV.delegate = self
        //        chatTV.backgroundColor = .clear
        //                chatTV.isOpaque = false
        ChatTable.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(chatTapped)))
        ChatTable.backgroundView = nil
        ChatTable.tableFooterView = UIView()
        //        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        ChatTable.contentInset = .zero
        ChatTable.separatorColor = .clear
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
        self.navigationController?.navigationBar.barTintColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if MassageArray.count != 0 {
            //            let indexPath = IndexPath(row: MassageArray.count - 1, section: 0)
            //            self.ChatTable.scrollToRow(at: indexPath, at: .bottom, animated: true)
            //            self.ChatTable.scrollToRow(at: indexPath, at: .bottom, animated: true)
        }
        if textView.text == "send massage" {
            textView.text = ""
            textView.textColor = #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.2352941176, alpha: 1)
        }
    }
    
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = ""
            textView.textColor = UIColor.gray
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        //        let indexPath = IndexPath(row: MassageArray.count - 1, section: 0)
        //        self.ChatTable.scrollToRow(at: indexPath, at: .bottom, animated: true)
        if textView.text.isEmpty{
            //            textView.textColor = UIColor.lightGray
            textView.text = ""
            sendBtn.isEnabled = false
            let fixedWidth = textView.frame.size.width
            let newSize = textView.sizeThatFits(CGSize.init(width: fixedWidth, height: CGFloat(MAXFLOAT)))
            var newFrame = textView.frame
            newFrame.size = CGSize.init(width: CGFloat(fmaxf(Float(newSize.width), Float(fixedWidth))), height: newSize.height)
            self.txtViewHeight.constant = 60
        }
        else{
            sendBtn.isEnabled = true
            let fixedWidth = textView.frame.size.width
            let newSize = textView.sizeThatFits(CGSize.init(width: fixedWidth, height: CGFloat(MAXFLOAT)))
            var newFrame = textView.frame
            newFrame.size = CGSize.init(width: CGFloat(fmaxf(Float(newSize.width), Float(fixedWidth))), height: newSize.height)
            
            self.txtViewHeight.constant = newSize.height
        }
        let bottomOffset = CGPoint(x: 0, y: ChatTable.contentSize.height - ChatTable.bounds.size.height)
        ChatTable.setContentOffset(bottomOffset, animated: true)
        
    }
    
    @objc private func chatTapped() {
        self.view.endEditing(true)
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            //            ChatTable.contentInset = UIEdgeInsetsMake(0, 0, keyboardSize.height, 0)
            //            ChatTable.frame.origin.y = 0
            
            //if tableHeightContant == tableHeightConstriant.constant {
            if firstTime{
                firstTime = false
                keyboardHeight = keyboardSize.height
            }
            sendMsgBottomConstraint.constant = -1 * (keyboardHeight - outSafeView.frame.height)
            let indexPath = IndexPath(row: self.MassageArray.count - 1, section: 0)
            //                    if let _ = self.chatTable.cellForRow(at: indexPath){
            if MassageArray.count != 0 {
                self.ChatTable.scrollToRow(at: indexPath, at: .bottom, animated: true)
            }
            
            print(keyboardSize.height)
            let bottomOffset = CGPoint(x: 0, y: ChatTable.contentSize.height - ChatTable.bounds.size.height)
            ChatTable.setContentOffset(bottomOffset, animated: true)
            self.view.layoutIfNeeded()
            
            
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        sendMsgBottomConstraint.constant = 0
    }
    



}




extension CahtVCViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if MassageArray.count == 0{
            return 0
        }else{
            return MassageArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatCell") as? ChatCell
        
        cell?.selectionStyle = .none
        cell?.chatLable2.text = MassageArray[indexPath.row].messageBody
        cell?.chatLable.text = MassageArray[indexPath.row].messageBody
        
        cell?.senderId.text = MassageArray[indexPath.row].sender
        
        cell?.dateLabel.text = MassageArray[indexPath.row].date
        cell?.dateLabel2.text = MassageArray[indexPath.row].date
        
//        if email == MassageArray[indexPath.row].sender{
//            cell?.chatLable.isHidden = true
//            cell?.tablecell.isHidden = true
//            cell?.dateLabel.isHidden = true
//            cell?.chatLable2.isHidden = false
//            cell?.tablecell2.isHidden = false
//            cell?.dateLabel2.isHidden = false
//            cell?.dateLabel2.text = MassageArray[indexPath.row].date
//            cell?.chatLable2.text = MassageArray[indexPath.row].messageBody
//        }else{
//            cell?.chatLable.isHidden = false
//            cell?.tablecell.isHidden = false
//            cell?.dateLabel2.isHidden = true
//            cell?.dateLabel.isHidden = false
//            cell?.chatLable2.isHidden = true
//            cell?.tablecell2.isHidden = true
//            cell?.dateLabel.text = MassageArray[indexPath.row].date
//            cell?.chatLable.text = MassageArray[indexPath.row].messageBody
//        }
        
        return cell!
        
    }
    //    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //        return  100
    //    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}





class Messages {
    
    //TODO: Messages need a messageBody and a sender variable
    
    var sender : String = ""
    var messageBody : String = ""
    var date : String = ""
    
}
