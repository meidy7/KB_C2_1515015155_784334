predicates
nondeterm layar(symbol,symbol)
nondeterm hdd(symbol,symbol)
nondeterm ram(symbol,symbol)
nondeterm sistem_operasi(symbol,symbol)
nondeterm rusak(symbol,symbol)
nondeterm sebelumnya(symbol,symbol)

clauses
layar(acer,baik).
layar(lenovo,baik).
layar(asus,bermasalah).
layar(hp,baik).

hdd(acer,bermasalah).
hdd(asus,bermasalah).
hdd(lenovo,baik).
hdd(hp,baik).

ram(acer,baik).
ram(asus,baik).
ram(lenovo,bermasalah).
ram(hp,baik).

sistem_operasi(acer,bermasalah).
sistem_operasi(lenovo,baik).
sistem_operasi(asus,bermasalah).
sistem_operasi(hp,bermasalah).

sebelumnya(acer,kenavirus).
sebelumnya(lenovo,jatuh).
sebelumnya(acer,lag).
sebelumnya(lenovo,lag).
sebelumnya(hp,kenaair).

rusak(Laptop,bluescreen):-sistem_operasi(Laptop,bermasalah),hdd(Laptop,bermasalah),sebelumnya(Laptop,lag).
rusak(Laptop,hanyalayarmati):-layar(Laptop,baik),ram(Laptop,bermasalah).
rusak(Laptop,matitotal):-sistem_operasi(Laptop,baik),sebelumnya(Laptop,kenaair),ram(Laptop,bermasalah),
			hdd(Laptop,bermasalah).
GOAL
rusak(lenovo,matitotal).