package com.mockmall.item.client.service;

import com.mockmall.commonbase.result.GeneralResult;
import com.mockmall.commonbase.result.Result;
import com.mockmall.item.client.bo.CarouselBO;
import com.mockmall.item.service.ICarouselService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * CarouselClient
 *
 * @author ccomma
 */
@Service
public class CarouselClientServiceImpl implements ICarouselClientService {

    @Resource
    private ICarouselService carouselService;

    @Override
    public Result<List<CarouselBO>> getCarouselListByShow() {
        return GeneralResult.successWithData(carouselService.listCarouselByShow());
    }

}
