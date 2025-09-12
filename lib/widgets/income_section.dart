import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/custom_background.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';
import 'package:responsive_dash_board/widgets/latest_transactions.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';
import 'package:responsive_dash_board/widgets/range_options.dart';
import 'package:responsive_dash_board/widgets/transactions_history.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        children: [
          IncomeSectionHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: AppStyle.styleSemiBold20),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(
            enabled: true,
            touchCallback:
                (FlTouchEvent, PieTouchResponse) {
                  currentIndex =
                      PieTouchResponse
                          ?.touchedSection
                          ?.touchedSectionIndex ??
                      -1;
                  setState(() {});
                },
          ),
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              radius: currentIndex == 0 ? 60 : 40,
              showTitle: false,
              value: 40,
              color: Color(0xff208CC8),
            ),
            PieChartSectionData(
              radius: currentIndex == 1 ? 60 : 40,
              showTitle: false,
              value: 25,
              color: Color(0xff4EB7F2),
            ),
            PieChartSectionData(
              radius: currentIndex == 2 ? 60 : 40,
              showTitle: false,
              value: 20,
              color: Color(0xff064061),
            ),
            PieChartSectionData(
              radius: currentIndex == 3 ? 60 : 40,
              showTitle: false,
              value: 22,
              color: Color(0xffE2DECD),
            ),
          ],
        ),
      ),
    );
  }
}
