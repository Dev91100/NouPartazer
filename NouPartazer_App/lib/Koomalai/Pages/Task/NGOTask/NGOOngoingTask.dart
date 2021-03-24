
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/NGOTaskModel.dart';
import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/NGOTask.dart';
import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/OngoingTaskList.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

class NGOOngoingTask extends StatelessWidget
{
  final List<NGOTask> ngotasks = ongoingTaskList;

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
                        NGOTaskModel
                        (
                          constraints: constraints,
                          image: ongoingTaskList[index].image,
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
