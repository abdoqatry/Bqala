//
//  FeesVC.swift
//  Bqala
//
//  Created by Moe on 6/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class FeesVC: UIViewController {
    
    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7172784675)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var contantview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pickerview : UIPickerView = {
        let picker = UIPickerView()
        
        picker.translatesAutoresizingMaskIntoConstraints = false
        return picker
    }()
    var tittlelabel : UILabel = {
       let label = UILabel()
        label.text = "your offer"
    
        label.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var OkButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("confirm".localize, for: .normal)
        butt.setTitleColor(.black, for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = .clear
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(FeesCell.self, forCellReuseIdentifier: "FeesCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
//    var cancelButt : UIButton = {
//        let butt = UIButton()
//        butt.setTitle("cancel".localize, for: .normal)
//        butt.setTitleColor(.black, for: .normal)
//        butt.translatesAutoresizingMaskIntoConstraints = false
//        return butt
//    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        mainTableView.delegate = self
        mainTableView.dataSource = self
        setview()
        settarget()
        getPosition()
        mainview.isUserInteractionEnabled = true
        mainview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.diss)))
        
        
    }
    
    
    
    var data : Fees2? {
        didSet {
            self.mainTableView.reloadData()
        }
    }
 
    
    func getPosition(){
        let url = "http://bqala.panorama-q.com/api/delivery/charge-fees"
        callApi(Fees2.self, url: url, method: .get,parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data = data
                self?.mainTableView.reloadData()
                
            }
        }
        
    }
    
    
    func setview(){
        view.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        view.addSubview(contantview)
        NSLayoutConstraint.activate([
            contantview.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0),
            contantview.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            contantview.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            contantview.heightAnchor.constraint(equalToConstant: 250)
            ])
        mainview.addSubview(tittlelabel)
        NSLayoutConstraint.activate([
            tittlelabel.topAnchor.constraint(equalTo: contantview.topAnchor, constant: 10),
            tittlelabel.centerXAnchor.constraint(equalTo: contantview.centerXAnchor, constant: 0),
            tittlelabel.heightAnchor.constraint(equalToConstant: 30)
            ])
        contantview.addSubview(OkButt)
        NSLayoutConstraint.activate([
            OkButt.bottomAnchor.constraint(equalTo: contantview.bottomAnchor, constant: 0),
            OkButt.trailingAnchor.constraint(equalTo: contantview.trailingAnchor, constant: 0),
            OkButt.heightAnchor.constraint(equalToConstant: 40),
            OkButt.leadingAnchor.constraint(equalTo: contantview.leadingAnchor, constant: 0)
            ])
//        contantview.addSubview(cancelButt)
//        NSLayoutConstraint.activate([
//            cancelButt.topAnchor.constraint(equalTo: contantview.topAnchor, constant: 10),
//            cancelButt.leadingAnchor.constraint(equalTo: contantview.leadingAnchor, constant: 10),
//            cancelButt.heightAnchor.constraint(equalToConstant: 16)
//            ])
        
        contantview.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: tittlelabel.bottomAnchor, constant: 10),
            mainTableView.leadingAnchor.constraint(equalTo: contantview.leadingAnchor, constant: 50),
            mainTableView.centerXAnchor.constraint(equalTo: contantview.centerXAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: OkButt.topAnchor, constant: 0)
            ])
        
    }
    
     var data2 : Ofer?
    
    var mohamed = ""
    var id = 0
    @objc func Confirm(){
        guard !mohamed.isEmpty else{
            showAlert(title: "please chose offer", messages: nil, message: nil, selfDismissing: true)
            return }
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/send-fees-offer"
        let parameter = [
            "cart_id" : id,
            "fees_value" : mohamed
            ] as [String : Any]
        callApi(Ofer.self, url: url, parameters: parameter) { [weak self](data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data2 = data
                
                self?.dismiss(animated: true, completion: nil)
            }
        }

       
        
    }
    @objc func diss(){
        SVProgressHUD.dismiss()
        dismiss(animated: true, completion: nil)
    }
    
   
    
    func settarget(){
        OkButt.addTarget(self, action: #selector(Confirm), for: .touchUpInside)
       
    }
    
    
}


extension FeesVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         let count = data?.data.count ?? 0
        return count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "FeesCell") as? FeesCell
//        cell?.selectionStyle = .none
        if let cellData = data?.data[indexPath.row] {
            cell?.configer(data: cellData)
          
        }
        
        return cell!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
                if data?.data.count != 0{
                    mohamed = data?.data[indexPath.row].value ?? ""
                }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    
    
    
}

//
//extension FeesVC : UIPickerViewDelegate,UIPickerViewDataSource{
//
//    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
//        return 1
//
//    }
//
//    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
////        let count = data?.data.count ?? 0
//        return 3
//
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//
//        //        self.view.endEditing(true)
//
////        var Data = data?.data[row].name
////        var data2 = data?.data[row].value
////        let all = Data ?? "" + data2!
//        return data?.data[row].name
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)  {
//        SVProgressHUD.dismiss()
////        if data?.data.count != 0{
////
////            id = (data?.data[row].id) ?? 0
////        }else {
////            showAlert(title: "check your network", messages: nil, message: nil, selfDismissing: true)
////        }
//
//
//    }
//
//
//}




struct Fees2:BaseCodable{
    var value: Bool?
    
    var msg: String?
    
    let data: [data]
}

// MARK: - Fees
struct data: Codable {
    let id: Int?
    let name, value: String?
}


struct Ofer: BaseCodable{
    var value: Bool?
    
    var msg: String?
    
    let data: Offer?
}

struct Offer: Codable {
    let status: Bool?
}
