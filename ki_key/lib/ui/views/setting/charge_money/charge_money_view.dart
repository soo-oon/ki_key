import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';
import 'package:ki_key/shared/sharedColors.dart';
import 'package:provider/provider.dart';
import 'charge_money_viewModel.dart';
import 'package:ki_key/ui/views/setting/charge_money/charge_money_viewModel.dart';

//final messageTextController = TextEditingController();

class ChargeMoneyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          '포인트 충전',
          style: TextStyle(
            fontSize: 20.0,
            color: black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Bank(),
            ChargeMoney(),
            CertificationNumber(),
            SizedBox(
              height: 50.0,
            ),
            Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}

class Bank extends StatefulWidget {
  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
  String bankName = '';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '은행 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        GestureDetector(
          onTap: () async {
            var result = await showModalBottomSheet(
                context: context, builder: (context) => BankList());
            bankName = result;
            setState(() {});
          },
          child: ShowBank(BankName: bankName),
        ),
      ],
    );
  }
}

class ShowBank extends StatelessWidget {
  String BankName;

  ShowBank({this.BankName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 20.0,
      child: Text(BankName),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}

class BankList extends StatefulWidget {
  //BankList({this.getBank});

  @override
  _BankListState createState() => _BankListState();
}

class _BankListState extends State<BankList> {
  List bank = ['대구은행', '국민은행', '신한은행'];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            title: Text(bank[0]),
            onTap: () {
              Navigator.pop(context, bank[0]);
            },
          ),
          ListTile(
            title: Text(bank[1]),
            onTap: () {
              Navigator.pop(context, bank[1]);
            },
          ),
          ListTile(
            title: Text(bank[2]),
            onTap: () {
              Navigator.pop(context, bank[2]);
            },
          ),
        ],
      ).toList(),
    );
  }
}

class ChargeMoney extends StatefulWidget {
  @override
  _ChargeMoneyState createState() => _ChargeMoneyState();
}

class _ChargeMoneyState extends State<ChargeMoney> {
  TextEditingController _textEditingControllerOne;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '충전금액 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child: AutoSizeTextField(
            minWidth: 100,
            controller: _textEditingControllerOne,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 10.0),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            fullwidth: false,
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    //?
    super.initState();
    _textEditingControllerOne = TextEditingController();
  }
}

class CertificationNumber extends StatefulWidget {
  @override
  _CertificationNumberState createState() => _CertificationNumberState();
}

class _CertificationNumberState extends State<CertificationNumber> {
  TextEditingController _textEditingControllerOne;
  double setWidth = 100.0;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '인증번호 : ',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
          child: AutoSizeTextField(
            minWidth: 100,
            controller: _textEditingControllerOne,
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.only(top: 10.0),
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            fullwidth: false,
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();

    _textEditingControllerOne = TextEditingController();
  }
}
