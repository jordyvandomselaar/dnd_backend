import '../lib/persistence/model/model.dart';
import '../providers/database.dart';

class Base extends Model {
  Base(): super(Database.getPool());
}
