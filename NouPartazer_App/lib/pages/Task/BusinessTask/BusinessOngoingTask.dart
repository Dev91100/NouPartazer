import 'package:flutter/material.dart';

import 'package:noupartazer_app/Pages/Task/BusinessTask/BusinessTaskModel.dart';
import 'package:noupartazer_app/Pages/Task/BusinessTask/BusinessTask.dart';
import 'package:noupartazer_app/Pages/Task/BusinessTask/OngoingTaskList.dart';
import 'package:noupartazer_app/components/CustomDivider.dart';

class BusinessOngoingTask extends StatelessWidget
{
  final List<BusinessTask> businessTasks = ongoingTaskList;

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
                  itemCount: ongoingTaskList.length,
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
                          image: ongoingTaskList[index].image,
                          ngoName: ongoingTaskList[index].ngoName,
                          description: ongoingTaskList[index].description,
                          locationName: ongoingTaskList[index].locationName,
                          date: ongoingTaskList[index].date,
                          time: ongoingTaskList[index].time,
                          tag: ongoingTaskList[index].tag,
                          status: ongoingTaskList[index].status,
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
