import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task tarefa) async {
    print('Acessando o save: ');
    final Database bancoDeDados = await getDatabase();

    var itemExists = await find(tarefa.nome);

    Map<String, dynamic> taskMap = toMap(tarefa);

    if (itemExists.isEmpty) {
      print('A tarefa não existia.');

      return await bancoDeDados.insert(_tablename, taskMap);
    } else {
      print('A tarefa já existia!');

      return await bancoDeDados.update(
        _tablename,
        taskMap,
        where: '$_name = ?',
        whereArgs: [tarefa.nome],
      );
    }
  }

  Map<String, dynamic> toMap(Task tarefa) {
    print('Convertendo tarefa em Map: ');

    final Map<String, dynamic> mapaDeTarefas = Map();
    mapaDeTarefas[_name] = tarefa.nome;
    mapaDeTarefas[_difficulty] = tarefa.dificuldade;
    mapaDeTarefas[_image] = tarefa.foto;

    print('Mapa de Tarefas: $mapaDeTarefas');

    return mapaDeTarefas;
  }

  Future<List<Task>> findAll() async {
    print('Acessando o findAll:');

    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tablename);

    print('Procurando dados no banco de dados... Encontrado: $result');

    return toList(result);
  }

  List<Task> toList(List<Map<String, dynamic>> listaDeMapasDeTarefas) {
    print('Convertendo to List:');

    final List<Task> listaDeTarefas = [];

    for (Map<String, dynamic> linhaDoMapa in listaDeMapasDeTarefas) {
      final Task tarefa = Task(
          linhaDoMapa[_name], linhaDoMapa[_image], linhaDoMapa[_difficulty]);
      listaDeTarefas.add(tarefa);
    }

    print('Convertendo to List:');

    return listaDeTarefas;
  }

  Future<List<Task>> find(String nomeDaTarefa) async {
    print('Acessando o find:');

    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados.query(
      _tablename,
      where: '$_name = ?',
      whereArgs: [nomeDaTarefa],
    );

    print('Tarefa encontrada: ${toList(result)}');

    return toList(result);
  }

  delete(String nomeDaTarefa) async {
    print('Deletando tarefa: $nomeDaTarefa');

    final Database bancoDeDados = await getDatabase();

    return bancoDeDados.delete(
      _tablename,
      where: '$_name = ?',
      whereArgs: [nomeDaTarefa],
    );
  }
}
