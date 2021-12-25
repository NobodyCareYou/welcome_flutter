import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FunctionPage extends StatefulWidget {
  const FunctionPage({Key? key}) : super(key: key);

  @override
  _FunctionPageState createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  final List<FucBean> _fucList = [];

  @override
  void initState() {
    _fucList.add(FucBean("房间状态", "assets/images/fuc/room_state.png"));
    _fucList.add(FucBean("技师状态", "assets/images/fuc/technician_state.png"));
    _fucList.add(FucBean("预约状态", "assets/images/fuc/appointment_state.png"));
    _fucList.add(FucBean("会员管理", "assets/images/fuc/member_manage.png"));
    _fucList.add(FucBean("钟房管理", "assets/images/fuc/clock_manage.png"));
    _fucList.add(FucBean("考勤管理", "assets/images/fuc/attendance_manage.png"));
    _fucList.add(FucBean("服务通知", "assets/images/fuc/service_notice.png"));
    _fucList.add(FucBean("附项通知", "assets/images/fuc/sub_project_notice.png"));
    _fucList.add(FucBean("员工管理", "assets/images/fuc/staff_manage.png"));
    _fucList.add(FucBean("营业数据", "assets/images/fuc/business_data.png"));
    _fucList.add(FucBean("码上结账", "assets/images/fuc/code_payment.png"));
    _fucList.add(FucBean("运营监管", "assets/images/fuc/special_operate.png"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _sliverGridDelegateWithFixedCrossAxisCount =
        const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10);

    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text("Saas专属房间店"),
              Text("地址"),
              Row(
                children: [
                  SizedBox(width: 20),
                  _buildQuicklyView("等位顺序"),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "空闲技师",
                      textAlign: TextAlign.center,
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "最快下钟",
                      textAlign: TextAlign.center,
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "最快出房",
                      textAlign: TextAlign.center,
                    ),
                    flex: 1,
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: _sliverGridDelegateWithFixedCrossAxisCount,
              itemCount: _fucList.length,
              itemBuilder: (context, index) {
                return _buildGridViewItem(_fucList[index]);
              }),
        )
      ],
    );
  }

  GestureDetector _buildQuicklyView(String str) {
    return GestureDetector(
      onTap: (){},
      child: Expanded(
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "等位顺序",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
        flex: 1,
      ),
    );
  }

  Widget _buildGridViewItem(FucBean e) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Container(
              width: 55,
              height: 55,
              child: Image(
                  image: AssetImage(
                e.imgRes,
              ))),
          SizedBox(height: 15),
          Text(e.title)
        ],
      ),
    );
  }
}

class FucBean {
  String title;
  String imgRes;

  FucBean(this.title, this.imgRes);
}
