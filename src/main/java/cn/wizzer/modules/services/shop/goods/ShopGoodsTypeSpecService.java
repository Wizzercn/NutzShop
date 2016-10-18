package cn.wizzer.modules.services.shop.goods;

import cn.wizzer.common.base.Service;
import cn.wizzer.modules.models.shop.Shop_goods_type_spec;
import org.nutz.dao.Dao;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.log.Log;
import org.nutz.log.Logs;
@IocBean(args = {"refer:dao"})
public class ShopGoodsTypeSpecService extends Service<Shop_goods_type_spec> {
	private static final Log log = Logs.get();

    public ShopGoodsTypeSpecService(Dao dao) {
    	super(dao);
    }
}

