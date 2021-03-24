import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTaskModel.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTask.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/UnassignedTaskList.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

class BusinessUnassignedTask extends StatelessWidget
{
  final List<BusinessTask> businessTasks = unassignedTaskList;

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
                  itemCount: unassignedTaskList.length,
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
                          image: unassignedTaskList[index].image,
                          ngoName: unassignedTaskList[index].ngoName,
                          description: unassignedTaskList[index].description,
                          locationName: unassignedTaskList[index].locationName,
                          date: unassignedTaskList[index].date,
                          time: unassignedTaskList[index].time,
                          tag: unassignedTaskList[index].tag,
                          status: unassignedTaskList[index].status,
                          canCall: false,
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
