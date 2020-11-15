#language: pt

Funcionalidade: Fazer Login.

-Eu como professor.
-Eu quero fazer login na plataforma.

Cenario: Fazer login com sucesso.
Dado que eu tenho um usuario.
|usuario|GRUPOTBA\RodolfoP|
|senha  |Martinelli05112015|
Quando eu faco Login 
Entao eu verifico se estou logado