//
//  ViewController.swift
//  PDFViewr
//
//  Created by  Yujiro Saito on 2017/11/03.
//  Copyright © 2017年 yujiro_saito. All rights reserved.
//

import UIKit
import PDFKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pdfViewer = PDFView(frame: self.view.frame)
        
        //web pdf url
        let pdfURL = URL(string: "http://www.city.morioka.iwate.jp/_res/projects/default_project/_page_/001/009/440/2017gakugeikouza01.pdf")!
        
        let pdfDoc = PDFDocument(url: pdfURL)
        pdfViewer.document = pdfDoc
        pdfViewer.backgroundColor = .lightGray
        pdfViewer.autoScales = true
        pdfViewer.displayMode = .singlePageContinuous
        
        self.view.addSubview(pdfViewer)
        
        
        
    }

    
}

