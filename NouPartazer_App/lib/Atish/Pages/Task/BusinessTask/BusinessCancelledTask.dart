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
                child: ListView
                (
                  padding: EdgeInsets.all(0),
                  children:
                  businessTasks.map((tk)
                  {
                    return Column
                    (
                      children:
                      [
                        BusinessTaskModel
                        (
                          constraints: constraints,
                          image: tk.image,
                          ngoName: tk.ngoName,
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
