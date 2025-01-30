import 'package:lista_tarefas_alura_2025/components/principal/task.dart';
import 'package:lista_tarefas_alura_2025/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String _tableName = 'taskTable';
  static const String _name = 'nome';
  static const String _dificulty = 'dificuldade';
  static const String _image = 'imagem';

  static const String createTableSql = 'CREATE TABLE $_tableName('
      '$_name TEXT, '
      '$_dificulty INTEGER, '
      '$_image TEXT)';

  save(Task tarefa) async {}

  Future<List<Task>> findAll() async {
    print('Estamos acessando o findAll: ');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result =
        await bancoDeDados.query(_tableName);
    print('expondo..');
    print('$result');
    return toList(result);
  }

  Future<List<Task>> find(String nomeDaTarefa) async {
    print('acessando find');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String, dynamic>> result = await bancoDeDados
        .query(_tableName, where: '$_name = ?', whereArgs: ['%$nomeDaTarefa%']);
    print('procurando...');
    print(result);
    return toList(result);
  }

  delete(String nomeDaTArefa) async {}

  List<Task> toList(List<Map<String, dynamic>> mapaDeTarefas) {
    print('convertendo to list');
    final List<Task> tarefas = [];

    for (Map<String, dynamic> item in mapaDeTarefas) {
      tarefas.add(Task(item[_name], item[_image], item[_dificulty]));
    }
    print('pronto.');
    return tarefas;
  }
}
