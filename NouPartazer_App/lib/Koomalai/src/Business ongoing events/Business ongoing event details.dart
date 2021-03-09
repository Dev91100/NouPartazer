
import 'package:flutter/material.dart';

import 'package:NouPartazer_App/Atish/Pages/Task/TaskModel.dart';
import 'package:NouPartazer_App/Atish/Pages/Task/Task.dart';
import 'package:NouPartazer_App/Atish/Pages/Task/OngoingTaskList.dart';
import 'package:NouPartazer_App/Atish/components/CustomDivider.dart';

class BusinessOngoingEvent extends StatelessWidget
{
  final List<Task> tasks = ongoingTaskList;

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
                child: ListView
                (
                  padding: EdgeInsets.all(0),
                  children:
                  tasks.map((tk)
                  {
                    return Column
                    (
                      children:
                      [
                        TaskModel
                        (
                          constraints: constraints,
                          image: tk.image,
                          description: tk.description,
                          locationName: tk.locationName,
                          date: tk.date,
                          time: tk.time,
                          tag: tk.tag,
                          status: tk.status,
                        ),
                        CustomDivider
                        (
                          height: 10
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
