package com.entity.model;

import com.entity.BanjixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 班级信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-02-15 10:51:27
 */
public class BanjixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 班级名称
	 */
	
	private String banjimingcheng;
				
	
	/**
	 * 设置：班级名称
	 */
	 
	public void setBanjimingcheng(String banjimingcheng) {
		this.banjimingcheng = banjimingcheng;
	}
	
	/**
	 * 获取：班级名称
	 */
	public String getBanjimingcheng() {
		return banjimingcheng;
	}
			
}
