//
//  File.swift
//
//
//  Created by admin on 2021/7/28.
//
import JLRouterService
import JLRouter
import GoodsModule
import GoodsDetaileMoudle
import JLTabMoudle
import HomeMoudle
import GoodsSearchModule
import RankListModule
import AddressManagement
import OrderModule
import GoodsShoppingCartModule
import GlobalAlertManagement
import DeeplinkModule
import SettingModule
import StoreHomepageModule
import GroupBuyingModule

public class JLRouterCenter {
    public init() {}
}


// MARK: - 获取组件
extension JLRouterCenter: JLRouterServiceProtocol {
    
    public func orderDetaileInput() -> OrderDetaileInput {
        return JLRouter<OrderDetaileInput>.makeDestination()
    }
    
    public func goodsFiltraInput() -> GoodsFiltraInput {
       return JLRouter<GoodsFiltraInput>.makeDestination()
    }
    
    public func goodsDetaileInput() -> GoodsDetaileInput {
       return JLRouter<GoodsDetaileInput>.makeDestination()
    }
    
    public  func goodsInput() -> GoodsInput {
        
        return JLRouter<GoodsInput>.makeDestination()
    }
    
    public func homeInput() -> HomeInput {
        
        return JLRouter<HomeInput>.makeDestination()
    }
    
    public func goodsSearchInput() -> GoodsSearchInput {
        
        return JLRouter<GoodsSearchInput>.makeDestination()
    }
    
    public func rankListInput() -> RankListInput {
        return JLRouter<RankListInput>.makeDestination()
    }
    
    public func addressManagementInput() -> AddressManagementInput {
        return JLRouter<AddressManagementInput>.makeDestination()
    }
    
    public func orderInput() -> OrderInput {
       return JLRouter<OrderInput>.makeDestination()
    }
    
    public func goodsShoppingCartInput() -> GoodsShoppingCartInput {
       return JLRouter<GoodsShoppingCartInput>.makeDestination()
    }
    
    public func globalAlertInput() -> GlobalAlertManagementInput {
        return JLRouter<GlobalAlertManagementInput>.makeDestination()
    }
    
    public func deeplinkInput() -> DeeplinkInput {
        return JLRouter<DeeplinkInput>.makeDestination()
    }
    
    public func tabbarInput() -> JLTabBarControllerInput {
        return JLRouter<JLTabBarControllerInput>.makeDestination()
    }
    
    public func appUpdateInput() -> AppUpdateManagerInput.Type {
        return JLRouter<AppUpdateManagerInput.Type>.makeDestination()
    }
    
    public func storeHomepageInput() -> StoreHomepageInput {
        return JLRouter<StoreHomepageInput>.makeDestination()
    }
//    public func OrderDetaileInput() -> OrderDetaileInput {
//        return JLRouter<OrderDetaileInput>.makeDestination()
//    }
    
    public func bindOtherInput() -> IBindOtherInput {
        return JLRouter<IBindOtherInput>.makeDestination()
    }
    
    public func groupBuyingInput() -> GroupBuyingInput {
        return JLRouter<GroupBuyingInput>.makeDestination()
    }
}
