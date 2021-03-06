import 'package:FundRazor/internal/data.dart';
import 'package:FundRazor/pages/Page0.dart';
import 'package:FundRazor/pages/Page1.dart';

String simpleDate(DateTime d) {
  return d.day.toString() + "/" + d.month.toString() + "/" + d.year.toString();
}

int calculateLength(bool isDone) {
  int _len = 0;
  for (int i = 0; i < lists.allLists.length; i++) {
    if (isDone) {
      if (lists.allLists[i].isDone) _len++;
    } else if (!lists.allLists[i].isDone) _len++;
  }
  return _len;
}

int calculateTotalAmount() {
  int sum = 0;
  for (int i = 0; i < lists.allLists.length; i++) {
    if (lists.allLists[i].isDone) sum += lists.allLists[i].recalculatedAmount;
  }
  return sum;
}

void updateStuff() {
  try {
    page1Interactive.triggerSetState();
  } catch (e) {
    // Do nothing
  }
  try {
    page0Interactive.triggerSetState();
  } catch (e) {
    //Do nothing
  }
  writeData();
}
