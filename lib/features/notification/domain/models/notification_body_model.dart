enum NotificationTypeModel{
  message,
  order,
  general,
  advertisement,
  block,
  unblock,
  subscription,
  product,
  withdraw,
  campaign,
}

class NotificationBody {
  NotificationTypeModel? notificationType;
  int? orderId;
  int? customerId;
  int? deliveryManId;
  int? conversationId;
  String? type;

  NotificationBody({
    this.notificationType,
    this.orderId,
    this.customerId,
    this.deliveryManId,
    this.conversationId,
    this.type,
  });

  NotificationBody.fromJson(Map<String, dynamic> json) {
    notificationType = convertToEnum(json['order_notification']);
    orderId = json['order_id'];
    customerId = json['customer_id'];
    deliveryManId = json['delivery_man_id'];
    conversationId = json['conversation_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['order_notification'] = notificationType.toString();
    data['order_id'] = orderId;
    data['customer_id'] = customerId;
    data['delivery_man_id'] = deliveryManId;
    data['conversation_id'] = conversationId;
    data['type'] = type;
    return data;
  }

  NotificationTypeModel convertToEnum(String? enumString) {
    if(enumString == NotificationTypeModel.general.toString()) {
      return NotificationTypeModel.general;
    }else if(enumString == NotificationTypeModel.order.toString()) {
      return NotificationTypeModel.order;
    }else if(enumString == NotificationTypeModel.message.toString()) {
      return NotificationTypeModel.message;
    }else if(enumString == NotificationTypeModel.advertisement.toString()) {
      return NotificationTypeModel.advertisement;
    }else if(enumString == NotificationTypeModel.block.toString()) {
      return NotificationTypeModel.block;
    }else if(enumString == NotificationTypeModel.unblock.toString()) {
      return NotificationTypeModel.unblock;
    }else if(enumString == NotificationTypeModel.subscription.toString()) {
      return NotificationTypeModel.subscription;
    }else if(enumString == NotificationTypeModel.product.toString()) {
      return NotificationTypeModel.product;
    }else if(enumString == NotificationTypeModel.withdraw.toString()) {
      return NotificationTypeModel.withdraw;
    }else if(enumString == NotificationTypeModel.campaign.toString()) {
      return NotificationTypeModel.campaign;
    }
    return NotificationTypeModel.general;
  }

}
