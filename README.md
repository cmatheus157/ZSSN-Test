# zssn

Projeto em Flutter com base nos requisitos encontrados aqui https://gist.github.com/devthiago/c221cf47cea3a6a5dd353f1e24ad34b7


O projeto foi feito utilizando a versao 1.12.13 hotfix.8 do Flutter
 
 Optei por fazer utilizando o  Flutter Modular caso não conheça https://medium.com/flutterando/quais-os-problemas-que-o-flutter-modular-veio-resolver-deaed96b71b3

 É uma ferramenta interessante que pode ser usada junto com vários padrões, escolhi ela por causa que ela possibilita algumas facilidades como Rotas nomeadas, Injeção de Dependencias e separação por modulos esta primeira sendo muito útil na versão web do flutter. 

utilizei tambem  o MOBX para a gerencia de estado.

O plugin geolocator para a utilização do gps.

O banco de dados Hive para persistencia de dados. 

consegui completar as seguintes tarefas: 

Sign in as survivor If it is first time the application is running and the user has not created a survivor profile you must force the user create a new one. To do that, you will need to provide: name, age, gender, last location. You will also need to identify some items that belongs to the user, like: water, food, medication and ammunition. After the creation of your profile, store on device its identifier to avoid new registrations. Their belongings must be declared when they are first registered in the system. After that they can only change their inventory by means of trading with other survivors.

-Update your survivor location Your survivor data must be up to date, so your app should update the location of your survivor. To do that, you need to use your unique identifier and pass down the new coordinates.

-List of contacts The user can meet people and connect with them. This relation will provide you the ability to make trades and, if the person got infected, you can flag him/her. To create a new connection you have to use the other user's identifier.

 Por alguns detalhes que me travaram não pude completar as seguintes tarefas mas senti que com um pouco mais de tempo eu poderia realiza-las com sucesso.

-Flag survivor as infected In a chaotic situation like that, it's inevitable that a survivor may get contaminated by the virus. When this happens, we need to flag the survivor as infected. An infected survivor cannot trade with others, cannot access/manipulate their inventory, nor be listed in the reports (infected people are kinda dead anyway, see the item on reports below). A survivor is marked as infected when at least three other survivors report their contamination. When a survivor is infected, their inventory items become inaccessible (they cannot trade with others).

 Eu tive uma duvida na Api de itens pois não está documentado como deveria ser escrito os itens da munição e de medicamento 
-Trade items Survivors can trade items among themselves, but for it to happen they should be near from one another (last location)


 Para atualizar a localização é necessario  atualizar o nome, a idade e o gênero sendo assim optei por deixar de uma forma que e nescessario digitar essas informaçoes novamente para ocorrer a atualizaçao parafacilitar o teste 

Qualquer Dúvida no código pode entrar em contato comigo no email: carlos.matheus.10@hotmail.com
 
OBS:( Vale lembrar que a tarefa foi dado no periodo de Carnaval mereço alguns pontos pois cancelei minha viagem para o Interior)

Aguardo o Feedback.
 
Desde já agradeço a  Oportunidade.

Gostaria Muito de Colaborar com a Empresa Como Dev ou Estagiario para poder crescer dentro da propria empresa.


- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
