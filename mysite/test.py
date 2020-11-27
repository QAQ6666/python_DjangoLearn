import random
def hongbaoRun(total,num):
    each=[]
    already=0
    for i in range(1,num):
        t = random.uniform(0.01, total-already)
        t = round(t, 2)
#为当前抢红包的人随机分配金额
#至少给剩下的人每人留一分钱
        each.append(t)
        already += t

    each.append(round(total - already, 2))
    return each

def hongbao(t,n):
    each=hongbaoRun(t,n)
    #print('第{}种随机分配方案：'.format(i+1),end="")
    print(each)

