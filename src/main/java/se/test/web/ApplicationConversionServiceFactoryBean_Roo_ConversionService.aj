// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package se.test.web;

import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import se.test.domain.Ying;
import se.test.web.ApplicationConversionServiceFactoryBean;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Ying, String> ApplicationConversionServiceFactoryBean.getYingToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<se.test.domain.Ying, java.lang.String>() {
            public String convert(Ying ying) {
                return new StringBuilder().append(ying.getName()).append(" ").append(ying.getDuedate()).toString();
            }
        };
    }
    
    public Converter<Long, Ying> ApplicationConversionServiceFactoryBean.getIdToYingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, se.test.domain.Ying>() {
            public se.test.domain.Ying convert(java.lang.Long id) {
                return Ying.findYing(id);
            }
        };
    }
    
    public Converter<String, Ying> ApplicationConversionServiceFactoryBean.getStringToYingConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, se.test.domain.Ying>() {
            public se.test.domain.Ying convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Ying.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getYingToStringConverter());
        registry.addConverter(getIdToYingConverter());
        registry.addConverter(getStringToYingConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
