import 'package:jumia/commonFolder/dataClass.dart';

class modelDataClass {
  final String ImageUrl,
      title,
      price,
      discount,
      des,
      subDes,
      verify,
      verifyRating,
      percentageDiscount,
      promotionDetial,
      iconData,
      gazamDetail,
      prodectDetailDescription,
      selerInfoScore,
      orderFulfillmentRate,
      qualityScore,
      customerRat,
      comment,
      follwer,
      daywise;



  modelDataClass(
      this.ImageUrl,
      this.title,
      this.price,
      this.discount,
      this.des,
      this.subDes,
      this.verify,
      this.verifyRating,
      this.percentageDiscount,
      this.promotionDetial,
      this.iconData,
      this.gazamDetail,
      this.prodectDetailDescription,
      this.selerInfoScore,
      this.orderFulfillmentRate,
      this.qualityScore,
      this.customerRat,
      this.comment,
      this.follwer,
      this.daywise
      
      );
}



  final List<modelDataClass> gazamDataList = List.generate(
      GazamDataClass.itemName.length,
      (index) => modelDataClass(
            '${GazamDataClass.url[index]}',
            '${GazamDataClass.title[index]}',
            '${GazamDataClass.price[index]}',
            '${GazamDataClass.discount[index]}',
            '${GazamDataClass.des[index]}',
            '${GazamDataClass.subDes[index]}',
            '${GazamDataClass.verify[index]}',
            '${GazamDataClass.verifyRating[index]}',
            '${GazamDataClass.percentageDiscount[index]}',
            '${GazamDataClass.promotionDetial[index]}',
            '${GazamDataClass.iconData[index]}',
            '${GazamDataClass.gazamDetail[index]}',
            '${GazamDataClass.prodectDetailDescription[index]}',
            '${GazamDataClass.selerInfoScore[index]}',
            '${GazamDataClass.orderFulfillmentRate[index]}',
            '${GazamDataClass.qualityScore[index]}',
            '${GazamDataClass.customerRat[index]}',
            '${GazamDataClass.comment[index]}',
            '${GazamDataClass.follower[index]}',
            '${GazamDataClass.dayWisedata[index]}',
          ));