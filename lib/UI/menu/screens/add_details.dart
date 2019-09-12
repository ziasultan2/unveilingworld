import 'package:church/model/note.dart';
import 'package:church/utils/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NoteDetailsAdd extends StatefulWidget {
  final String appBarTitle;
  final Note note;

  const NoteDetailsAdd(this.note, this.appBarTitle);

  @override
  _NoteDetailsAddState createState() => _NoteDetailsAddState(note, appBarTitle);
}

class _NoteDetailsAddState extends State<NoteDetailsAdd> {
  final String appBarTitle;
  final Note note;

  DatabaseHelper databaseHelper = DatabaseHelper();

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  static var _priorities = ['High', 'Low'];

  _NoteDetailsAddState(this.note, this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;
    titleController.text = note.title;
    descriptionController.text = note.description;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF1A237E),
        centerTitle: true,
        title: Text(appBarTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: <Widget>[
            //First element

            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  print('Something changed in Title Text Field');
                  updateTitle();
                },
                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  updateDescription();
                  print('Something changed in Description Text Field');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Color(0xFF1A237E),
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Save',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          _save();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      color: Color(0xFF1A237E),
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        'Cancel',
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        setState(() {
                          _delete();
                        });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  void updateTitle() {
    note.title = titleController.text;
  }

  void updateDescription() {
    note.description = descriptionController.text;
  }

  void _save() async {
    moveToLastScreen();
    note.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (note.id != null) {
      result = await databaseHelper.updateNote(note);
    } else {
      result = await databaseHelper.insertNote(note);
    }

    if (result != 0) {
      _showAlertDialog('Status', 'Note Saved Successfully');
    } else {
      _showAlertDialog('Status', 'Note Saved Successfully');
    }
  }

  void _showAlertDialog(String title, String message) {
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  void _delete() async {
    moveToLastScreen();
//    if(note.id == null){
//      _showAlertDialog('Status', 'No Note was deleted');
//      return;
//    }
//    int result = await databaseHelper.deleteNote(note.id);
//    if (result != 0){
//      _showAlertDialog('Status', 'Note Deleted Successfully');
//    } else {
//      _showAlertDialog('Status', 'Error Occured while Deleting Note');
//    }
  }
  void moveToLastScreen(){
    Navigator.pop(context, true);
  }
}
