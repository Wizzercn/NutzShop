package cn.wizzer.modules.controllers.platform.shop.goods;

import cn.wizzer.common.annotation.SLog;
import cn.wizzer.common.base.Result;
import cn.wizzer.common.filter.PrivateFilter;
import cn.wizzer.common.page.DataTableColumn;
import cn.wizzer.common.page.DataTableOrder;
import cn.wizzer.modules.models.shop.Shop_goods_spec;
import cn.wizzer.modules.models.shop.Shop_goods_spec_values;
import cn.wizzer.modules.services.shop.goods.ShopGoodsSpecService;
import cn.wizzer.modules.services.shop.goods.ShopGoodsSpecValuesService;
import org.apache.shiro.authz.annotation.RequiresAuthentication;
import org.nutz.dao.Cnd;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.lang.Strings;
import org.nutz.log.Log;
import org.nutz.log.Logs;
import org.nutz.mvc.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@IocBean
@At("/platform/shop/goods/spec")
@Filters({@By(type = PrivateFilter.class)})
public class ShopGoodsSpecController {
    private static final Log log = Logs.get();
    @Inject
    private ShopGoodsSpecService shopGoodsSpecService;
    @Inject
    private ShopGoodsSpecValuesService shopGoodsSpecValuesService;

    @At("")
    @Ok("beetl:/platform/shop/goods/spec/index.html")
    @RequiresAuthentication
    public void index() {

    }

    @At
    @Ok("json:full")
    @RequiresAuthentication
    public Object data(@Param("length") int length, @Param("start") int start, @Param("draw") int draw, @Param("::order") List<DataTableOrder> order, @Param("::columns") List<DataTableColumn> columns) {
        Cnd cnd = Cnd.NEW();
        return shopGoodsSpecService.data(length, start, draw, order, columns, cnd, null);
    }

    @At
    @Ok("beetl:/platform/shop/goods/spec/add.html")
    @RequiresAuthentication
    public void add() {

    }

    @At
    @Ok("json")
    @SLog(tag = "新建商品规格", msg = "规格名称:${args[0].name}")
    public Object addDo(@Param("..") Shop_goods_spec shopGoodsSpec, @Param("spec_value") String[] spec_value, @Param("spec_picurl") String[] spec_picurl, HttpServletRequest req) {
        try {
            shopGoodsSpecService.insert(shopGoodsSpec);
            for (int i = 0; i < spec_value.length; i++) {
                Shop_goods_spec_values values = new Shop_goods_spec_values();
                values.setSpecId(shopGoodsSpec.getId());
                values.setSpec_value(Strings.sNull(spec_value[i]));
                if (shopGoodsSpec.getType() == 1) {
                    values.setSpec_picurl(Strings.sNull(spec_picurl[i]));
                }
                shopGoodsSpecValuesService.insert(values);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

    @At("/edit/?")
    @Ok("beetl:/platform/shop/goods/spec/edit.html")
    @RequiresAuthentication
    public Object edit(String id) {
        return shopGoodsSpecService.fetchLinks(shopGoodsSpecService.fetch(id), "specValues");
    }

    @At
    @Ok("json")
    @SLog(tag = "修改商品规格", msg = "规格名称:${args[0].name}")
    public Object editDo(@Param("..") Shop_goods_spec shopGoodsSpec, @Param("spec_value") String[] spec_value, @Param("spec_picurl") String[] spec_picurl, HttpServletRequest req) {
        try {

            shopGoodsSpec.setOpAt((int) (System.currentTimeMillis() / 1000));
            shopGoodsSpecService.updateIgnoreNull(shopGoodsSpec);
            shopGoodsSpecValuesService.clear(Cnd.where("specId", "=", shopGoodsSpec.getId()));
            for (int i = 0; i < spec_value.length; i++) {
                Shop_goods_spec_values values = new Shop_goods_spec_values();
                values.setSpecId(shopGoodsSpec.getId());
                values.setSpec_value(Strings.sNull(spec_value[i]));
                if (shopGoodsSpec.getType() == 1) {
                    values.setSpec_picurl(Strings.sNull(spec_picurl[i]));
                }
                shopGoodsSpecValuesService.insert(values);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }


    @At({"/delete", "/delete/?"})
    @Ok("json")
    @SLog(tag = "删除商品规格", msg = "ID:${args[2].getAttribute('id')}")
    public Object delete(String id, @Param("ids") String[] ids, HttpServletRequest req) {
        try {
            if (ids != null && ids.length > 0) {
                shopGoodsSpecService.deleteSpec(ids);
                req.setAttribute("id", org.apache.shiro.util.StringUtils.toString(ids));
            } else {
                shopGoodsSpecService.deleteSpec(id);
                req.setAttribute("id", id);
            }
            return Result.success("system.success");
        } catch (Exception e) {
            return Result.error("system.error");
        }
    }

}
