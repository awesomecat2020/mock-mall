package com.mockmall.item.service.client;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.bo.CarouselBO;
import com.mockmall.item.service.CarouselClientService;
import com.mockmall.item.service.CarouselService;
import org.apache.dubbo.config.annotation.DubboService;

import javax.annotation.Resource;
import java.util.List;

/**
 * CarouselClient
 *
 * @author ccomma
 */
@DubboService(version = "1.0.0")
public class CarouselClientServiceImpl implements CarouselClientService {

    @Resource
    private CarouselService carouselService;

    @Override
    public Result<List<CarouselBO>> getCarouselListByShow() {
        return GeneralResult.successWithData(carouselService.listCarouselByShow());
    }

}
