// class TodoTable {
//   static final String columnId = '_id';
//   static final String columnTitle = 'title';
//
//   int id = 0;
//   String title = "";
//   String tableName = '';
//
//   Map toJson() => {
//     columnId: id,
//     columnTitle: title
//   };
//
//   static List<TodoTable> fromJsonList(List<dynamic> json) => json.map((i) => TodoTable.fromJson(i)).toList();
//
//   TodoTable.fromJson(Map<dynamic, dynamic> json) {
//     id = json[columnId];
//     title = json[columnTitle];
//     tableName = json[tableName];
//   }
//
//   static String create() {
//     return "CREATE TABLE $tableName (" +
//       "$tableName INTEGER PRIMARY KEY " +
//       "$columnTitle TEXT" +
//     ")";
//   }
// }
