import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTaskModel.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTask.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/CompletedTaskList.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

class BusinessCompletedTask extends StatelessWidget
{
  final List<BusinessTask> businessTasks = completedTaskList;

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
                        BusinessTaskModel
                        (
                          constraints: constraints,
                          image: completedTaskList[index].image,
                          ngoName: completedTaskList[index].ngoName,
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
