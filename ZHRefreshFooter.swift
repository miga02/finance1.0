//
//  ZHRefreshFooter.swift
//  finance
//
//  Created by roya on 2019/1/10.
//  Copyright © 2019年 EmrahKorkmaz. All rights reserved.
//


import UIKit

/// 上拉加载更多
open class ZHRefreshFooter: ZHRefreshComponent {
    
    /// 忽略scrollView contentInset的bottom
    public var ignoredScrollViewContentInsetBottom: CGFloat = 0.0
    
    // MARK: - 构造方法
    
    /// 类方法, 创建footer
    static public func footerWithRefreshing(block: @escaping ZHRefreshComponentRefreshingBlock) -> ZHRefreshFooter {
        let footer = self.init()
        footer.refreshingBlock = block
        return footer
    }
    
    /// 带有回调target和action的footer
    static public func footerWithRefreshing(target: AnyObject, action: Selector) -> ZHRefreshFooter {
        let footer = self.init()
        footer.setRefreshing(target: target, action: action)
        return footer
    }
    
    // MARK: - override method
    
    override open func prepare() {
        super.prepare()
        /// 设置高度
        self.zh_h = ZHRefreshKeys.footerHeight
    }
    
    override open func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        guard newSuperview != nil, let indeedScrollView = self.scrollView else { return }
        /// 监听scrollView的数据的变化
        if indeedScrollView.isKind(of: UITableView.self) || indeedScrollView.isKind(of: UICollectionView.self) {
            indeedScrollView.zh_reloadDataBlock = { totalCount in
                /// 预留属性
            }
        }
    }
    
    // MARK: - public method
    
    /// 提示没有更多数据
    public func endRefreshingWithNoMoreData() {
        DispatchQueue.main.async {
            self.state = .nomoreData
        }
    }
    
    /// 重置没有更多数据
    public func resetNoMoreData() {
        DispatchQueue.main.async {
            self.state = .idle
        }
    }
}
