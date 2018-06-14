class Message {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  Message(this.avatar, this.title, this.subTitle, this.time, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<Message> messageData = [
  new Message(
    'http://cdn.duitang.com/uploads/item/201512/16/20151216205356_M2UaS.jpeg',
    '冯宝宝',
    '你现在在哪里？带带我',
    new DateTime.now(),
    MessageType.CHAT
  ),
   new Message(
    'http://img3.duitang.com/uploads/item/201511/14/20151114125146_LXHzE.jpeg',
    '张楚岚',
    '宝儿姐，别闹！！！',
    new DateTime.now(),
    MessageType.CHAT
  ),
   new Message(
    'http://img3.duitang.com/uploads/item/201506/21/20150621155038_azW43.jpeg',
    '徐四',
    '赶紧给我回公司开会。。',
    new DateTime.now(),
    MessageType.CHAT
  ),
   new Message(
    'http://img5.duitang.com/uploads/item/201601/12/20160112200836_dRTZx.jpeg',
    '张灵玉',
    '休要管我，滚开！再不走让你知道本大爷的厉害。嗖嗖嗖。。。。',
    new DateTime.now(),
    MessageType.CHAT
  ),
  new Message(
    'http://www.qqpk.cn/Article/UploadFiles/201112/20111212151649699.jpg',
    '夏禾',
    '号称”刮骨刀“，全性”四张狂“之一。先天异人，能操控别人的色欲。从不亲手杀人，但她的对手最终都被自己的欲望淹没，沦为废人。',
    new DateTime.now(),
    MessageType.CHAT
  ),
  new Message(
    'http://img3.duitang.com/uploads/item/201512/18/20151218122357_whLxn.jpeg',
    '诸葛青',
    '武侯派诸葛家年轻一辈中的天才。几十年来第一个掌握全部武侯奇门的人。',
    new DateTime.now(),
    MessageType.CHAT
  ),
  new Message(
    'http://img3.duitang.com/uploads/item/201508/12/20150812204022_xR2uQ.jpeg',
    '王也',
    '武当派弟子（现已离开武当），同时也是八奇技之一风后奇门的继承人。',
    new DateTime.now(),
    MessageType.CHAT
  ),
  new Message(
    'http://pic.qqtn.com/up/2017-12/2017120910404590363.jpg',
    '风莎燕',
    '风正豪之女，风星潼的姐姐，平时像个大家闺秀，很听父亲的话，但其实有很强的叛逆心理，与冯宝宝关系恶劣。',
    new DateTime.now(),
    MessageType.CHAT
  ),
];
