package com.nero.aspectj;

public aspect TxAspect {
    Object around():call(* com.nero.aspectj.service.*.*(..))
            {
                System.out.println("模拟开启事务...");
                //回调目标原来的方法
                Object rvt = proceed();
                System.out.println("模拟结束事务...");
                return rvt;
            }
}
