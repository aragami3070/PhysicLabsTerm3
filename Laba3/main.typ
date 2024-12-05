#import "conf.typ" : conf
// #import "@preview/cetz:0.2.2"
#import "@preview/fletcher:0.4.5" as fletcher: diagram, node, edge

#show: conf.with(
  title: [Лабораторная работа 3],
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

#let indent = 1cm
#let styled = [#set text(red)].func()
#let space = [ ].func()
#let sequence = [].func()

#let turn-on-first-line-indentation(
  doc,
  last-is-heading: false, // space and parbreak are ignored
  indent-already-added: false,
) = {
  for (i, elem) in doc.children.enumerate() {
    let element = elem.func()
    if element == text {
      let previous-elem = doc.children.at(i - 1)
      if i == 0 or last-is-heading or previous-elem.func() == parbreak {
        if not indent-already-added {
          indent-already-added = true
          h(indent)
        }
      }
      elem
    } else if element == heading {
      indent-already-added = false
      last-is-heading = true
      elem
    } else if element == space {
      elem
    } else if element == parbreak {
      indent-already-added = false
      elem
    } else if element == sequence {
      turn-on-first-line-indentation(
        elem,
        last-is-heading: last-is-heading,
        indent-already-added: indent-already-added,
      )
    } else if element == styled {
      styled(turn-on-first-line-indentation(
        elem.child,
        last-is-heading: last-is-heading,
        indent-already-added: indent-already-added,
      ), elem.styles)
    } else {
      indent-already-added = false
      last-is-heading = false
      elem
    }
  }
}

#show: turn-on-first-line-indentation

#set par(justify: true)

#include "sections/section1.typ"
