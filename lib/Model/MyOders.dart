class myOrdersModel {
  String? orderNo;
  String? date;
  String? trackingNumber;
  int? quantity;
  int? amount;
  String? deliveryStatus;
  bool? delivered;
  bool? processing;
  bool? cancelled;
  myOrdersModel(
      {this.orderNo,
      this.date,
      this.trackingNumber,
      this.quantity,
      this.amount,
      this.deliveryStatus,
      this.cancelled,
      this.delivered,
      this.processing});
}

List<myOrdersModel> odersDetailsDelivered = [
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Delivered",
      delivered: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Delivered",
      delivered: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Delivered",
      delivered: true),
];
List<myOrdersModel> odersDetailsProcessing = [
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Processing",
      processing: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Processing",
      processing: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Processing",
      processing: true),
];
List<myOrdersModel> odersDetailsCanceled = [
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Cancelled",
      cancelled: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Cancelled",
      cancelled: true),
  myOrdersModel(
      orderNo: "1947034",
      date: "05-12-2019",
      trackingNumber: "IW3475453455",
      quantity: 3,
      amount: 112,
      deliveryStatus: "Cancelled",
      cancelled: true),
];
