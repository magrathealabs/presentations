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
### Embutindo Golang em aplicações Ruby

<!-- .element: class="cover-title" -->

<div class="cover-bottom-logo">
  ![images/mlabs/white.png](images/mlabs/white.png)
  <p>www.magrathealabs.com</p>
</div>

Note: Vamos apresentar como, porquê e para que imbutir golang em aplicações ruby

---

<!-- .slide: data-background-image="images/golang.png" data-background-size="cover"; style="height: 100%" -->

### Objetivos da linguagem Go

----

 - Programação concorrente e efetiva
 - Omissão de diversas características em prol da eficiência:
   - Exceções
   - Herança
   - Programação genérica
   - Sobrecarga de métodos

----

 - GC
   - yacc e bison
 - GCCGO
   - analisador recursivo

----

Criado pela toda poderosa GOOGLE visando agilizar o processo de desenvolvimento de microsserviços.

 - Rápido
 - Paralelo
 - Multiplos núcleos
 - Compilado
 - Network!

----

 - Sintaxe limpa
 - Poderosa biblioteca padrão
 - Coletor de lixo
 - Portátil
 - Código Livre!

---

<!-- .slide: data-background-image="images/ruby.jpg" data-background-size="cover"; style="height: 100%" -->

### Objetivos da linguagem Ruby

----

 - Mais poderosa que Perl
 - Tudo é um objeto, incluindo o Bytecode
 - Suporte a programação funcional e reflexiva

----

 - Ruby MRI
 - MacRuby
 - HotRuby
 - Rubinius
 - JRuby (Ruby + Java = Oracle)
 - TruffleRuby (Ruby + Java = Oracle)
 - IronRuby (Ruby + CSharp)
 - RGSS (RPG Maker XP, VX e VX Ace)
 - TinyRuby (Ruby over Lua)
 - ...
 - GoRuby para programação concorrente?

----

 Hoje usamos o YARV - Yet Another Ruby VirtualMachine que substitui o antigo padrão Ruby MRI (Matz's Ruby Interpreter) após a versão 1.9

---

### E aí? Como misturamos isso?!

----

Através de bibliotecas compartilhadas!

Mas antes precisamos escrever um programa que seja compatível com essa forma de compartilhar funcionalidades.

---

### O ambiente Go!

Nota: Golang versão 1.5 ou maior

```golang
package main

import "C"

// export MyAdd
func MyAdd(a, b C.int) C.int {
  return a+b
}

func main() {
  // Adicione sua rotina de inicialização aqui
}
```

```sh
marlon@blackfox:$
  go build -o go_lib.so -buildmode=c-shared go_lib.go
```
---

### O Ambiente Ruby

Nota: Ruby 1.9.3 ou maior

```sh
  gem install ffi
```

```ruby
require 'ffi'

class GoLib
  extend FFI::Library
  ffi_lib './go_lib.so'
  attach_function :MyAdd, [:int, :int], :int

  alias my_add MyAdd
end

include GoLib

puts my_add(2, 5)
# => 7
```

---

### E qual o ganho de desempenho?

---

### Conclusões

----

Perca da reflexão sobre o código nativo.

----

Perca de desempenho na comunicação entre a aplicação ruby e a aplicação Golang.

----

Ganho de desempenho ao executar algoritmos complexos no ambiente Go!

----

Facilidade para desacoplar a aplicação Go para um microsserviço.
O gargalo para de ser a comunicação entre os ambientes e torna-se a rede!

---

### Perguntas
