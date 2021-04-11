
import 'package:flutter/material.dart';

import 'package:noupartazer_app/components/CustomDivider.dart';
import 'package:noupartazer_app/Pages/Task/NGOTask/NGOTaskModel.dart';
import 'package:noupartazer_app/Pages/Task/NGOTask/NGOTask.dart';
import 'package:noupartazer_app/Pages/Task/NGOTask/CancelledTaskList.dart';

class NGOCancelledTask extends StatelessWidget
{
  final List<NGOTask> tasks = cancelledTaskList;

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
                        NGOTaskModel
                        (
                          constraints: constraints,
                          image: cancelledTaskList[index].image,
                          description: cancelledTaskList[index].description,
                          locationName: cancelledTaskList[index].locationName,
                          date: cancelledTaskList[index].date,
                          time: cancelledTaskList[index].time,
                          tag: cancelledTaskList[index].tag,
                          status: cancelledTaskList[index].status,
                        ),
                        CustomDivider
                        (
                          height: 10,
                          indent: 20,
                          endIndent: 20,
                        ),
                      ],
                    );
                  }
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
