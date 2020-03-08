import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/Activity.dart';
import '../providers/Activities.dart';

class AddActivityScreen extends StatefulWidget {
  static const routeName = '/add-activity-screen';

  @override
  _AddActivityScreenState createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  var _initialValues = {
    'name': '',
    'period': '',
    'activityCounselor': '',
  };
  final _periodFocusNode = FocusNode();
  final _counselorFocusNode = FocusNode();

  var _editedActivity =
      Activity(id: null, name: '', period: '', activityCounselor: '');

  final _form = GlobalKey<FormState>();
  @override
  void _saveForm() {
    _form.currentState.save();
    Provider.of<Activities>(context,listen: false).addActivity(_editedActivity);
    print( Provider.of<Activities>(context,listen: false).activities);
    Navigator.of(context).pop();
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Activity Screen'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveForm,
          )
        ],
      ),
      body: Form(
        key: _form,
        child: ListView(
          children: <Widget>[
            TextFormField(
              //initialValue: _initialValues['name'],
              decoration: InputDecoration(labelText: 'Name of the activity'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_periodFocusNode);
              },
              onSaved: (value) {
                _editedActivity = Activity(
                  id: DateTime.now().toString(),
                  name: value,
                  activityCounselor: _editedActivity.activityCounselor,
                  period: _editedActivity.period,
                );
              },
            ),
            TextFormField(
              //  initialValue: _initialValues['period'],
              decoration:
                  InputDecoration(labelText: 'Period of the activity (1-2-3)'),
              textInputAction: TextInputAction.next,
              focusNode: _periodFocusNode,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_counselorFocusNode);
              },
              onSaved: (value) {
                _editedActivity = Activity(
                  name: _editedActivity.name,
                  id: DateTime.now().toString(),
                  activityCounselor: _editedActivity.activityCounselor,
                  period: value,
                );
              },
            ),
            TextFormField(
              // initialValue: _initialValues['activityCounselor'],
              decoration: InputDecoration(labelText: 'Name of the counselor'),
              textInputAction: TextInputAction.done,
              focusNode: _counselorFocusNode,
               onFieldSubmitted: (_) {
                              _saveForm();
                            },
              onSaved: (value) {
                _editedActivity = Activity(
                  name: _editedActivity.name,
                  id: DateTime.now().toString(),
                  activityCounselor: value,
                  period: _editedActivity.period,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
