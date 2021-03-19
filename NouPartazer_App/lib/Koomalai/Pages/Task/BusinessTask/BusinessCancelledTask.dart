import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTaskModel.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/BusinessTask.dart';
import 'package:noupartazer_app/Atish/Pages/Task/BusinessTask/CancelledTaskList.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

class BusinessCancelledTask extends StatelessWidget
{
  final List<BusinessTask> businessTasks = cancelledTaskList;

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
                  itemCount: cancelledTaskList.length,
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
                          image: cancelledTaskList[index].image,
                          ngoName: cancelledTaskList[index].ngoName,
                          description: cancelledTaskList[index].description,
                          locationName: cancelledTaskList[index].locationName,
                          date: cancelledTaskList[index].date,
                          time: cancelledTaskList[index].time,
                          tag: cancelledTaskList[index].tag,
                          status: cancelledTaskList[index].status,
                        ),
                        CustomDivider
                        (
                          height: 10
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
