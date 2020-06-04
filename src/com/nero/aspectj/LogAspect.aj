package com.nero.aspectj;

public aspect LogAspect {
    //定义一个Pointcut, 其名为logPointcut
    //该Pointcut代表了后面给出的切入点表达式，这样可复用该切入点表达式
    pointcut logPointcut()
            :execution(* com.nero.aspectj.service.*.*(..));
    after (): logPointcut ()
            {
                System.out.println("模拟记录日志...");
            }

}
