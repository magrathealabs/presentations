---
title: Imbutindo Golang em aplicações Ruby
highlight-theme: tomorrow-night
revealOptions:
  transition: slide
  slideNumber: false
  <!-- center: false -->
---

<!-- .slide: data-background-image="images/background.jpg" data-background-size="cover"; style="height: 100%" -->

Marlon Henry Schweigert
### Imbutindo Golang em aplicações Ruby

<!-- .element: class="cover-title" -->

<div class="cover-bottom-logo">
  ![images/mlabs/white.png](images/mlabs/white.png)
  <p>www.magrathealabs.com</p>
</div>

Note: Vamos apresentar como, porquê e para que imbutir golang em aplicações ruby

---

### Objetivos da linguagem Ruby

----

 - Mais poderosa que Perl
 - Mais orientada a objetos que Python
 - Suporte a programação funcional e reflexiva

----

 - Ruby MRI
 - JRuby
 - Rubinius
 - IronRuby
 - MacRuby
 - HotRuby
 - RGSS
 - ...

----

 Hoje usamos o YARV - Yet Another Ruby VirtualMachine que substitui o antigo padrão Ruby MRI (Matz's Ruby Interpreter) após a versão 1.9

---

### Objetivos da linguagem Go

----

 - Programação concorrente e efetiva
 - Omissão de diversas características em pró da eficiência:
   - Exceções
   - Herança
   - Programação Genérica
   - Sobrecarga de métodos

----

 - GC
   - yacc e bison
 - GCCGO
   - analisador recursivo

---

### Exportando Golang para biblioteca compartilhada

```golang
package main

import "C"

// export my_add
func my_add(a, b C.int) C.int {
  return a+b
}

func main() {
  // Adicione sua rotina de inicialização aqui
}
```
