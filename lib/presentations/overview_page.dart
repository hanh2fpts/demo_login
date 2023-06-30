import 'package:demo_login/bloc/report_bloc.dart';
import 'package:demo_login/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReportBloc>(
      create: (context) => Injection.instance<ReportBloc>()..add(const ReportEvent.started()),
      child: BlocBuilder<ReportBloc, ReportState>(
        builder: (context, state) {
          return Container(color: Colors.purpleAccent.shade200);
        },
      ),
    );
  }
}
