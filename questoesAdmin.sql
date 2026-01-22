1- Como o sistema registra e diferencia exemplares de uma mesma obra?
Ele registra o código de cada exemplar baseado no código da obra, puxando os dados da mesma.


2- É possível visualizar a lista completa de empréstimos ativos, com data de devolução prevista e usuário?
Sim, pois haverá a coleta das datas de empréstimo e devolução, o id do usuario, que traz todos os dados referentes a ele
e o status relativo ao empréstimo.


3- O sistema gera fila de espera automática quando todos os exemplares que estão emprestados?
Sim, porque só há a liberação de empréstimo quando houverem exemplares disponíveis e caso não haja, há a geracao 
de fila automática de espera.


4- Como é feita a gestão de reservas e qual a regra de prioridade?
O usuário solicita no sistema a reserva, onde a regra de prioridade é baseada na data e horario em que o usuario solicita a reserva,
dessa forma, criando uma fila de prioridade para a reserva.


5- É possível identificar exemplares em atraso e seus respectivos usuários?
Sim, no sistema fica identificado, para cada exemplar que esteja emprestado, o status e em qual momento se enquadra(status/atraso/disponivel/estado do livro).


6- O sistema gera estatísticas de empréstimo por obra, autor ou categoria?
Sim, dentro do sistema será incluído os dados de cada empréstimo, onde poderá ser gerado o relatório através de uma view sobre a obra e seus dados essenciais.


7- Há relatório de obras mais emprestadas e menos utilizadas?
Esses dados serão identificados através de uma view acessando os dados já guardados no banco e retornando os mais emprestados e os menos utilizados.


8- O sistema permite registrar perdas, danos ou descarte de exemplares?
Permite. Cada exemplar terá um status relacionado à danos e um campo de descrição sobre o estado físico do livro, para realizar o controle desses registros.


9- Existe controle de perfil de usuário (aluno, professor, funcionário)?
Sim, o usuário terá definida sua permissão de acesso, identificando sua "função" dentro do sistema.


10- O sistema permite exportar relatórios em formato como PDF ou Excel?
Será possível que o admin faça o download e imprima os relatórios. É possivel que a sua criação ocorra tanto pelo pelo banco de dados, quanto pelo Back-end, e isso seja acessado pelo(a) admin no sistema.