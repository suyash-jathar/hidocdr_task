import 'package:flutter/material.dart';

import '../models/exploreArticle.dart';
import '../models/news.dart';
import '../models/trandingArticle.dart';
import '../models/trandingBulletin.dart';
Widget newDisplay(
    {
      required News article
    }
  ){
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.red)
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 6,
            width: 85,
            color: Colors.lightBlue,
          ),
          SizedBox(height: 15,),
          Text('${article.title}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text(
            '${article.title}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontSize: 12),),
          SizedBox(height: 10,),
          Text('Read More',style: TextStyle(fontSize: 11,color: Colors.lightBlue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,),),
          SizedBox(height: 15,),

        ],
      ),
    );
  }
  Widget trandingBulltinDisplay(
    {
      required TrandingBulletin article
    }
  ){
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: Colors.red)
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 6,
            width: 85,
            color: Colors.lightBlue,
          ),
          SizedBox(height: 15,),
          Text('${article.articleTitle}',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 15,),
          Text(
            '${article.articleDescription}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontSize: 12),),
          SizedBox(height: 10,),
          Text('Read More',style: TextStyle(fontSize: 11,color: Colors.lightBlue,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,),),
          SizedBox(height: 15,),

        ],
      ),
    );
  }

  Widget latestArticleDisplay(
    {
      required double width,
      required TrandingArticle article,
    }
  ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Divider(height: 10,color: Colors.black,thickness: 2),
          SizedBox(height: 15,),
          Text(article.articleTitle!,maxLines: width>600?2:3,overflow: TextOverflow.ellipsis,),
          SizedBox(height: 15,),

        ],
      ),
    );
  }

  Widget exploreArticleDisplay(
    {
      required ExploreArticle article,
    }
  ){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Divider(height: 10,color: Colors.black,thickness: 2),
          SizedBox(height: 15,),
          Text(article.articleTitle!,maxLines: 2,overflow: TextOverflow.ellipsis,),
          SizedBox(height: 15,),

        ],
      ),
    );
  }