import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home:  QuoteList(),
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  //List<String> quotes= ['There can only be one', 'Do, there is no try', 'Let it be'];

  List<Quote> quotes = [
    Quote(author: 'Bill Gates', text: 'I am Microsoft'),
    Quote(author: 'Highlander', text: 'there can only be one'),
    Quote(author: 'Lost', text: 'Dont know'),

  ];

//  Widget quoteTemplate(quote){
//    return QuoteCard(quote: quote);
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }

        )).toList(),
      ),
    );
  }
}


