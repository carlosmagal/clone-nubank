import 'package:flutter/material.dart';
import 'package:flutter_plus/flutter_plus.dart';
import 'package:nuclone/components/bottom_card.dart';
import 'package:nuclone/components/list_card.dart';
import 'package:nuclone/utils/colors.dart';
import 'package:nuclone/components/custom_icon.dart';

class NuHomeScreen extends StatelessWidget {

  NuHomeScreen({required this.userName});
  final String userName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this._appBar(),
      body: this._body(context),
    );
  }

  _appBar(){
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: ContainerPlus(
        color: ColorsNu.purple,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 48),
        // isExpanded: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextPlus(
              'Olá, ${this.userName}',
              fontWeight: FontWeight.w700,
              fontSize: 29,
              color: Colors.white,
            ),
            Row(
              children: [
                CustomAppBarIcon(
                  icon: Icons.remove_red_eye_outlined,
                  margin: 10,
                ),
                CustomAppBarIcon(
                  icon: Icons.settings,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _body(context){
    return Column(
      children: [
        Expanded(
          child: ContainerPlus(
            color: ColorsNu.purple,
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              children: this._mainListViewContent(),
            ),
          )
        ),
        ContainerPlus(
         color: ColorsNu.purple,
         height: MediaQuery.of(context).size.width * 0.4,
         width: double.infinity,
         child: this._bottomNavigationChild(),
        )
      ],
    );
  }

  _mainListViewContent(){
    return <Widget>[
      ListCard(
        icon: Icons.credit_card, 
        title: 'Cartão de crédito',
        subtitle: 'Fatura atual',
        value: 'R\$ 120,08',
        valueColor: Colors.blue,
        lastWidget: RichTextPlus(
          texts: [
            TextPlus(
              'Limite disponível ',
              fontSize: 14,
              color: ColorsNu.listCardTitle,
            ),
            TextPlus(
              'R\$ 200,00',
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            )
          ],
        )
      ),
      ListCard(
        height: 140,
        icon: Icons.attach_money_outlined, 
        title: 'Conta',
        subtitle: 'Saldo diponível',
        value: 'R\$ 20,08',
        valueColor: Colors.black,
      ),
      ListCard(
        height: 210,
        icon: Icons.attach_money_outlined, 
        title: 'Empréstimo',
        subtitle: 'Valor disponível de até',
        valueColor: Colors.black,
        value: 'R\$ 9.300,00',
        lastWidget: ButtonPlus(
          padding: const EdgeInsets.symmetric(horizontal:12,),
          radius: RadiusPlus.all(8),
          margin: EdgeInsets.only(top: 8),
          border: BorderPlus(
            style: BorderStyle.solid,
            color: ColorsNu.purple,width: .6
          ),
          child: TextPlus(
            'SIMULAR EMPRÉSTIMO',
            color: ColorsNu.purple,
            fontWeight: FontWeight.w700,
          ),
          onPressed: (){
            print('object');
          },
        ),
      ),
    ];
  }

  _bottomNavigationChild(){
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: [
        BottomCard(
          icon: Icons.money, 
          title: 'Pix'
        ),
        BottomCard(
          icon: Icons.payments_outlined, 
          title: 'Pagar'
        ),
        BottomCard(
          icon: Icons.person_add_outlined, 
          title: 'Indicar amigos'
        ),
        BottomCard(
          icon: Icons.low_priority_sharp, 
          title: 'Transferência'
        ),
      ],
    );
  }
}