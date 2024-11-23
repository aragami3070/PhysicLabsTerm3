#import "conf.typ" : conf
// #import "@preview/cetz:0.2.2"
#import "@preview/fletcher:0.4.5" as fletcher: diagram, node, edge

#show: conf.with(
  title: [Лабораторная работа 19],
  type: "referat",
  info: (
      author: (
        name: [Смирнова Егора Ильича, Храмова Александра Дмитриевича],
        faculty: [КНиИТ],
        group: "251",
        sex: "plural"
      ),
      inspector: (
        degree: "",
        name: ""
      )
  ),
  settings: ( title_page: (
      enabled: true
    ),
    contents_page: (
      enabled: true
    )
  )
)

#set math.equation(numbering: "(1)", supplement: [])
#set figure(supplement: "Рис.")

#include "sections/section1.typ"

#include "sections/section2.typ"

#include "sections/measurements.typ"

#include "sections/experementInaccuracy.typ"
