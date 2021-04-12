
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/Task/NGOTask/NGOTaskModel.dart';
import 'package:noupartazer_app/Pages/Task/NGOTask/NGOTask.dart';
import 'package:noupartazer_app/Pages/Task/NGOTask/CompletedTaskList.dart';
import 'package:noupartazer_app/components/CustomDivider.dart';

class NGOCompletedTask extends StatelessWidget
{
  final List<NGOTask> tasks = completedTaskList;

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder
    (
      builder: (ctx, constraints)
      {
        return Scaffold
        (
          body: Column
          (
            children:
            [
              Expanded
              (
                child: ListView.builder
                (
                  itemCount: completedTaskList.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Column
                    (
                      children:
                      [
                        NGOTaskModel
                        (
                          constraints: constraints,
                          image: completedTaskList[index].image,
                          description: completedTaskList[index].description,
                          locationName: completedTaskList[index].locationName,
                          date: completedTaskList[index].date,
                          time: completedTaskList[index].time,
                          tag: completedTaskList[index].tag,
                          status: completedTaskList[index].status,
                        ),
                        CustomDivider
                        (
                          height: 10,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
