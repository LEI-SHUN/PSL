SVM faruto version
by faruto
Email:farutoliyang@gmail.com
2009.10.28
==================================
Content:

scaleForSVM:归一化
函数接口:
[train_scale,test_scale] = scaleForSVM(train_data,test_data,ymin,ymax)
====================================
pcaForSVM:pca降为预处理
函数接口:
[train_pca,test_pca] = pcaForSVM(train,test,threshold)
====================================
SVMcgForClass:分类问题参数寻找[grid search based on CV]
函数接口:
[bestacc,bestc,bestg] = SVMcgForClass(train_label,train,cmin,cmax,gmin,gmax,v,cstep,gstep,accstep)

SVMcgForRegress:回归问题参数寻优[grid search based on CV]
函数接口:
[mse,bestc,bestg] = SVMcgForRegress(train_label,train,cmin,cmax,gmin,gmax,v,cstep,gstep,msestep)
======================================
psoSVMcgForClass:分类问题参数寻优[pso based on CV]
函数接口:
[bestCVaccuarcy,bestc,bestg,pso_option] = psoSVMcgForClass(train_label,train,pso_option)

psoSVMcgForRegress:回归问题参数寻优[pso based on CV]
函数接口:
[bestCVmse,bestc,bestg,pso_option] = psoSVMcgForRegress(train_label,train,pso_option)
=======================================
gaSVMcgForClass:分类问题参数寻优[ga based on CV]
函数接口:
[bestCVaccuarcy,bestc,bestg,ga_option] = gaSVMcgForClass(train_label,train,ga_option)

gaSVMcgForRegress:回归问题参数寻优[ga based on CV]
函数接口:
[bestCVmse,bestc,bestg,ga_option] = gaSVMcgForRegress(train_label,train,ga_option)
======================================








