= Теория

== Основные принципы

*Термин \<\<электромагнитная индукция>> обозначает процесс, посредством которого в проводящем контуре создается электрическое напряжение, когда изменяется магнитный поток, проходящий сквозь этот контур. Такое изменение потока может происходить вследствие измениения напряженности магнитного поля или из-за движения проводящего контура.*

Для того, чтобы описать взаимосвязь между рассматриваемыми величинами, часто рассматривают $U$-образный проводящий контур с подвижной поперечной перемычкой. Плоскость этого контура ориентируется таким образом, чтобы она была перпендикулярна силовым линиям однородного магнитного поля с плотностью потока B (см. @img2). Магнитный поток через площадь, ограниченную перемычкой, выражается как

$ Ф = B dot a dot b, $

где $a$ --- ширина, $b$ --- длина контура.

Если перемычку двигать со скоростью $v$, поток изменяется, так как меняется длина контура. Скорость изменения потока выражается следующим образом

$ (d Ф)/(d t) = B dot a dot v $

и в данном опыте ее наблюдают в виде напряжения

$ U = - B dot a dot v $

которое имеет величину порядка микровольт, но может быть измерено с помощью усилителя, рекомндуемого в качестве дополнительного оборудования.

Нпмного большее наведенное напяжение получается, если проводящий контур с несколькими витками на жесткой рамке движется в магнитном поле. Если рамка лишь частично попадает в магнитное поле, ситуация такова, как схематически показано на @img2. Продвижение рамки в магнитное поле приводит к изменению потока со скоростью

$ (d Ф_1)/(d t) = B dot N dot a dot v, $

где $N$ --- число витков

и ее можно измерить как наведенное напряжение.

$ U_1 = - B dot N dot a dot v $

Кака только проводящий контур оказывается полностью в магнитном поле наведенное напряжение вновь становится равным нулю. Дальнейшего измерения не происходит, пока контук не начинает выходить из магнитного поля. Теперь магнитный поток уменьшается, а наведенное напряжение имеет противоположный знак по сравнению с первоначальной ситуацией. Изменение знака также происходит, если направление движения контура изменяется на противаоположное.

В этом опыте изменятеся напряжение. приводящее в движение электродвигатель, используемый для перемещения проводящего контура. Этим создается ряд различных постоянных скоростей. Направление вращения электродвигателя также можно изменять. Входящая в комплект катушка также имеет промежуточную точку ответвления, чтобы наводимое напряжение можно было измераять для трех различных значений числа витков $N$.

== Оценочный расчет

Рассчитаем скорость по времени $t$, которое требуется проводящему контуру для того, чтобы полностю войти в магнитное поле, и соответствующему расстоянию $L$:

$ v = L/t $

Затем построим график зависисмости наведенного напряжения $U$ от скорости $v$. Оказаться, что точки графика лежат на прямой, проходящей через начало координат (см. @img3).

#figure(
  image("../images/img2.png",width: 92.6%),
  caption: "Изменение магнитного потока через проводящий контур при изменении его площади"
)<img2>

#figure(
  image("../images/img3.png"),
  caption: "Зависимость наведенного напряжения от скорости движения проводящего контура"
)<img3>