//
//  ViewController.swift
//  第九次实验2Scroll View
//
//  Created by apple on 2018/11/13.
//  Copyright © 2018年 mlj. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControll: UIPageControl!
    
    @IBOutlet weak var scrollView2: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        for i in 1...7{
            let imageView = UIImageView(image: UIImage(named: "\(i)"))
            imageView.contentMode = .scaleAspectFit
            //表示位置
            imageView.frame = CGRect(x: CGFloat(i-1) * scrollView.bounds.width, y: 0, width:scrollView.bounds.width, height: scrollView.bounds.height)
            //在view中追加图像
            scrollView.addSubview(imageView)
        }
        
        scrollView.contentSize = CGSize(width: scrollView.bounds.width * 7, height: scrollView.bounds.height)
        //设置图像边界
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false

        pageControll.numberOfPages = 7
        pageControll.currentPage = 0
        /////////////////////////////////////////////////////////
        
        let imageView2 = UIImageView(image: UIImage(named: "1"))
        scrollView2.addSubview(imageView2)
        scrollView2.contentSize = imageView2.bounds.size
        
        scrollView2.minimumZoomScale = 0.2
        scrollView2.maximumZoomScale = 5
        scrollView2.delegate = self
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return scrollView2.subviews.first
    }
    

    @IBAction func pageControllClicked(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        let rect = CGRect(x: CGFloat(currentPage) * scrollView.bounds.width, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
        scrollView.scrollRectToVisible(rect, animated: true)

    }


    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = scrollView.contentOffset.x/scrollView.bounds.width
        pageControll.currentPage = Int(currentPage)
    }


    

    
    
    
    
}

