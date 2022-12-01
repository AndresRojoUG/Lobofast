import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/src/text_element.dart' as elements;
import 'package:charts_flutter/src/text_style.dart' as styles;

class Grafico extends StatelessWidget {
  const Grafico ({Key? key}) :super(key: key);

  static String? ponteirAmount;
  static String? pointerDay;

  @override
  Widget build(BuildContext context) {
    final data=[
      Expenses(1, 550),
      Expenses(2, 420),
      Expenses(3, 220),
      Expenses(4, 1320),
      Expenses(5, 130),
    ];

    List<charts.Series<Expenses,int>> series=[
      charts.Series<Expenses,int>(
        id: 'Barras',
        domainFn: (v, i) => v.day,
        measureFn: (v,i) => v.expense,
        data: data
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Ventas'),
      ),
      drawer: MenuLateral(),
      backgroundColor: Color.fromARGB(255, 229, 232, 213),
      body: Center(
        child: SizedBox(
          height: 350,
          child: charts.LineChart(series,
          selectionModels: [
            charts.SelectionModelConfig(
              changedListener: (charts.SelectionModel model){
                if(model.hasDatumSelection){
                  ponteirAmount=model.selectedSeries[0]
                  .measureFn(model.selectedDatum[0].index)
                  ?.toStringAsFixed(2);
                  pointerDay=model.selectedSeries[0]
                  .domainFn(model.selectedDatum[0].index)
                  ?.toString();
                }
              }
            )
          ],
          behaviors: [
            charts.LinePointHighlighter(
              symbolRenderer: MySymbolRenderer()
            )
          ],
          ),
        ),
      ),
    );
  }
}
class MySymbolRenderer extends charts.CircleSymbolRenderer{
@override
  void paint(charts.ChartCanvas canvas,
   Rectangle<num> bounds,
    {List<int>? dashPattern, 
    charts.Color? fillColor, 
    charts.FillPatternType? fillPattern, 
    charts.Color? strokeColor, 
    double? strokeWidthPx
    }) {
    // TODO: implement paint
    super.paint(
      canvas, 
      bounds, 
      dashPattern: dashPattern, 
      fillColor:fillColor, 
      fillPattern:fillPattern, 
      strokeColor:strokeColor, 
      strokeWidthPx:strokeWidthPx);

      canvas.drawRRect(
        Rectangle(
          bounds.left -25,
          bounds.top -30,
          bounds.width +48,
          bounds.height +18
        ),
        fill: charts.ColorUtil.fromDartColor(Colors.yellow),
        stroke: charts.ColorUtil.fromDartColor(Colors.lightBlue),
        strokeWidthPx: 2
      );
      var myStyle= styles.TextStyle();
      myStyle.fontSize=10;
      canvas.drawText(elements.TextElement(
        'Día ${Grafico.pointerDay} \n${Grafico.ponteirAmount}',
        style: myStyle
      ),
      (bounds.left -20).round(),
      (bounds.top -26).round()
      );
  }
}

class Expenses{
  final int day;
  final double expense;

  Expenses(this.day,this.expense);
}

class MenuLateral extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),
        children:[
          new UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 31, 160, 31),
              ),
              
            
              accountName: Text("Usuario Nuevo"),
              accountEmail: Text("UsuarioNuevo@gmail.com"),
            currentAccountPicture: Image.asset('assets/lob.png'),
          ),
         
         ListTile(
          title: Text('Home'),
          leading: Icon(Icons.home),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'menu');
         },
         ),

            ListTile(
          title: Text('Pedidos'),
          leading: Icon(Icons.gif_box),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'pedido');
         },
         
         ),
          
          ListTile(
          title: Text('Desarrolladores'),
          leading: Icon(Icons.info),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'infor');
         },
         ),
           ListTile(
          title: Text('Salir'),
          leading: Icon(Icons.exit_to_app_rounded),
         onTap: () {
           Navigator.of(context).pop();
           Navigator.pushNamed(context,'login');
         },
         ),

                 ],
      ) ,
    );
  }
}