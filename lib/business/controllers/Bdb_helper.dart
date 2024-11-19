
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';


class BDbHelper {
  late Box box1;
  late Box box2;
  late SharedPreferences preferences1;
  late SharedPreferences preferences2;

  BDbHelper() {
    openBox();

  }

  openBox() {
    box1 = Hive.box('money');

  }



  void addData(int amount, DateTime date, String type, String note,
      String dropdownValue) async {
    var value = {
      'amount': amount,
      'date': date,
      'type': type,
      'note': note,
      'category': dropdownValue
    };
    print(value);
    box1.add(value);
  }

  void baddData(int amount, DateTime date, String type, String note,
      String dropdownValue) async {
    var value1 = {
      'amount': amount,
      'date': date,
      'type': type,
      'note': note,
      'category': dropdownValue
    };
    print(value1);
    box2.add(value1);
  }

    Future deleteData(int index,) async {
      await box1.deleteAt(index);
    }

    Future deleteData1(int index,) async {
      await box2.deleteAt(index);
    }

    Future cleanData() async {
      await box1.clear();
    }

  Future cleanData1() async {
    await box2.clear();
  }

    addName(String name) async {
      preferences1 = await SharedPreferences.getInstance();
      preferences1.setString('name', name);
    }

  addName1(String name) async {
    preferences2 = await SharedPreferences.getInstance();
    preferences2.setString('name1', name);
  }

    getName() async {
      preferences1 = await SharedPreferences.getInstance();
      return preferences1.getString('name');
    }

  getName1() async {
    preferences2 = await SharedPreferences.getInstance();
    return preferences2.getString('name1');
  }

    setLocalAuth(bool val) async {
      preferences1 = await SharedPreferences.getInstance();
      return preferences1.setBool('auth', val);
    }

  setLocalAuth1(bool val) async {
    preferences2 = await SharedPreferences.getInstance();
    return preferences2.setBool('auth1', val);
  }

    Future<bool> getLocalAuth() async {
      preferences1 = await SharedPreferences.getInstance();
      return preferences1.getBool('auth') ?? false;
    }


  Future<bool> getLocalAuth1() async {
    preferences2 = await SharedPreferences.getInstance();
    return preferences2.getBool('auth') ?? false;
  }
  }





/*
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DbHelper {
  late Box box;
  late SharedPreferences preferences;

  DbHelper() {
    openBox();
  }

  openBox() {
    box = Hive.box('money');
  }

  void addData(int amount, DateTime date, String type, String note) async {
    var value = {'amount': amount, 'date': date, 'type': type, 'note': note};
    box.add(value);
  }

  Future deleteData(
      int index,
      ) async {
    await box.deleteAt(index);
  }

  Future cleanData() async {
    await box.clear();
  }

  addName(String name) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString('name', name);
  }

  getName() async {
    preferences = await SharedPreferences.getInstance();
    return preferences.getString('name');
  }

  setLocalAuth(bool val) async {
    preferences = await SharedPreferences.getInstance();
    return preferences.setBool('auth', val);
  }

  Future<bool> getLocalAuth() async {
    preferences = await SharedPreferences.getInstance();
    return preferences.getBool('auth') ?? false;
  }
}
*/

