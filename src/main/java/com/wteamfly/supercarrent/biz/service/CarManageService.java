package com.wteamfly.supercarrent.biz.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.wteamfly.supercarrent.biz.dao.CarInfoDaoProxy;
import com.wteamfly.supercarrent.biz.dao.SuperDaoProxy;
import com.wteamfly.supercarrent.entity.po.CarInfoPo;
import com.wteamfly.supercarrent.entity.po.PaginationPo;
import com.wteamfly.supercarrent.entity.vo.CarInfoVo;
/**
 * 汽车管理Service层.
 * @author Imissyou
 *
 */
public class CarManageService {
	 /**
     * log4j实例对象.
     */
    private static Logger logger = LogManager
            .getLogger(CarManageService.class);

    /**
     * 单例对象.
     */
    private static CarManageService instance = new CarManageService();

    /**
     * 单例模式的私有构造方法.
     */
    private CarManageService() {
    }
    
    /**
     * 获取单例.
     * 
     * @return 单例
     */
    public static CarManageService getInstance() {
        return instance;
    }
    
    //开始业务的编辑
  
	/**
	 * 根据钱找车.
	 * @param paginationPo   页面实体.
	 * @param carInfoPo      汽车实体.
	 * @return ResultMessage 从小到大排序的结果合集.
	 */
	public final ResultMessage findCarsByMoney(final PaginationPo paginationPo,final CarInfoPo carInfoPo) {
		logger.debug("进入findCarsByBrand方法");
		  ResultMessage rs = new ResultMessage();
	        try {
	            CarInfoDaoProxy daoproxy = CarInfoDaoProxy
	                    .getInstance();
	            PaginationPo pageResult = daoproxy.findCarsByMoney(
	                    paginationPo, carInfoPo);

	            @SuppressWarnings("unchecked")
	            List<CarInfoPo> listPos = (List<CarInfoPo>) pageResult
	                    .getList();
	            List<CarInfoVo> listVos = new ArrayList<CarInfoVo>();
	            CarInfoVo vo = null;
	            for (CarInfoPo carPo : listPos) {
	                vo = new CarInfoVo();
	                vo.poToVo(carPo);
	                listVos.add(vo);
	            }

	            Map<String, Object> parm = new HashMap<String, Object>();
	            parm.put("pageList", listVos);
	            parm.put("totalCount", pageResult.getTotalCount());

	            rs.setResultParm(parm);
	            rs.setResultInfo("分页成功");
	            rs.setServiceResult(true);
	        } catch (Exception e) {
	            logger.error(e);
	            e.printStackTrace();
	        }
		logger.debug("退出findCarsByBrand方法");
		return rs;
	}
    
	/**
	 *  根据品牌或者类型找车.
	 * @param paginationPo  分页实体.
	 * @param carInfoPo     汽车实体 .
	 * @return ResultMessage  结果集合.
	 */
	public final ResultMessage findCarsByUser(final PaginationPo paginationPo,final CarInfoPo carInfoPo) {
		logger.debug("进入findCarsByBrand方法");
		 ResultMessage rs = new ResultMessage();
	        try {
	            SuperDaoProxy daoproxy = SuperDaoProxy
	                    .getInstance();
	            PaginationPo pageResult = daoproxy.pageEntity(
	                    paginationPo, carInfoPo);

	            @SuppressWarnings("unchecked")
	            List<CarInfoPo> listPos = (List<CarInfoPo>) pageResult
	                    .getList();
	            List<CarInfoVo> listVos = new ArrayList<CarInfoVo>();
	            CarInfoVo vo = null;
	            for (CarInfoPo carPo : listPos) {
	                vo = new CarInfoVo();
	                vo.poToVo(carPo);
	                listVos.add(vo);
	            }

	            Map<String, Object> parm = new HashMap<String, Object>();
	            parm.put("pageList", listVos);
	            parm.put("totalCount", pageResult.getTotalCount());

	            rs.setResultParm(parm);
	            rs.setResultInfo("分页成功");
	            rs.setServiceResult(true);
	        } catch (Exception e) {
	            logger.error(e);
	            e.printStackTrace();
	        }
		logger.debug("退出findCarsByBrand方法");
		return rs;
	}

    /**
     * 获取所有汽车的实体类.
     * @param paginationPo  分页实体.
     * @param carInfoPo     汽车实体 .
     * @return              结果集合.
     */
	public final ResultMessage queryALLCarList(final PaginationPo paginationPo,
			final CarInfoPo carInfoPo) {
		logger.debug("进入queryALLCarList方法");
		 ResultMessage rs = new ResultMessage();
	        try {
	            CarInfoDaoProxy daoproxy = CarInfoDaoProxy
	                    .getInstance();
	            PaginationPo pageResult = daoproxy.queryALLCarList(
	                    paginationPo, carInfoPo);

	            @SuppressWarnings("unchecked")
	            List<CarInfoPo> listPos = (List<CarInfoPo>) pageResult
	                    .getList();
	            List<CarInfoVo> listVos = new ArrayList<CarInfoVo>();
	            CarInfoVo vo = null;
	            for (CarInfoPo carPo : listPos) {
	                vo = new CarInfoVo();
	                vo.poToVo(carPo);
	                listVos.add(vo);
	            }

	            Map<String, Object> parm = new HashMap<String, Object>();
	            parm.put("pageList", listVos);
	            parm.put("totalCount", pageResult.getTotalCount());

	            rs.setResultParm(parm);
	            rs.setResultInfo("分页成功");
	            rs.setServiceResult(true);
	        } catch (Exception e) {
	            logger.error(e);
	            e.printStackTrace();
	        }
		logger.debug("退出queryALLCarList方法");
		return rs;
	}
	
	
}
