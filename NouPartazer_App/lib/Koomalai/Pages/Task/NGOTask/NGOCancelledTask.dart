
import 'package:flutter/material.dart';

import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/NGOTaskModel.dart';
import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/NGOTask.dart';
import 'package:noupartazer_app/Atish/Pages/Task/NGOTask/CancelledTaskList.dart';
import 'package:noupartazer_app/Atish/components/CustomDivider.dart';

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
                        NGOTaskModel
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