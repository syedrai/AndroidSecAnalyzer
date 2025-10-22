.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferedSource.kt\nokio/internal/-BufferedSource\n*L\n1#1,644:1\n88#2:645\n85#2:678\n85#2:680\n73#2:740\n73#2:766\n82#2:805\n76#2:816\n88#2:1009\n73#2:1024\n85#2:1128\n88#2:1565\n242#3,32:646\n277#3,10:681\n290#3,18:691\n412#3,2:709\n110#3:711\n414#3:712\n112#3,18:713\n311#3,9:731\n320#3,15:741\n338#3,10:756\n348#3,3:767\n346#3,25:770\n374#3,10:795\n384#3:806\n382#3,9:807\n391#3,7:817\n389#3,20:824\n652#3,60:844\n715#3,56:904\n773#3:960\n776#3:961\n777#3,6:963\n787#3,7:969\n797#3,6:979\n805#3,5:985\n837#3,6:990\n847#3:996\n848#3,11:998\n859#3,5:1010\n868#3,9:1015\n878#3,61:1025\n603#3:1086\n606#3:1087\n607#3,5:1089\n614#3:1094\n617#3,7:1095\n626#3,20:1102\n418#3:1122\n421#3,5:1123\n426#3,10:1129\n437#3,7:1139\n442#3,2:1146\n943#3:1148\n944#3,87:1150\n1034#3,48:1237\n573#3:1285\n580#3,21:1286\n1085#3,7:1307\n1095#3,7:1314\n1105#3,4:1321\n1112#3,8:1325\n1123#3,10:1333\n1136#3,14:1343\n447#3,35:1357\n513#3,40:1392\n556#3:1432\n558#3,13:1434\n1153#3:1447\n1204#3:1448\n1205#3,39:1450\n1246#3,2:1489\n1248#3,4:1492\n1255#3,3:1496\n1259#3,4:1500\n110#3:1504\n1263#3,22:1505\n112#3,18:1527\n1289#3,2:1545\n1291#3,3:1548\n110#3:1551\n1294#3,13:1552\n1307#3,13:1566\n112#3,18:1579\n1324#3,2:1597\n1327#3:1600\n110#3:1601\n1328#3,50:1602\n112#3,18:1652\n1387#3,14:1670\n1404#3,32:1684\n1439#3,12:1716\n1454#3,18:1728\n1476#3:1746\n1477#3:1748\n1482#3,34:1749\n1#4:679\n1#4:962\n1#4:997\n1#4:1088\n1#4:1149\n1#4:1433\n1#4:1449\n1#4:1491\n1#4:1499\n1#4:1547\n1#4:1599\n1#4:1747\n26#5,3:976\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:645\n197#1:678\n235#1:680\n261#1:740\n264#1:766\n267#1:805\n267#1:816\n337#1:1009\n340#1:1024\n376#1:1128\n486#1:1565\n181#1:646,32\n252#1:681,10\n255#1:691,18\n258#1:709,2\n258#1:711\n258#1:712\n258#1:713,18\n261#1:731,9\n261#1:741,15\n264#1:756,10\n264#1:767,3\n264#1:770,25\n267#1:795,10\n267#1:806\n267#1:807,9\n267#1:817,7\n267#1:824,20\n279#1:844,60\n282#1:904,56\n284#1:960\n287#1:961\n287#1:963,6\n289#1:969,7\n294#1:979,6\n297#1:985,5\n331#1:990,6\n337#1:996\n337#1:998,11\n337#1:1010,5\n340#1:1015,9\n340#1:1025,61\n342#1:1086\n345#1:1087\n345#1:1089,5\n347#1:1094\n350#1:1095,7\n353#1:1102,20\n373#1:1122\n376#1:1123,5\n376#1:1129,10\n378#1:1139,7\n381#1:1146,2\n386#1:1148\n386#1:1150,87\n389#1:1237,48\n412#1:1285\n418#1:1286,21\n439#1:1307,7\n443#1:1314,7\n445#1:1321,4\n447#1:1325,8\n451#1:1333,10\n455#1:1343,14\n459#1:1357,35\n462#1:1392,40\n465#1:1432\n465#1:1434,13\n467#1:1447\n467#1:1448\n467#1:1450,39\n469#1:1489,2\n469#1:1492,4\n480#1:1496,3\n480#1:1500,4\n480#1:1504\n480#1:1505,22\n480#1:1527,18\n486#1:1545,2\n486#1:1548,3\n486#1:1551\n486#1:1552,13\n486#1:1566,13\n486#1:1579,18\n491#1:1597,2\n491#1:1600\n491#1:1601\n491#1:1602,50\n491#1:1652,18\n501#1:1670,14\n571#1:1684,32\n573#1:1716,12\n581#1:1728,18\n589#1:1746\n589#1:1748\n591#1:1749,34\n287#1:962\n337#1:997\n345#1:1088\n386#1:1149\n465#1:1433\n467#1:1449\n469#1:1491\n480#1:1499\n486#1:1547\n491#1:1599\n589#1:1747\n291#1:976,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0094\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000f\u001a\u00020\u0000H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0000H\u0016J\u0008\u0010\u0015\u001a\u00020\u0000H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0008\u0010\u001c\u001a\u00020\u0001H\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J$\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00132\u0008\u0008\u0002\u0010!\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\nH\u0007J \u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010!\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010!\u001a\u00020\nJ\u001a\u0010\"\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001a\u001a\u00020\nH\u0007J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001eJ\u0016\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\nJ \u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0017H\u0002J\u0006\u0010&\u001a\u00020\nJ\u0008\u0010\'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\nH\u0087\u0002\u00a2\u0006\u0002\u0008+J\u0008\u0010,\u001a\u00020-H\u0016J\u0008\u0010.\u001a\u00020/H\u0016J\u0008\u00100\u001a\u00020\nH\u0016J\u0008\u00101\u001a\u00020-H\u0016J\u0008\u00102\u001a\u00020/H\u0016J\u0008\u00103\u001a\u00020\nH\u0016J\u0008\u00104\u001a\u00020\nH\u0016J\u0008\u00105\u001a\u00020\nH\u0016J\u0008\u00106\u001a\u000207H\u0016J\u0010\u00106\u001a\u0002072\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020:H\u0016J\'\u00108\u001a\u0004\u0018\u0001H;\"\u0008\u0008\u0000\u0010;*\u00020<2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u0002H;0=H\u0016\u00a2\u0006\u0002\u0010>J\u0018\u0010?\u001a\u00020\u00192\u0006\u0010@\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010A\u001a\u00020\n2\u0006\u0010@\u001a\u00020BH\u0016J\u0008\u0010C\u001a\u00020DH\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010E\u001a\u00020D2\u0006\u0010F\u001a\u00020GH\u0016J\u0018\u0010E\u001a\u00020D2\u0006\u0010\u001a\u001a\u00020\n2\u0006\u0010F\u001a\u00020GH\u0016J\n\u0010H\u001a\u0004\u0018\u00010DH\u0016J\u0008\u0010I\u001a\u00020DH\u0016J\u0010\u0010I\u001a\u00020D2\u0006\u0010J\u001a\u00020\nH\u0016J\u0008\u0010K\u001a\u00020/H\u0016J\u0008\u0010L\u001a\u00020MH\u0016J\u0010\u0010L\u001a\u00020M2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010N\u001a\u00020/2\u0006\u0010@\u001a\u00020MH\u0016J\u0010\u0010?\u001a\u00020\u00192\u0006\u0010@\u001a\u00020MH\u0016J \u0010N\u001a\u00020/2\u0006\u0010@\u001a\u00020M2\u0006\u0010!\u001a\u00020/2\u0006\u0010\u001a\u001a\u00020/H\u0016J\u0010\u0010N\u001a\u00020/2\u0006\u0010@\u001a\u00020OH\u0016J\u0006\u0010P\u001a\u00020\u0019J\u0010\u0010Q\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010S\u001a\u000207H\u0016J \u0010R\u001a\u00020\u00002\u0006\u0010S\u001a\u0002072\u0006\u0010!\u001a\u00020/2\u0006\u0010\u001a\u001a\u00020/H\u0016J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020DH\u0016J \u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020D2\u0006\u0010V\u001a\u00020/2\u0006\u0010W\u001a\u00020/H\u0016J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020/H\u0016J\u0018\u0010Z\u001a\u00020\u00002\u0006\u0010U\u001a\u00020D2\u0006\u0010F\u001a\u00020GH\u0016J(\u0010Z\u001a\u00020\u00002\u0006\u0010U\u001a\u00020D2\u0006\u0010V\u001a\u00020/2\u0006\u0010W\u001a\u00020/2\u0006\u0010F\u001a\u00020GH\u0016J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010[\u001a\u00020MH\u0016J \u0010R\u001a\u00020\u00002\u0006\u0010[\u001a\u00020M2\u0006\u0010!\u001a\u00020/2\u0006\u0010\u001a\u001a\u00020/H\u0016J\u0010\u0010R\u001a\u00020/2\u0006\u0010[\u001a\u00020OH\u0016J\u0010\u0010\\\u001a\u00020\n2\u0006\u0010[\u001a\u00020]H\u0016J\u0018\u0010R\u001a\u00020\u00002\u0006\u0010[\u001a\u00020]2\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010^\u001a\u00020\u00002\u0006\u0010_\u001a\u00020/H\u0016J\u0010\u0010`\u001a\u00020\u00002\u0006\u0010a\u001a\u00020/H\u0016J\u0010\u0010b\u001a\u00020\u00002\u0006\u0010a\u001a\u00020/H\u0016J\u0010\u0010c\u001a\u00020\u00002\u0006\u0010d\u001a\u00020/H\u0016J\u0010\u0010e\u001a\u00020\u00002\u0006\u0010d\u001a\u00020/H\u0016J\u0010\u0010f\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\nH\u0016J\u0010\u0010h\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\nH\u0016J\u0010\u0010i\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\nH\u0016J\u0010\u0010j\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\nH\u0016J\u0015\u0010k\u001a\u00020\u00082\u0006\u0010l\u001a\u00020/H\u0000\u00a2\u0006\u0002\u0008mJ\u0018\u0010R\u001a\u00020\u00192\u0006\u0010[\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0018\u0010N\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\nH\u0016J\u0010\u0010n\u001a\u00020\n2\u0006\u0010_\u001a\u00020(H\u0016J\u0018\u0010n\u001a\u00020\n2\u0006\u0010_\u001a\u00020(2\u0006\u0010o\u001a\u00020\nH\u0016J \u0010n\u001a\u00020\n2\u0006\u0010_\u001a\u00020(2\u0006\u0010o\u001a\u00020\n2\u0006\u0010p\u001a\u00020\nH\u0016J\u0010\u0010n\u001a\u00020\n2\u0006\u0010q\u001a\u000207H\u0016J\u0018\u0010n\u001a\u00020\n2\u0006\u0010q\u001a\u0002072\u0006\u0010o\u001a\u00020\nH\u0016J\u0010\u0010r\u001a\u00020\n2\u0006\u0010s\u001a\u000207H\u0016J\u0018\u0010r\u001a\u00020\n2\u0006\u0010s\u001a\u0002072\u0006\u0010o\u001a\u00020\nH\u0016J\u0018\u0010t\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\n2\u0006\u0010q\u001a\u000207H\u0016J(\u0010t\u001a\u00020\u00172\u0006\u0010!\u001a\u00020\n2\u0006\u0010q\u001a\u0002072\u0006\u0010u\u001a\u00020/2\u0006\u0010\u001a\u001a\u00020/H\u0016J\u0008\u0010v\u001a\u00020\u0019H\u0016J\u0008\u0010w\u001a\u00020\u0017H\u0016J\u0008\u0010x\u001a\u00020\u0019H\u0016J\u0008\u0010y\u001a\u00020zH\u0016J\u0006\u0010{\u001a\u000207J\u0006\u0010|\u001a\u000207J\u0006\u0010}\u001a\u000207J\u0006\u0010~\u001a\u000207J\u0011\u0010\u007f\u001a\u0002072\u0007\u0010\u0080\u0001\u001a\u00020DH\u0002J\u0010\u0010\u0081\u0001\u001a\u0002072\u0007\u0010\u0082\u0001\u001a\u000207J\u0010\u0010\u0083\u0001\u001a\u0002072\u0007\u0010\u0082\u0001\u001a\u000207J\u0010\u0010\u0084\u0001\u001a\u0002072\u0007\u0010\u0082\u0001\u001a\u000207J\u001b\u0010\u0085\u0001\u001a\u0002072\u0007\u0010\u0080\u0001\u001a\u00020D2\u0007\u0010\u0082\u0001\u001a\u000207H\u0002J\u0015\u0010\u0086\u0001\u001a\u00020\u00172\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010<H\u0096\u0002J\t\u0010\u0088\u0001\u001a\u00020/H\u0016J\t\u0010\u0089\u0001\u001a\u00020DH\u0016J\u0007\u0010\u008a\u0001\u001a\u00020\u0000J\t\u0010\u008b\u0001\u001a\u00020\u0000H\u0016J\u0007\u0010\u008c\u0001\u001a\u000207J\u000f\u0010\u008c\u0001\u001a\u0002072\u0006\u0010\u001a\u001a\u00020/J\u0016\u0010\u008d\u0001\u001a\u00030\u008e\u00012\n\u0008\u0002\u0010\u008f\u0001\u001a\u00030\u008e\u0001H\u0007J\u0016\u0010\u0090\u0001\u001a\u00030\u008e\u00012\n\u0008\u0002\u0010\u008f\u0001\u001a\u00030\u008e\u0001H\u0007J\u0017\u0010+\u001a\u00020(2\u0007\u0010\u0091\u0001\u001a\u00020\nH\u0007\u00a2\u0006\u0003\u0008\u0092\u0001J\u000e\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0003\u0008\u0093\u0001R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8G@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0095\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "<init>",
        "()V",
        "head",
        "Lokio/Segment;",
        "value",
        "",
        "size",
        "()J",
        "setSize$third_party_java_src_okio_okio_jvm",
        "(J)V",
        "buffer",
        "getBuffer",
        "()Lokio/Buffer;",
        "outputStream",
        "Ljava/io/OutputStream;",
        "emitCompleteSegments",
        "emit",
        "exhausted",
        "",
        "require",
        "",
        "byteCount",
        "request",
        "peek",
        "inputStream",
        "Ljava/io/InputStream;",
        "copyTo",
        "out",
        "offset",
        "writeTo",
        "readFrom",
        "input",
        "forever",
        "completeSegmentByteCount",
        "readByte",
        "",
        "get",
        "pos",
        "getByte",
        "readShort",
        "",
        "readInt",
        "",
        "readLong",
        "readShortLe",
        "readIntLe",
        "readLongLe",
        "readDecimalLong",
        "readHexadecimalUnsignedLong",
        "readByteString",
        "Lokio/ByteString;",
        "select",
        "options",
        "Lokio/Options;",
        "T",
        "",
        "Lokio/TypedOptions;",
        "(Lokio/TypedOptions;)Ljava/lang/Object;",
        "readFully",
        "sink",
        "readAll",
        "Lokio/Sink;",
        "readUtf8",
        "",
        "readString",
        "charset",
        "Ljava/nio/charset/Charset;",
        "readUtf8Line",
        "readUtf8LineStrict",
        "limit",
        "readUtf8CodePoint",
        "readByteArray",
        "",
        "read",
        "Ljava/nio/ByteBuffer;",
        "clear",
        "skip",
        "write",
        "byteString",
        "writeUtf8",
        "string",
        "beginIndex",
        "endIndex",
        "writeUtf8CodePoint",
        "codePoint",
        "writeString",
        "source",
        "writeAll",
        "Lokio/Source;",
        "writeByte",
        "b",
        "writeShort",
        "s",
        "writeShortLe",
        "writeInt",
        "i",
        "writeIntLe",
        "writeLong",
        "v",
        "writeLongLe",
        "writeDecimalLong",
        "writeHexadecimalUnsignedLong",
        "writableSegment",
        "minimumCapacity",
        "writableSegment$third_party_java_src_okio_okio_jvm",
        "indexOf",
        "fromIndex",
        "toIndex",
        "bytes",
        "indexOfElement",
        "targetBytes",
        "rangeEquals",
        "bytesOffset",
        "flush",
        "isOpen",
        "close",
        "timeout",
        "Lokio/Timeout;",
        "md5",
        "sha1",
        "sha256",
        "sha512",
        "digest",
        "algorithm",
        "hmacSha1",
        "key",
        "hmacSha256",
        "hmacSha512",
        "hmac",
        "equals",
        "other",
        "hashCode",
        "toString",
        "copy",
        "clone",
        "snapshot",
        "readUnsafe",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "readAndWriteUnsafe",
        "index",
        "-deprecated_getByte",
        "-deprecated_size",
        "UnsafeCursor",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public head:Lokio/Segment;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 149
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_0

    .line 145
    :cond_0
    move-wide v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 150
    iget-wide p2, p0, Lokio/Buffer;->size:J

    sub-long p4, p2, v2

    move-wide v4, p4

    goto :goto_1

    .line 145
    :cond_1
    move-wide v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0

    .line 183
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 50
    const-wide/16 p2, 0x0

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->copyTo(Lokio/Buffer;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyTo$default(Lokio/Buffer;Lokio/Buffer;JJILjava/lang/Object;)Lokio/Buffer;
    .locals 6

    .line 177
    and-int/lit8 p6, p6, 0x2

    if-eqz p6, :cond_0

    .line 44
    const-wide/16 p2, 0x0

    move-wide v2, p2

    goto :goto_0

    .line 177
    :cond_0
    move-wide v2, p2

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method private final digest(Ljava/lang/String;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 532
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 533
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .local v1, "head":Lokio/Segment;
    const/4 v2, 0x0

    .line 534
    .local v2, "$i$a$-let-Buffer$digest$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 535
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 536
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-eq v3, v1, :cond_0

    .line 537
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 538
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_0

    .line 540
    :cond_0
    nop

    .line 533
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$digest$1":I
    .end local v3    # "s":Lokio/Segment;
    nop

    .line 541
    :cond_1
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "digest(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method private final hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "key"
        }
    .end annotation

    .line 554
    nop

    .line 555
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 556
    .local v0, "mac":Ljavax/crypto/Mac;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    check-cast v1, Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 557
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v1, :cond_1

    .local v1, "head":Lokio/Segment;
    const/4 v2, 0x0

    .line 558
    .local v2, "$i$a$-let-Buffer$hmac$1":I
    iget-object v3, v1, Lokio/Segment;->data:[B

    iget v4, v1, Lokio/Segment;->pos:I

    iget v5, v1, Lokio/Segment;->limit:I

    iget v6, v1, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    invoke-virtual {v0, v3, v4, v5}, Ljavax/crypto/Mac;->update([BII)V

    .line 559
    iget-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 560
    .local v3, "s":Lokio/Segment;
    :goto_0
    if-eq v3, v1, :cond_0

    .line 561
    iget-object v4, v3, Lokio/Segment;->data:[B

    iget v5, v3, Lokio/Segment;->pos:I

    iget v6, v3, Lokio/Segment;->limit:I

    iget v7, v3, Lokio/Segment;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Ljavax/crypto/Mac;->update([BII)V

    .line 562
    iget-object v4, v3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_0

    .line 564
    :cond_0
    nop

    .line 557
    .end local v1    # "head":Lokio/Segment;
    .end local v2    # "$i$a$-let-Buffer$hmac$1":I
    .end local v3    # "s":Lokio/Segment;
    :cond_1
    nop

    .line 565
    new-instance v1, Lokio/ByteString;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    const-string v3, "doFinal(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 566
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static synthetic readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    .line 596
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 107
    invoke-static {}, Lokio/-SegmentedByteString;->getDEFAULT__new_UnsafeCursor()Lokio/Buffer$UnsafeCursor;

    move-result-object p1

    .line 596
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method private final readFrom(Ljava/io/InputStream;JZ)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .param p4, "forever"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "byteCount",
            "forever"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    move-wide v0, p2

    .line 233
    .local v0, "byteCount":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    if-eqz p4, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    return-void

    .line 234
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 235
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    .local v3, "b$iv":I
    const/4 v4, 0x0

    .line 680
    .local v4, "$i$f$minOf":I
    int-to-long v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 235
    .end local v3    # "b$iv":I
    .end local v4    # "$i$f$minOf":I
    long-to-int v3, v5

    .line 236
    .local v3, "maxToCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 237
    .local v4, "bytesRead":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 238
    iget v5, v2, Lokio/Segment;->pos:I

    iget v6, v2, Lokio/Segment;->limit:I

    if-ne v5, v6, :cond_2

    .line 240
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 241
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 243
    :cond_2
    if-eqz p4, :cond_3

    return-void

    .line 244
    :cond_3
    new-instance v5, Ljava/io/EOFException;

    invoke-direct {v5}, Ljava/io/EOFException;-><init>()V

    throw v5

    .line 246
    :cond_4
    iget v5, v2, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v2, Lokio/Segment;->limit:I

    .line 247
    iget-wide v5, p0, Lokio/Buffer;->size:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    .line 248
    int-to-long v5, v4

    sub-long/2addr v0, v5

    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "maxToCopy":I
    .end local v4    # "bytesRead":I
    goto :goto_0
.end method

.method public static synthetic readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    .line 593
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 102
    invoke-static {}, Lokio/-SegmentedByteString;->getDEFAULT__new_UnsafeCursor()Lokio/Buffer$UnsafeCursor;

    move-result-object p1

    .line 593
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 191
    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 189
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final -deprecated_getByte(J)B
    .locals 1
    .param p1, "index"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to operator function"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this[index]"
            imports = {}
        .end subannotation
    .end annotation

    .line 606
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->getByte(J)B

    move-result v0

    return v0
.end method

.method public final -deprecated_size()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "moved to val"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "size"
            imports = {}
        .end subannotation
    .end annotation

    .line 614
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public buffer()Lokio/Buffer;
    .locals 0

    .line 83
    return-object p0
.end method

.method public final clear()V
    .locals 4

    .line 373
    move-object v0, p0

    .local v0, "$this$commonClear$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1122
    .local v1, "$i$f$commonClear":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->skip(J)V

    .line 373
    .end local v0    # "$this$commonClear$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonClear":I
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lokio/Buffer;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lokio/Buffer;->copy()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 507
    return-void
.end method

.method public final completeSegmentByteCount()J
    .locals 7

    .line 252
    move-object v0, p0

    .local v0, "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 681
    .local v1, "$i$f$commonCompleteSegmentByteCount":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 682
    .local v2, "result$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 686
    .local v4, "tail$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    const/16 v6, 0x2000

    if-ge v5, v6, :cond_1

    iget-boolean v5, v4, Lokio/Segment;->owner:Z

    if-eqz v5, :cond_1

    .line 687
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v2, v5

    .line 690
    :cond_1
    move-wide v4, v2

    .line 252
    .end local v0    # "$this$commonCompleteSegmentByteCount$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCompleteSegmentByteCount":I
    .end local v2    # "result$iv":J
    .end local v4    # "tail$iv":Lokio/Segment;
    :goto_0
    return-wide v4
.end method

.method public final copy()Lokio/Buffer;
    .locals 8

    .line 581
    move-object v0, p0

    .local v0, "$this$commonCopy$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1728
    .local v1, "$i$f$commonCopy":I
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 1729
    .local v2, "result$iv":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_1

    .line 1731
    :cond_0
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1732
    .local v3, "head$iv":Lokio/Segment;
    invoke-virtual {v3}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v4

    .line 1734
    .local v4, "headCopy$iv":Lokio/Segment;
    iput-object v4, v2, Lokio/Buffer;->head:Lokio/Segment;

    .line 1735
    iget-object v5, v2, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1736
    iget-object v5, v4, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v4, Lokio/Segment;->next:Lokio/Segment;

    .line 1738
    iget-object v5, v3, Lokio/Segment;->next:Lokio/Segment;

    .line 1739
    .local v5, "s$iv":Lokio/Segment;
    :goto_0
    if-eq v5, v3, :cond_1

    .line 1740
    iget-object v6, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 1741
    iget-object v5, v5, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1744
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1745
    nop

    .line 581
    .end local v0    # "$this$commonCopy$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCopy":I
    .end local v2    # "result$iv":Lokio/Buffer;
    .end local v3    # "head$iv":Lokio/Segment;
    .end local v4    # "headCopy$iv":Lokio/Segment;
    .end local v5    # "s$iv":Lokio/Segment;
    :goto_1
    return-object v2
.end method

.method public final copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static/range {v1 .. v8}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    .line 175
    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "out":Ljava/io/OutputStream;
    .end local p2    # "offset":J
    .local v2, "out":Ljava/io/OutputStream;
    .local v3, "offset":J
    invoke-static/range {v1 .. v8}, Lokio/Buffer;->copyTo$default(Lokio/Buffer;Ljava/io/OutputStream;JJILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    .line 175
    return-object p1
.end method

.method public final copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .locals 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "offset",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    move-wide v3, p2

    .line 153
    .local v3, "offset":J
    move-wide/from16 v5, p4

    .line 154
    .local v5, "byteCount":J
    iget-wide v1, p0, Lokio/Buffer;->size:J

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 155
    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-nez v2, :cond_0

    return-object p0

    .line 158
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 159
    .local v2, "s":Lokio/Segment;
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v9, v3, v7

    if-ltz v9, :cond_1

    .line 160
    iget v7, v2, Lokio/Segment;->limit:I

    iget v8, v2, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v3, v7

    .line 161
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 165
    :cond_1
    :goto_1
    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    .line 166
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v7, v2, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    long-to-int v8, v7

    .line 167
    .local v8, "pos":I
    iget v7, v2, Lokio/Segment;->limit:I

    sub-int/2addr v7, v8

    .local v7, "a$iv":I
    const/4 v9, 0x0

    .line 645
    .local v9, "$i$f$minOf":I
    int-to-long v10, v7

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 167
    .end local v7    # "a$iv":I
    .end local v9    # "$i$f$minOf":I
    long-to-int v7, v10

    .line 168
    .local v7, "toCopy":I
    iget-object v9, v2, Lokio/Segment;->data:[B

    invoke-virtual {p1, v9, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    int-to-long v9, v7

    sub-long/2addr v5, v9

    .line 170
    const-wide/16 v3, 0x0

    .line 171
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .end local v7    # "toCopy":I
    .end local v8    # "pos":I
    goto :goto_1

    .line 174
    :cond_2
    return-object p0
.end method

.method public final copyTo(Lokio/Buffer;J)Lokio/Buffer;
    .locals 8
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "offset"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sub-long v6, v0, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    .end local p1    # "out":Lokio/Buffer;
    .end local p2    # "offset":J
    .local v3, "out":Lokio/Buffer;
    .local v4, "offset":J
    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public final copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 12
    .param p1, "out"    # Lokio/Buffer;
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    move-object v0, p0

    .local v0, "$this$commonCopyTo$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 646
    .local v1, "$i$f$commonCopyTo":I
    move-wide v4, p2

    .line 647
    .local v4, "offset$iv":J
    move-wide/from16 v6, p4

    .line 648
    .local v6, "byteCount$iv":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 649
    const-wide/16 v2, 0x0

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    goto :goto_3

    .line 651
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 654
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 655
    .local v8, "s$iv":Lokio/Segment;
    :goto_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    cmp-long v11, v4, v9

    if-ltz v11, :cond_1

    .line 656
    iget v9, v8, Lokio/Segment;->limit:I

    iget v10, v8, Lokio/Segment;->pos:I

    sub-int/2addr v9, v10

    int-to-long v9, v9

    sub-long/2addr v4, v9

    .line 657
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 661
    :cond_1
    :goto_1
    cmp-long v9, v6, v2

    if-lez v9, :cond_3

    .line 662
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lokio/Segment;->sharedCopy()Lokio/Segment;

    move-result-object v9

    .line 663
    .local v9, "copy$iv":Lokio/Segment;
    iget v10, v9, Lokio/Segment;->pos:I

    long-to-int v11, v4

    add-int/2addr v10, v11

    iput v10, v9, Lokio/Segment;->pos:I

    .line 664
    iget v10, v9, Lokio/Segment;->pos:I

    long-to-int v11, v6

    add-int/2addr v10, v11

    iget v11, v9, Lokio/Segment;->limit:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Lokio/Segment;->limit:I

    .line 665
    iget-object v10, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v10, :cond_2

    .line 666
    iput-object v9, v9, Lokio/Segment;->prev:Lokio/Segment;

    .line 667
    iget-object v10, v9, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v10, v9, Lokio/Segment;->next:Lokio/Segment;

    .line 668
    iget-object v10, v9, Lokio/Segment;->next:Lokio/Segment;

    iput-object v10, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_2

    .line 670
    :cond_2
    iget-object v10, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10, v9}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 672
    :goto_2
    iget v10, v9, Lokio/Segment;->limit:I

    iget v11, v9, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    sub-long/2addr v6, v10

    .line 673
    const-wide/16 v4, 0x0

    .line 674
    iget-object v8, v8, Lokio/Segment;->next:Lokio/Segment;

    .end local v9    # "copy$iv":Lokio/Segment;
    goto :goto_1

    .line 677
    :cond_3
    nop

    .line 181
    .end local v0    # "$this$commonCopyTo$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonCopyTo":I
    .end local v4    # "offset$iv":J
    .end local v6    # "byteCount$iv":J
    .end local v8    # "s$iv":Lokio/Segment;
    :goto_3
    return-object v0
.end method

.method public emit()Lokio/Buffer;
    .locals 0

    .line 107
    return-object p0
.end method

.method public bridge synthetic emit()Lokio/BufferedSink;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->emit()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .locals 0

    .line 105
    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 571
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonEquals$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1684
    .local v2, "$i$f$commonEquals":I
    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    .line 1685
    :cond_0
    instance-of v4, v0, Lokio/Buffer;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1686
    :cond_1
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v6

    move-object v4, v0

    check-cast v4, Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1687
    :cond_2
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    goto :goto_2

    .line 1689
    :cond_3
    iget-object v4, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1690
    .local v4, "sa$iv":Lokio/Segment;
    move-object v6, v0

    check-cast v6, Lokio/Buffer;

    iget-object v6, v6, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1691
    .local v6, "sb$iv":Lokio/Segment;
    iget v7, v4, Lokio/Segment;->pos:I

    .line 1692
    .local v7, "posA$iv":I
    iget v8, v6, Lokio/Segment;->pos:I

    .line 1694
    .local v8, "posB$iv":I
    const-wide/16 v9, 0x0

    .line 1695
    .local v9, "pos$iv":J
    const-wide/16 v11, 0x0

    .line 1696
    .local v11, "count$iv":J
    :goto_0
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v13

    cmp-long v15, v9, v13

    if-gez v15, :cond_8

    .line 1697
    iget v13, v4, Lokio/Segment;->limit:I

    sub-int/2addr v13, v7

    iget v14, v6, Lokio/Segment;->limit:I

    sub-int/2addr v14, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-long v11, v13

    .line 1699
    const-wide/16 v13, 0x0

    .local v13, "i$iv":J
    :goto_1
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    .line 1700
    iget-object v15, v4, Lokio/Segment;->data:[B

    add-int/lit8 v16, v7, 0x1

    .end local v7    # "posA$iv":I
    .local v16, "posA$iv":I
    aget-byte v7, v15, v7

    iget-object v15, v6, Lokio/Segment;->data:[B

    add-int/lit8 v17, v8, 0x1

    .end local v8    # "posB$iv":I
    .local v17, "posB$iv":I
    aget-byte v8, v15, v8

    if-eq v7, v8, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    .line 1699
    :cond_4
    const-wide/16 v7, 0x1

    add-long/2addr v13, v7

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_1

    .line 1703
    .end local v13    # "i$iv":J
    .end local v16    # "posA$iv":I
    .end local v17    # "posB$iv":I
    .restart local v7    # "posA$iv":I
    .restart local v8    # "posB$iv":I
    :cond_5
    iget v13, v4, Lokio/Segment;->limit:I

    if-ne v7, v13, :cond_6

    .line 1704
    iget-object v13, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1705
    .end local v4    # "sa$iv":Lokio/Segment;
    .local v13, "sa$iv":Lokio/Segment;
    iget v4, v13, Lokio/Segment;->pos:I

    move v7, v4

    move-object v4, v13

    .line 1708
    .end local v13    # "sa$iv":Lokio/Segment;
    .restart local v4    # "sa$iv":Lokio/Segment;
    :cond_6
    iget v13, v6, Lokio/Segment;->limit:I

    if-ne v8, v13, :cond_7

    .line 1709
    iget-object v13, v6, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1710
    .end local v6    # "sb$iv":Lokio/Segment;
    .local v13, "sb$iv":Lokio/Segment;
    iget v6, v13, Lokio/Segment;->pos:I

    move v8, v6

    move-object v6, v13

    .line 1712
    .end local v13    # "sb$iv":Lokio/Segment;
    .restart local v6    # "sb$iv":Lokio/Segment;
    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    .line 1715
    :cond_8
    nop

    .line 571
    .end local v1    # "$this$commonEquals$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonEquals":I
    .end local v4    # "sa$iv":Lokio/Segment;
    .end local v6    # "sb$iv":Lokio/Segment;
    .end local v7    # "posA$iv":I
    .end local v8    # "posB$iv":I
    .end local v9    # "pos$iv":J
    .end local v11    # "count$iv":J
    :goto_2
    return v3
.end method

.method public exhausted()Z
    .locals 5

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()V
    .locals 0

    .line 503
    return-void
.end method

.method public getBuffer()Lokio/Buffer;
    .locals 0

    .line 85
    return-object p0
.end method

.method public final getByte(J)B
    .locals 14
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 258
    move-object v0, p0

    .local v0, "$this$commonGet$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 709
    .local v1, "$i$f$commonGet":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    move-wide v4, p1

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 710
    move-object v2, v0

    .local v2, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v3, 0x0

    .line 711
    .local v3, "$i$f$seek":I
    iget-object v4, v2, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .local v4, "s$iv":Lokio/Segment;
    const-wide/16 v5, -0x1

    .local v5, "offset$iv":J
    const/4 v7, 0x0

    .line 712
    .local v7, "$i$a$-seek--Buffer$commonGet$1$iv":I
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, v4, Lokio/Segment;->data:[B

    iget v9, v4, Lokio/Segment;->pos:I

    int-to-long v9, v9

    add-long/2addr v9, p1

    sub-long/2addr v9, v5

    long-to-int v10, v9

    aget-byte v8, v8, v10

    goto :goto_3

    .end local v4    # "s$iv":Lokio/Segment;
    .end local v5    # "offset$iv":J
    .end local v7    # "$i$a$-seek--Buffer$commonGet$1$iv":I
    :cond_0
    nop

    .line 713
    .local v4, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, p1

    cmp-long v7, v5, p1

    if-gez v7, :cond_2

    .line 715
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 716
    .local v5, "offset$iv$iv":J
    :goto_0
    cmp-long v7, v5, p1

    if-lez v7, :cond_1

    .line 717
    iget-object v7, v4, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v7

    .line 718
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_0

    .line 720
    :cond_1
    move-object v7, v4

    .local v7, "s$iv":Lokio/Segment;
    move-wide v8, v5

    .local v8, "offset$iv":J
    const/4 v10, 0x0

    .line 712
    .local v10, "$i$a$-seek--Buffer$commonGet$1$iv":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v7, Lokio/Segment;->data:[B

    iget v12, v7, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v13, v12

    aget-byte v11, v11, v13

    goto :goto_2

    .line 723
    .end local v5    # "offset$iv$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek--Buffer$commonGet$1$iv":I
    :cond_2
    const-wide/16 v5, 0x0

    .line 724
    .restart local v5    # "offset$iv$iv":J
    :goto_1
    nop

    .line 725
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v5

    .line 726
    .local v7, "nextOffset$iv$iv":J
    cmp-long v9, v7, p1

    if-gtz v9, :cond_3

    .line 727
    iget-object v9, v4, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v4, v9

    .line 728
    move-wide v5, v7

    .end local v7    # "nextOffset$iv$iv":J
    goto :goto_1

    .line 730
    :cond_3
    move-object v7, v4

    .local v7, "s$iv":Lokio/Segment;
    move-wide v8, v5

    .restart local v8    # "offset$iv":J
    const/4 v10, 0x0

    .line 712
    .restart local v10    # "$i$a$-seek--Buffer$commonGet$1$iv":I
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v11, v7, Lokio/Segment;->data:[B

    iget v12, v7, Lokio/Segment;->pos:I

    int-to-long v12, v12

    add-long/2addr v12, p1

    sub-long/2addr v12, v8

    long-to-int v13, v12

    aget-byte v11, v11, v13

    :goto_2
    move v8, v11

    .line 258
    .end local v0    # "$this$commonGet$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonGet":I
    .end local v2    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v3    # "$i$f$seek":I
    .end local v4    # "s$iv$iv":Lokio/Segment;
    .end local v5    # "offset$iv$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "offset$iv":J
    .end local v10    # "$i$a$-seek--Buffer$commonGet$1$iv":I
    :goto_3
    return v8
.end method

.method public hashCode()I
    .locals 8

    .line 573
    move-object v0, p0

    .local v0, "$this$commonHashCode$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1716
    .local v1, "$i$f$commonHashCode":I
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 1717
    .local v2, "s$iv":Lokio/Segment;
    :cond_0
    const/4 v3, 0x1

    .line 1719
    .local v3, "result$iv":I
    :cond_1
    iget v4, v2, Lokio/Segment;->pos:I

    .line 1720
    .local v4, "pos$iv":I
    iget v5, v2, Lokio/Segment;->limit:I

    .line 1721
    .local v5, "limit$iv":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1722
    mul-int/lit8 v6, v3, 0x1f

    iget-object v7, v2, Lokio/Segment;->data:[B

    aget-byte v7, v7, v4

    add-int v3, v6, v7

    .line 1723
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1725
    :cond_2
    iget-object v6, v2, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v6

    .line 1726
    .end local v4    # "pos$iv":I
    .end local v5    # "limit$iv":I
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v2, v4, :cond_1

    .line 1727
    move v2, v3

    .line 573
    .end local v0    # "$this$commonHashCode$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonHashCode":I
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "result$iv":I
    :goto_1
    return v2
.end method

.method public final hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final hmacSha512(Lokio/ByteString;)Lokio/ByteString;
    .locals 1
    .param p1, "key"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(B)J
    .locals 6
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 471
    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    .end local p1    # "b":B
    .local v1, "b":B
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public indexOf(BJ)J
    .locals 6
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "fromIndex"
        }
    .end annotation

    .line 477
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .end local p1    # "b":B
    .end local p2    # "fromIndex":J
    .local v1, "b":B
    .local v2, "fromIndex":J
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public indexOf(BJJ)J
    .locals 29
    .param p1, "b"    # B
    .param p2, "fromIndex"    # J
    .param p4, "toIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 480
    move/from16 v0, p1

    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1496
    .local v2, "$i$f$commonIndexOf":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1497
    const-wide/16 v5, 0x0

    .local v5, "toIndex$iv":J
    move-wide/from16 v5, p4

    .line 1498
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v7, v3

    if-gtz v10, :cond_0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-eqz v9, :cond_f

    .line 1500
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v5

    .line 1501
    :cond_1
    cmp-long v9, v3, v5

    if-nez v9, :cond_2

    const-wide/16 v7, -0x1

    goto/16 :goto_6

    .line 1503
    :cond_2
    move-wide v9, v3

    .local v9, "fromIndex$iv$iv":J
    move-object v11, v1

    .local v11, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v12, 0x0

    .line 1504
    .local v12, "$i$f$seek":I
    iget-object v13, v11, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v13, :cond_3

    const/4 v13, 0x0

    .local v13, "s$iv":Lokio/Segment;
    const-wide/16 v14, -0x1

    .local v14, "offset$iv":J
    const/16 v16, 0x0

    .line 1505
    .local v16, "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    const-wide/16 v7, -0x1

    goto/16 :goto_6

    .end local v13    # "s$iv":Lokio/Segment;
    .end local v14    # "offset$iv":J
    .end local v16    # "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    :cond_3
    nop

    .line 1527
    .local v13, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v9

    cmp-long v16, v14, v9

    if-gez v16, :cond_9

    .line 1529
    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1530
    .local v14, "offset$iv$iv":J
    :goto_0
    cmp-long v16, v14, v9

    if-lez v16, :cond_4

    .line 1531
    iget-object v7, v13, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v7

    .line 1532
    iget v7, v13, Lokio/Segment;->limit:I

    iget v8, v13, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v14, v7

    goto :goto_0

    .line 1534
    :cond_4
    move-object v7, v13

    .local v7, "s$iv":Lokio/Segment;
    move-wide/from16 v17, v14

    .local v17, "offset$iv":J
    const/4 v8, 0x0

    .line 1505
    .local v8, "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    if-nez v7, :cond_5

    const-wide/16 v7, -0x1

    goto/16 :goto_6

    :cond_5
    move-object/from16 v19, v7

    .line 1506
    .local v19, "s$iv":Lokio/Segment;
    move-wide/from16 v20, v17

    move-object/from16 v28, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v28

    .line 1509
    .local v1, "s$iv":Lokio/Segment;
    .local v19, "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v20, "offset$iv":J
    :goto_1
    cmp-long v22, v20, v5

    if-gez v22, :cond_8

    .line 1510
    move/from16 v22, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .local v22, "$i$f$commonIndexOf":I
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1511
    .local v2, "data$iv":[B
    move-object/from16 v23, v2

    .end local v2    # "data$iv":[B
    .local v23, "data$iv":[B
    iget v2, v1, Lokio/Segment;->limit:I

    move-wide/from16 v24, v3

    .end local v3    # "fromIndex$iv":J
    .local v24, "fromIndex$iv":J
    int-to-long v2, v2

    iget v4, v1, Lokio/Segment;->pos:I

    move-wide/from16 v26, v5

    .end local v5    # "toIndex$iv":J
    .local v26, "toIndex$iv":J
    int-to-long v4, v4

    add-long v4, v4, v26

    sub-long v4, v4, v20

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 1512
    .local v3, "limit$iv":I
    iget v2, v1, Lokio/Segment;->pos:I

    int-to-long v4, v2

    add-long v4, v4, v24

    sub-long v4, v4, v20

    long-to-int v2, v4

    .line 1513
    .local v2, "pos$iv":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 1514
    aget-byte v4, v23, v2

    if-ne v4, v0, :cond_6

    .line 1515
    iget v4, v1, Lokio/Segment;->pos:I

    sub-int v4, v2, v4

    int-to-long v4, v4

    add-long v4, v4, v20

    move-wide v7, v4

    goto/16 :goto_6

    .line 1517
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1521
    :cond_7
    iget v4, v1, Lokio/Segment;->limit:I

    iget v5, v1, Lokio/Segment;->pos:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    add-long v20, v20, v4

    .line 1522
    move-wide/from16 v4, v20

    .line 1523
    .end local v24    # "fromIndex$iv":J
    .local v4, "fromIndex$iv":J
    iget-object v6, v1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v6

    move-wide v3, v4

    move/from16 v2, v22

    move-wide/from16 v5, v26

    .end local v2    # "pos$iv":I
    .end local v3    # "limit$iv":I
    .end local v23    # "data$iv":[B
    goto :goto_1

    .line 1526
    .end local v4    # "fromIndex$iv":J
    .end local v22    # "$i$f$commonIndexOf":I
    .end local v26    # "toIndex$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .local v3, "fromIndex$iv":J
    .restart local v5    # "toIndex$iv":J
    :cond_8
    move/from16 v22, v2

    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "toIndex$iv":J
    .restart local v22    # "$i$f$commonIndexOf":I
    .restart local v24    # "fromIndex$iv":J
    .restart local v26    # "toIndex$iv":J
    const-wide/16 v7, -0x1

    goto/16 :goto_6

    .line 1537
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    .end local v14    # "offset$iv$iv":J
    .end local v17    # "offset$iv":J
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "offset$iv":J
    .end local v22    # "$i$f$commonIndexOf":I
    .end local v24    # "fromIndex$iv":J
    .end local v26    # "toIndex$iv":J
    .local v1, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v2    # "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "toIndex$iv":J
    :cond_9
    move-object/from16 v19, v1

    move/from16 v22, v2

    move-wide/from16 v26, v5

    .end local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "toIndex$iv":J
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v22    # "$i$f$commonIndexOf":I
    .restart local v26    # "toIndex$iv":J
    const-wide/16 v1, 0x0

    .line 1538
    .local v1, "offset$iv$iv":J
    :goto_3
    nop

    .line 1539
    iget v5, v13, Lokio/Segment;->limit:I

    iget v6, v13, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v1

    .line 1540
    .local v5, "nextOffset$iv$iv":J
    cmp-long v7, v5, v9

    if-gtz v7, :cond_a

    .line 1541
    iget-object v7, v13, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v13, v7

    .line 1542
    move-wide v1, v5

    .end local v5    # "nextOffset$iv$iv":J
    goto :goto_3

    .line 1544
    :cond_a
    move-object v5, v13

    .local v5, "s$iv":Lokio/Segment;
    move-wide v6, v1

    .local v6, "offset$iv":J
    const/4 v8, 0x0

    .line 1505
    .restart local v8    # "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    if-nez v5, :cond_b

    const-wide/16 v7, -0x1

    goto :goto_6

    :cond_b
    move-object v14, v5

    .line 1506
    .local v14, "s$iv":Lokio/Segment;
    move-wide/from16 v17, v6

    .line 1509
    .restart local v17    # "offset$iv":J
    :goto_4
    cmp-long v15, v17, v26

    if-gez v15, :cond_e

    .line 1510
    iget-object v15, v14, Lokio/Segment;->data:[B

    .line 1511
    .local v15, "data$iv":[B
    move-wide/from16 v20, v1

    .end local v1    # "offset$iv$iv":J
    .local v20, "offset$iv$iv":J
    iget v1, v14, Lokio/Segment;->limit:I

    int-to-long v1, v1

    move-wide/from16 v23, v3

    .end local v3    # "fromIndex$iv":J
    .local v23, "fromIndex$iv":J
    iget v3, v14, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long v3, v3, v26

    sub-long v3, v3, v17

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 1512
    .local v2, "limit$iv":I
    iget v1, v14, Lokio/Segment;->pos:I

    int-to-long v3, v1

    add-long v3, v3, v23

    sub-long v3, v3, v17

    long-to-int v1, v3

    .line 1513
    .local v1, "pos$iv":I
    :goto_5
    if-ge v1, v2, :cond_d

    .line 1514
    aget-byte v3, v15, v1

    if-ne v3, v0, :cond_c

    .line 1515
    iget v3, v14, Lokio/Segment;->pos:I

    sub-int v3, v1, v3

    int-to-long v3, v3

    add-long v3, v3, v17

    move-wide v7, v3

    goto :goto_6

    .line 1517
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1521
    :cond_d
    iget v3, v14, Lokio/Segment;->limit:I

    iget v4, v14, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v17, v17, v3

    .line 1522
    move-wide/from16 v3, v17

    .line 1523
    .end local v23    # "fromIndex$iv":J
    .restart local v3    # "fromIndex$iv":J
    iget-object v0, v14, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v0

    move/from16 v0, p1

    move-wide/from16 v1, v20

    .end local v1    # "pos$iv":I
    .end local v2    # "limit$iv":I
    .end local v15    # "data$iv":[B
    goto :goto_4

    .line 1526
    .end local v20    # "offset$iv$iv":J
    .local v1, "offset$iv$iv":J
    :cond_e
    move-wide/from16 v20, v1

    move-wide/from16 v23, v3

    .end local v1    # "offset$iv$iv":J
    .end local v3    # "fromIndex$iv":J
    .restart local v20    # "offset$iv$iv":J
    .restart local v23    # "fromIndex$iv":J
    const-wide/16 v7, -0x1

    .line 480
    .end local v5    # "s$iv":Lokio/Segment;
    .end local v6    # "offset$iv":J
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOf$2$iv":I
    .end local v9    # "fromIndex$iv$iv":J
    .end local v11    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v12    # "$i$f$seek":I
    .end local v13    # "s$iv$iv":Lokio/Segment;
    .end local v14    # "s$iv":Lokio/Segment;
    .end local v17    # "offset$iv":J
    .end local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v20    # "offset$iv$iv":J
    .end local v22    # "$i$f$commonIndexOf":I
    .end local v23    # "fromIndex$iv":J
    .end local v26    # "toIndex$iv":J
    :goto_6
    return-wide v7

    .line 1499
    .local v1, "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    .local v5, "toIndex$iv":J
    :cond_f
    move-object/from16 v19, v1

    move/from16 v22, v2

    .end local v1    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v19    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v22    # "$i$f$commonIndexOf":I
    const/4 v0, 0x0

    .line 1498
    .local v0, "$i$a$-require--Buffer$commonIndexOf$1$iv":I
    invoke-virtual/range {v19 .. v19}, Lokio/Buffer;->size()J

    move-result-wide v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fromIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require--Buffer$commonIndexOf$1$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public indexOf(Lokio/ByteString;)J
    .locals 2
    .param p1, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .locals 34
    .param p1, "bytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "fromIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "bytes"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    move-object/from16 v0, p0

    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1545
    .local v2, "$i$f$commonIndexOf":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1546
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_10

    .line 1548
    const-wide/16 v8, 0x0

    cmp-long v5, v3, v8

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_f

    .line 1550
    move-wide v8, v3

    .local v8, "fromIndex$iv$iv":J
    move-object v5, v0

    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1551
    .local v10, "$i$f$seek":I
    iget-object v11, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_2

    const/4 v6, 0x0

    .local v6, "s$iv":Lokio/Segment;
    const-wide/16 v14, -0x1

    .local v14, "offset$iv":J
    const/4 v7, 0x0

    .line 1552
    .local v7, "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    const-wide/16 v12, -0x1

    goto/16 :goto_8

    .end local v6    # "s$iv":Lokio/Segment;
    .end local v7    # "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    .end local v14    # "offset$iv":J
    :cond_2
    nop

    .line 1579
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x1

    cmp-long v18, v14, v8

    if-gez v18, :cond_8

    .line 1581
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v14

    .line 1582
    .local v14, "offset$iv$iv":J
    :goto_2
    cmp-long v18, v14, v8

    if-lez v18, :cond_3

    .line 1583
    const/16 v18, 0x0

    iget-object v6, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v6

    .line 1584
    iget v6, v11, Lokio/Segment;->limit:I

    iget v12, v11, Lokio/Segment;->pos:I

    sub-int/2addr v6, v12

    int-to-long v12, v6

    sub-long/2addr v14, v12

    goto :goto_2

    .line 1586
    :cond_3
    const/16 v18, 0x0

    move-object v6, v11

    .restart local v6    # "s$iv":Lokio/Segment;
    move-wide v12, v14

    .local v12, "offset$iv":J
    const/16 v19, 0x0

    .line 1552
    .local v19, "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    if-nez v6, :cond_4

    const-wide/16 v12, -0x1

    goto/16 :goto_8

    :cond_4
    move-object/from16 v20, v6

    .line 1553
    .local v20, "s$iv":Lokio/Segment;
    move-wide/from16 v21, v12

    .line 1557
    .local v21, "offset$iv":J
    invoke-virtual {v1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v7

    .line 1558
    .local v7, "targetByteArray$iv":[B
    move-object/from16 v23, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v23, "$this$commonIndexOf$iv":Lokio/Buffer;
    aget-byte v0, v7, v18

    .line 1559
    .local v0, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v1

    .line 1560
    .local v1, "bytesSize$iv":I
    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v24

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v6    # "s$iv":Lokio/Segment;
    .local v26, "$this$seek$iv$iv":Lokio/Buffer;
    .local v27, "s$iv":Lokio/Segment;
    int-to-long v5, v1

    sub-long v24, v24, v5

    add-long v24, v24, v16

    move-object/from16 v5, v20

    .line 1561
    .end local v20    # "s$iv":Lokio/Segment;
    .local v5, "s$iv":Lokio/Segment;
    .local v24, "resultLimit$iv":J
    :goto_3
    cmp-long v6, v21, v24

    if-gez v6, :cond_7

    .line 1563
    iget-object v6, v5, Lokio/Segment;->data:[B

    .line 1564
    .local v6, "data$iv":[B
    move/from16 v20, v2

    .end local v2    # "$i$f$commonIndexOf":I
    .local v20, "$i$f$commonIndexOf":I
    iget v2, v5, Lokio/Segment;->limit:I

    move-wide/from16 v16, v3

    .end local v3    # "fromIndex$iv":J
    .local v2, "a$iv$iv":I
    .local v16, "fromIndex$iv":J
    iget v3, v5, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long v3, v3, v24

    sub-long v3, v3, v21

    .local v3, "b$iv$iv":J
    const/16 v18, 0x0

    .line 1565
    .local v18, "$i$f$minOf":I
    move-wide/from16 v28, v8

    .end local v8    # "fromIndex$iv$iv":J
    .local v28, "fromIndex$iv$iv":J
    int-to-long v8, v2

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1564
    .end local v2    # "a$iv$iv":I
    .end local v3    # "b$iv$iv":J
    .end local v18    # "$i$f$minOf":I
    long-to-int v2, v8

    .line 1566
    .local v2, "segmentLimit$iv":I
    iget v3, v5, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long v3, v3, v16

    sub-long v3, v3, v21

    long-to-int v4, v3

    .local v4, "pos$iv":I
    :goto_4
    if-ge v4, v2, :cond_6

    .line 1567
    aget-byte v3, v6, v4

    if-ne v3, v0, :cond_5

    add-int/lit8 v3, v4, 0x1

    const/4 v8, 0x1

    invoke-static {v5, v3, v7, v8, v1}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1568
    iget v3, v5, Lokio/Segment;->pos:I

    sub-int v3, v4, v3

    int-to-long v8, v3

    add-long v8, v8, v21

    move-wide v12, v8

    goto/16 :goto_8

    .line 1566
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1573
    .end local v4    # "pos$iv":I
    :cond_6
    iget v3, v5, Lokio/Segment;->limit:I

    iget v4, v5, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long v21, v21, v3

    .line 1574
    move-wide/from16 v3, v21

    .line 1575
    .end local v16    # "fromIndex$iv":J
    .local v3, "fromIndex$iv":J
    iget-object v8, v5, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v8

    move/from16 v2, v20

    move-wide/from16 v8, v28

    .end local v2    # "segmentLimit$iv":I
    .end local v6    # "data$iv":[B
    goto :goto_3

    .line 1578
    .end local v20    # "$i$f$commonIndexOf":I
    .end local v28    # "fromIndex$iv$iv":J
    .local v2, "$i$f$commonIndexOf":I
    .restart local v8    # "fromIndex$iv$iv":J
    :cond_7
    move/from16 v20, v2

    move-wide/from16 v16, v3

    move-wide/from16 v28, v8

    .end local v2    # "$i$f$commonIndexOf":I
    .end local v3    # "fromIndex$iv":J
    .end local v8    # "fromIndex$iv$iv":J
    .restart local v16    # "fromIndex$iv":J
    .restart local v20    # "$i$f$commonIndexOf":I
    .restart local v28    # "fromIndex$iv$iv":J
    const-wide/16 v12, -0x1

    goto/16 :goto_8

    .line 1589
    .end local v1    # "bytesSize$iv":I
    .end local v7    # "targetByteArray$iv":[B
    .end local v12    # "offset$iv":J
    .end local v14    # "offset$iv$iv":J
    .end local v16    # "fromIndex$iv":J
    .end local v19    # "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    .end local v20    # "$i$f$commonIndexOf":I
    .end local v21    # "offset$iv":J
    .end local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v24    # "resultLimit$iv":J
    .end local v26    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v27    # "s$iv":Lokio/Segment;
    .end local v28    # "fromIndex$iv$iv":J
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v2    # "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    .local v5, "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v8    # "fromIndex$iv$iv":J
    :cond_8
    move-object/from16 v23, v0

    move/from16 v20, v2

    move-object/from16 v26, v5

    move-wide/from16 v28, v8

    const/16 v18, 0x0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .end local v5    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v8    # "fromIndex$iv$iv":J
    .restart local v20    # "$i$f$commonIndexOf":I
    .restart local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v26    # "$this$seek$iv$iv":Lokio/Buffer;
    .restart local v28    # "fromIndex$iv$iv":J
    const-wide/16 v0, 0x0

    .line 1590
    .local v0, "offset$iv$iv":J
    :goto_5
    nop

    .line 1591
    iget v2, v11, Lokio/Segment;->limit:I

    iget v5, v11, Lokio/Segment;->pos:I

    sub-int/2addr v2, v5

    int-to-long v5, v2

    add-long/2addr v5, v0

    .line 1592
    .local v5, "nextOffset$iv$iv":J
    cmp-long v2, v5, v28

    if-gtz v2, :cond_9

    .line 1593
    iget-object v2, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v2

    .line 1594
    move-wide v0, v5

    .end local v5    # "nextOffset$iv$iv":J
    goto :goto_5

    .line 1596
    :cond_9
    move-object v2, v11

    .local v2, "s$iv":Lokio/Segment;
    move-wide v5, v0

    .local v5, "offset$iv":J
    const/4 v7, 0x0

    .line 1552
    .local v7, "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    if-nez v2, :cond_a

    const-wide/16 v12, -0x1

    goto/16 :goto_8

    :cond_a
    move-object v8, v2

    .line 1553
    .local v8, "s$iv":Lokio/Segment;
    move-wide v12, v5

    .line 1557
    .restart local v12    # "offset$iv":J
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v9

    .line 1558
    .local v9, "targetByteArray$iv":[B
    aget-byte v14, v9, v18

    .line 1559
    .local v14, "b0$iv":B
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v15

    .line 1560
    .local v15, "bytesSize$iv":I
    invoke-virtual/range {v23 .. v23}, Lokio/Buffer;->size()J

    move-result-wide v21

    move-wide/from16 v24, v0

    .end local v0    # "offset$iv$iv":J
    .local v24, "offset$iv$iv":J
    int-to-long v0, v15

    sub-long v21, v21, v0

    add-long v21, v21, v16

    .line 1561
    .local v21, "resultLimit$iv":J
    :goto_6
    cmp-long v0, v12, v21

    if-gez v0, :cond_e

    .line 1563
    iget-object v0, v8, Lokio/Segment;->data:[B

    .line 1564
    .local v0, "data$iv":[B
    iget v1, v8, Lokio/Segment;->limit:I

    move-object/from16 v16, v0

    .end local v0    # "data$iv":[B
    .local v1, "a$iv$iv":I
    .local v16, "data$iv":[B
    iget v0, v8, Lokio/Segment;->pos:I

    move-object/from16 v17, v2

    move-wide/from16 v30, v3

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .local v17, "s$iv":Lokio/Segment;
    .local v30, "fromIndex$iv":J
    int-to-long v2, v0

    add-long v2, v2, v21

    sub-long/2addr v2, v12

    .local v2, "b$iv$iv":J
    const/4 v0, 0x0

    .line 1565
    .local v0, "$i$f$minOf":I
    move-wide/from16 v32, v5

    .end local v5    # "offset$iv":J
    .local v32, "offset$iv":J
    int-to-long v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1564
    .end local v0    # "$i$f$minOf":I
    .end local v1    # "a$iv$iv":I
    .end local v2    # "b$iv$iv":J
    long-to-int v0, v4

    .line 1566
    .local v0, "segmentLimit$iv":I
    iget v1, v8, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long v1, v1, v30

    sub-long/2addr v1, v12

    long-to-int v2, v1

    .local v2, "pos$iv":I
    :goto_7
    if-ge v2, v0, :cond_d

    .line 1567
    aget-byte v1, v16, v2

    if-ne v1, v14, :cond_b

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    invoke-static {v8, v1, v9, v3, v15}, Lokio/internal/-Buffer;->rangeEquals(Lokio/Segment;I[BII)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1568
    iget v1, v8, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    int-to-long v3, v1

    add-long/2addr v3, v12

    move-wide v12, v3

    goto :goto_8

    .line 1567
    :cond_b
    const/4 v3, 0x1

    .line 1566
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    .line 1573
    .end local v2    # "pos$iv":I
    iget v1, v8, Lokio/Segment;->limit:I

    iget v2, v8, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v12, v1

    .line 1574
    move-wide v1, v12

    .line 1575
    .end local v30    # "fromIndex$iv":J
    .local v1, "fromIndex$iv":J
    iget-object v4, v8, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v8, v4

    move-wide v3, v1

    move-object/from16 v2, v17

    move-wide/from16 v5, v32

    .end local v0    # "segmentLimit$iv":I
    .end local v16    # "data$iv":[B
    goto :goto_6

    .line 1578
    .end local v1    # "fromIndex$iv":J
    .end local v17    # "s$iv":Lokio/Segment;
    .end local v32    # "offset$iv":J
    .local v2, "s$iv":Lokio/Segment;
    .restart local v3    # "fromIndex$iv":J
    .restart local v5    # "offset$iv":J
    :cond_e
    move-object/from16 v17, v2

    move-wide/from16 v30, v3

    move-wide/from16 v32, v5

    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "offset$iv":J
    .restart local v17    # "s$iv":Lokio/Segment;
    .restart local v30    # "fromIndex$iv":J
    .restart local v32    # "offset$iv":J
    const-wide/16 v12, -0x1

    .line 486
    .end local v7    # "$i$a$-seek--Buffer$commonIndexOf$5$iv":I
    .end local v8    # "s$iv":Lokio/Segment;
    .end local v9    # "targetByteArray$iv":[B
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v12    # "offset$iv":J
    .end local v14    # "b0$iv":B
    .end local v15    # "bytesSize$iv":I
    .end local v17    # "s$iv":Lokio/Segment;
    .end local v20    # "$i$f$commonIndexOf":I
    .end local v21    # "resultLimit$iv":J
    .end local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v24    # "offset$iv$iv":J
    .end local v26    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v28    # "fromIndex$iv$iv":J
    .end local v30    # "fromIndex$iv":J
    .end local v32    # "offset$iv":J
    :goto_8
    return-wide v12

    .line 1547
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOf":I
    .restart local v3    # "fromIndex$iv":J
    :cond_f
    move-object/from16 v23, v0

    move/from16 v20, v2

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOf":I
    .restart local v20    # "$i$f$commonIndexOf":I
    .restart local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1548
    .local v0, "$i$a$-require--Buffer$commonIndexOf$4$iv":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require--Buffer$commonIndexOf$4$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1547
    .end local v20    # "$i$f$commonIndexOf":I
    .end local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .local v0, "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v2    # "$i$f$commonIndexOf":I
    :cond_10
    move-object/from16 v23, v0

    .end local v0    # "$this$commonIndexOf$iv":Lokio/Buffer;
    .restart local v23    # "$this$commonIndexOf$iv":Lokio/Buffer;
    const/4 v0, 0x0

    .line 1546
    .local v0, "$i$a$-require--Buffer$commonIndexOf$3$iv":I
    nop

    .end local v0    # "$i$a$-require--Buffer$commonIndexOf$3$iv":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .locals 2
    .param p1, "targetBytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetBytes"
        }
    .end annotation

    const-string/jumbo v0, "targetBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .locals 29
    .param p1, "targetBytes"    # Lokio/ByteString;
    .param p2, "fromIndex"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "targetBytes",
            "fromIndex"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string/jumbo v1, "targetBytes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    move-object/from16 v1, p0

    .local v1, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    const/4 v2, 0x0

    .line 1597
    .local v2, "$i$f$commonIndexOfElement":I
    const-wide/16 v3, 0x0

    .local v3, "fromIndex$iv":J
    move-wide/from16 v3, p2

    .line 1598
    const-wide/16 v5, 0x0

    cmp-long v9, v3, v5

    if-ltz v9, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_19

    .line 1600
    move-wide v5, v3

    .local v5, "fromIndex$iv$iv":J
    move-object v9, v1

    .local v9, "$this$seek$iv$iv":Lokio/Buffer;
    const/4 v10, 0x0

    .line 1601
    .local v10, "$i$f$seek":I
    iget-object v11, v9, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v11, :cond_1

    const/4 v7, 0x0

    .local v7, "s$iv":Lokio/Segment;
    const-wide/16 v14, -0x1

    .local v14, "offset$iv":J
    const/4 v8, 0x0

    .line 1602
    .local v8, "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    .end local v14    # "offset$iv":J
    :cond_1
    nop

    .line 1652
    .local v11, "s$iv$iv":Lokio/Segment;
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v14

    sub-long/2addr v14, v5

    const/4 v12, 0x2

    cmp-long v13, v14, v5

    if-gez v13, :cond_d

    .line 1654
    invoke-virtual {v9}, Lokio/Buffer;->size()J

    move-result-wide v13

    .line 1655
    .local v13, "offset$iv$iv":J
    :goto_1
    cmp-long v15, v13, v5

    if-lez v15, :cond_2

    .line 1656
    iget-object v15, v11, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v15

    .line 1657
    iget v15, v11, Lokio/Segment;->limit:I

    iget v8, v11, Lokio/Segment;->pos:I

    sub-int/2addr v15, v8

    int-to-long v7, v15

    sub-long/2addr v13, v7

    goto :goto_1

    .line 1659
    :cond_2
    move-object v7, v11

    .restart local v7    # "s$iv":Lokio/Segment;
    move-wide/from16 v18, v13

    .local v18, "offset$iv":J
    const/4 v8, 0x0

    .line 1602
    .restart local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    if-nez v7, :cond_3

    const-wide/16 v12, -0x1

    goto/16 :goto_11

    :cond_3
    move-object v15, v7

    .line 1603
    .local v15, "s$iv":Lokio/Segment;
    move-wide/from16 v20, v18

    .line 1608
    .local v20, "offset$iv":J
    move-object/from16 v22, v1

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v22, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v1, v12, :cond_8

    .line 1610
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v1

    .line 1611
    .local v1, "b0$iv":B
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lokio/ByteString;->getByte(I)B

    move-result v12

    .line 1612
    .local v12, "b1$iv":B
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v16

    cmp-long v23, v20, v16

    if-gez v23, :cond_7

    .line 1613
    move/from16 v23, v2

    .end local v2    # "$i$f$commonIndexOfElement":I
    .local v23, "$i$f$commonIndexOfElement":I
    iget-object v2, v15, Lokio/Segment;->data:[B

    .line 1614
    .local v2, "data$iv":[B
    move-object/from16 v16, v2

    .end local v2    # "data$iv":[B
    .local v16, "data$iv":[B
    iget v2, v15, Lokio/Segment;->pos:I

    move-wide/from16 v24, v3

    .end local v3    # "fromIndex$iv":J
    .local v24, "fromIndex$iv":J
    int-to-long v2, v2

    add-long v2, v2, v24

    sub-long v2, v2, v20

    long-to-int v3, v2

    .line 1615
    .local v3, "pos$iv":I
    iget v2, v15, Lokio/Segment;->limit:I

    .line 1616
    .local v2, "limit$iv":I
    :goto_3
    if-ge v3, v2, :cond_6

    .line 1617
    aget-byte v4, v16, v3

    .line 1618
    .local v4, "b$iv":I
    if-eq v4, v1, :cond_5

    if-ne v4, v12, :cond_4

    goto :goto_4

    .line 1621
    :cond_4
    nop

    .end local v4    # "b$iv":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1619
    .restart local v4    # "b$iv":I
    :cond_5
    :goto_4
    move/from16 v17, v1

    .end local v1    # "b0$iv":B
    .local v17, "b0$iv":B
    iget v1, v15, Lokio/Segment;->pos:I

    sub-int v1, v3, v1

    move/from16 v26, v2

    .end local v2    # "limit$iv":I
    .local v26, "limit$iv":I
    int-to-long v1, v1

    add-long v1, v1, v20

    move-wide v12, v1

    goto/16 :goto_11

    .line 1625
    .end local v4    # "b$iv":I
    .end local v17    # "b0$iv":B
    .end local v26    # "limit$iv":I
    .restart local v1    # "b0$iv":B
    .restart local v2    # "limit$iv":I
    :cond_6
    move/from16 v17, v1

    move/from16 v26, v2

    .end local v1    # "b0$iv":B
    .end local v2    # "limit$iv":I
    .restart local v17    # "b0$iv":B
    .restart local v26    # "limit$iv":I
    iget v1, v15, Lokio/Segment;->limit:I

    iget v2, v15, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1626
    move-wide/from16 v1, v20

    .line 1627
    .end local v24    # "fromIndex$iv":J
    .local v1, "fromIndex$iv":J
    iget-object v4, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v4

    move-wide v3, v1

    move/from16 v1, v17

    move/from16 v2, v23

    .end local v3    # "pos$iv":I
    .end local v16    # "data$iv":[B
    .end local v26    # "limit$iv":I
    goto :goto_2

    .line 1612
    .end local v17    # "b0$iv":B
    .end local v23    # "$i$f$commonIndexOfElement":I
    .local v1, "b0$iv":B
    .local v2, "$i$f$commonIndexOfElement":I
    .local v3, "fromIndex$iv":J
    :cond_7
    move/from16 v17, v1

    move/from16 v23, v2

    move-wide/from16 v24, v3

    .end local v1    # "b0$iv":B
    .end local v2    # "$i$f$commonIndexOfElement":I
    .end local v3    # "fromIndex$iv":J
    .restart local v17    # "b0$iv":B
    .restart local v23    # "$i$f$commonIndexOfElement":I
    .restart local v24    # "fromIndex$iv":J
    goto/16 :goto_8

    .line 1631
    .end local v12    # "b1$iv":B
    .end local v17    # "b0$iv":B
    .end local v23    # "$i$f$commonIndexOfElement":I
    .end local v24    # "fromIndex$iv":J
    .restart local v2    # "$i$f$commonIndexOfElement":I
    .restart local v3    # "fromIndex$iv":J
    :cond_8
    move/from16 v23, v2

    .end local v2    # "$i$f$commonIndexOfElement":I
    .restart local v23    # "$i$f$commonIndexOfElement":I
    invoke-virtual {v0}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    .line 1632
    .local v1, "targetByteArray$iv":[B
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v24

    cmp-long v2, v20, v24

    if-gez v2, :cond_c

    .line 1633
    iget-object v2, v15, Lokio/Segment;->data:[B

    .line 1634
    .local v2, "data$iv":[B
    iget v12, v15, Lokio/Segment;->pos:I

    move-wide/from16 v24, v3

    move-object v4, v2

    .end local v2    # "data$iv":[B
    .end local v3    # "fromIndex$iv":J
    .local v4, "data$iv":[B
    .restart local v24    # "fromIndex$iv":J
    int-to-long v2, v12

    add-long v2, v2, v24

    sub-long v2, v2, v20

    long-to-int v3, v2

    .line 1635
    .local v3, "pos$iv":I
    iget v2, v15, Lokio/Segment;->limit:I

    .line 1636
    .local v2, "limit$iv":I
    :goto_6
    if-ge v3, v2, :cond_b

    .line 1637
    aget-byte v12, v4, v3

    .line 1638
    .local v12, "b$iv":I
    move/from16 v16, v2

    .end local v2    # "limit$iv":I
    .local v16, "limit$iv":I
    array-length v2, v1

    move-object/from16 v26, v1

    const/4 v1, 0x0

    .end local v1    # "targetByteArray$iv":[B
    .local v26, "targetByteArray$iv":[B
    :goto_7
    if-ge v1, v2, :cond_a

    move/from16 v27, v1

    aget-byte v1, v26, v27

    .line 1639
    .local v1, "t$iv":B
    if-ne v12, v1, :cond_9

    iget v2, v15, Lokio/Segment;->pos:I

    sub-int v2, v3, v2

    move/from16 v28, v1

    .end local v1    # "t$iv":B
    .local v28, "t$iv":B
    int-to-long v1, v2

    add-long v1, v1, v20

    move-wide v12, v1

    goto/16 :goto_11

    .end local v28    # "t$iv":B
    .restart local v1    # "t$iv":B
    :cond_9
    move/from16 v28, v1

    .line 1638
    .end local v1    # "t$iv":B
    add-int/lit8 v1, v27, 0x1

    goto :goto_7

    .line 1641
    :cond_a
    nop

    .end local v12    # "b$iv":I
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    move-object/from16 v1, v26

    goto :goto_6

    .line 1645
    .end local v16    # "limit$iv":I
    .end local v26    # "targetByteArray$iv":[B
    .local v1, "targetByteArray$iv":[B
    .restart local v2    # "limit$iv":I
    :cond_b
    move-object/from16 v26, v1

    move/from16 v16, v2

    .end local v1    # "targetByteArray$iv":[B
    .end local v2    # "limit$iv":I
    .restart local v16    # "limit$iv":I
    .restart local v26    # "targetByteArray$iv":[B
    iget v1, v15, Lokio/Segment;->limit:I

    iget v2, v15, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1646
    move-wide/from16 v1, v20

    .line 1647
    .end local v24    # "fromIndex$iv":J
    .local v1, "fromIndex$iv":J
    iget-object v12, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v12

    move-wide v3, v1

    move-object/from16 v1, v26

    .end local v3    # "pos$iv":I
    .end local v4    # "data$iv":[B
    .end local v16    # "limit$iv":I
    goto :goto_5

    .line 1632
    .end local v26    # "targetByteArray$iv":[B
    .local v1, "targetByteArray$iv":[B
    .local v3, "fromIndex$iv":J
    :cond_c
    move-object/from16 v26, v1

    move-wide/from16 v24, v3

    .line 1651
    .end local v1    # "targetByteArray$iv":[B
    :goto_8
    const-wide/16 v12, -0x1

    goto/16 :goto_11

    .line 1662
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    .end local v13    # "offset$iv$iv":J
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v18    # "offset$iv":J
    .end local v20    # "offset$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    .local v1, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOfElement":I
    :cond_d
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    const-wide/16 v1, 0x0

    .line 1663
    .local v1, "offset$iv$iv":J
    :goto_9
    nop

    .line 1664
    iget v7, v11, Lokio/Segment;->limit:I

    iget v8, v11, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v7, v1

    .line 1665
    .local v7, "nextOffset$iv$iv":J
    cmp-long v13, v7, v5

    if-gtz v13, :cond_e

    .line 1666
    iget-object v13, v11, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v13

    .line 1667
    move-wide v1, v7

    .end local v7    # "nextOffset$iv$iv":J
    goto :goto_9

    .line 1669
    :cond_e
    move-object v7, v11

    .local v7, "s$iv":Lokio/Segment;
    move-wide v13, v1

    .local v13, "offset$iv":J
    const/4 v8, 0x0

    .line 1602
    .restart local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    if-nez v7, :cond_f

    const-wide/16 v12, -0x1

    goto/16 :goto_11

    :cond_f
    move-object v15, v7

    .line 1603
    .restart local v15    # "s$iv":Lokio/Segment;
    move-wide/from16 v18, v13

    .line 1608
    .restart local v18    # "offset$iv":J
    move-wide/from16 v20, v1

    .end local v1    # "offset$iv$iv":J
    .local v20, "offset$iv$iv":J
    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v1, v12, :cond_14

    .line 1610
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokio/ByteString;->getByte(I)B

    move-result v1

    .line 1611
    .local v1, "b0$iv":B
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Lokio/ByteString;->getByte(I)B

    move-result v2

    .line 1612
    .local v2, "b1$iv":B
    :goto_a
    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v16

    cmp-long v12, v18, v16

    if-gez v12, :cond_13

    .line 1613
    iget-object v12, v15, Lokio/Segment;->data:[B

    .line 1614
    .local v12, "data$iv":[B
    iget v0, v15, Lokio/Segment;->pos:I

    move-wide/from16 v16, v3

    .end local v3    # "fromIndex$iv":J
    .local v16, "fromIndex$iv":J
    int-to-long v3, v0

    add-long v3, v3, v16

    sub-long v3, v3, v18

    long-to-int v0, v3

    .line 1615
    .local v0, "pos$iv":I
    iget v3, v15, Lokio/Segment;->limit:I

    .line 1616
    .local v3, "limit$iv":I
    :goto_b
    if-ge v0, v3, :cond_12

    .line 1617
    aget-byte v4, v12, v0

    .line 1618
    .local v4, "b$iv":I
    if-eq v4, v1, :cond_11

    if-ne v4, v2, :cond_10

    goto :goto_c

    .line 1621
    :cond_10
    nop

    .end local v4    # "b$iv":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1619
    .restart local v4    # "b$iv":I
    :cond_11
    :goto_c
    move/from16 v24, v0

    .end local v0    # "pos$iv":I
    .local v24, "pos$iv":I
    iget v0, v15, Lokio/Segment;->pos:I

    sub-int v0, v24, v0

    move/from16 v25, v1

    .end local v1    # "b0$iv":B
    .local v25, "b0$iv":B
    int-to-long v0, v0

    add-long v0, v0, v18

    move-wide v12, v0

    goto/16 :goto_11

    .line 1625
    .end local v4    # "b$iv":I
    .end local v24    # "pos$iv":I
    .end local v25    # "b0$iv":B
    .restart local v0    # "pos$iv":I
    .restart local v1    # "b0$iv":B
    :cond_12
    move/from16 v24, v0

    move/from16 v25, v1

    .end local v0    # "pos$iv":I
    .end local v1    # "b0$iv":B
    .restart local v24    # "pos$iv":I
    .restart local v25    # "b0$iv":B
    iget v0, v15, Lokio/Segment;->limit:I

    iget v1, v15, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v18, v18, v0

    .line 1626
    move-wide/from16 v0, v18

    .line 1627
    .end local v16    # "fromIndex$iv":J
    .local v0, "fromIndex$iv":J
    iget-object v4, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v4

    move-wide v3, v0

    move/from16 v1, v25

    move-object/from16 v0, p1

    .end local v3    # "limit$iv":I
    .end local v12    # "data$iv":[B
    .end local v24    # "pos$iv":I
    goto :goto_a

    .line 1612
    .end local v0    # "fromIndex$iv":J
    .end local v25    # "b0$iv":B
    .restart local v1    # "b0$iv":B
    .local v3, "fromIndex$iv":J
    :cond_13
    move/from16 v25, v1

    move-wide/from16 v16, v3

    .end local v1    # "b0$iv":B
    .end local v3    # "fromIndex$iv":J
    .restart local v16    # "fromIndex$iv":J
    .restart local v25    # "b0$iv":B
    goto :goto_10

    .line 1631
    .end local v2    # "b1$iv":B
    .end local v16    # "fromIndex$iv":J
    .end local v25    # "b0$iv":B
    .restart local v3    # "fromIndex$iv":J
    :cond_14
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v0

    .line 1632
    .local v0, "targetByteArray$iv":[B
    :goto_d
    invoke-virtual/range {v22 .. v22}, Lokio/Buffer;->size()J

    move-result-wide v16

    cmp-long v2, v18, v16

    if-gez v2, :cond_18

    .line 1633
    iget-object v2, v15, Lokio/Segment;->data:[B

    .line 1634
    .local v2, "data$iv":[B
    iget v12, v15, Lokio/Segment;->pos:I

    move-object/from16 v16, v2

    .end local v2    # "data$iv":[B
    .local v16, "data$iv":[B
    int-to-long v1, v12

    add-long/2addr v1, v3

    sub-long v1, v1, v18

    long-to-int v2, v1

    .line 1635
    .local v2, "pos$iv":I
    iget v1, v15, Lokio/Segment;->limit:I

    .line 1636
    .local v1, "limit$iv":I
    :goto_e
    if-ge v2, v1, :cond_17

    .line 1637
    aget-byte v12, v16, v2

    .line 1638
    .local v12, "b$iv":I
    move/from16 v24, v1

    .end local v1    # "limit$iv":I
    .local v24, "limit$iv":I
    array-length v1, v0

    move-object/from16 v25, v0

    const/4 v0, 0x0

    .end local v0    # "targetByteArray$iv":[B
    .local v25, "targetByteArray$iv":[B
    :goto_f
    if-ge v0, v1, :cond_16

    move/from16 v26, v0

    aget-byte v0, v25, v26

    .line 1639
    .local v0, "t$iv":B
    if-ne v12, v0, :cond_15

    iget v1, v15, Lokio/Segment;->pos:I

    sub-int v1, v2, v1

    move/from16 v27, v0

    .end local v0    # "t$iv":B
    .local v27, "t$iv":B
    int-to-long v0, v1

    add-long v0, v0, v18

    move-wide v12, v0

    goto :goto_11

    .end local v27    # "t$iv":B
    .restart local v0    # "t$iv":B
    :cond_15
    move/from16 v27, v0

    .line 1638
    .end local v0    # "t$iv":B
    add-int/lit8 v0, v26, 0x1

    goto :goto_f

    .line 1641
    :cond_16
    nop

    .end local v12    # "b$iv":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v24

    move-object/from16 v0, v25

    goto :goto_e

    .line 1645
    .end local v24    # "limit$iv":I
    .end local v25    # "targetByteArray$iv":[B
    .local v0, "targetByteArray$iv":[B
    .restart local v1    # "limit$iv":I
    :cond_17
    move-object/from16 v25, v0

    move/from16 v24, v1

    .end local v0    # "targetByteArray$iv":[B
    .end local v1    # "limit$iv":I
    .restart local v24    # "limit$iv":I
    .restart local v25    # "targetByteArray$iv":[B
    iget v0, v15, Lokio/Segment;->limit:I

    iget v1, v15, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long v18, v18, v0

    .line 1646
    move-wide/from16 v3, v18

    .line 1647
    iget-object v0, v15, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v15, v0

    move-object/from16 v0, v25

    const/4 v1, 0x0

    .end local v2    # "pos$iv":I
    .end local v16    # "data$iv":[B
    .end local v24    # "limit$iv":I
    goto :goto_d

    .line 1632
    .end local v25    # "targetByteArray$iv":[B
    .restart local v0    # "targetByteArray$iv":[B
    :cond_18
    move-object/from16 v25, v0

    .line 1651
    .end local v0    # "targetByteArray$iv":[B
    :goto_10
    const-wide/16 v12, -0x1

    .line 491
    .end local v3    # "fromIndex$iv":J
    .end local v5    # "fromIndex$iv$iv":J
    .end local v7    # "s$iv":Lokio/Segment;
    .end local v8    # "$i$a$-seek--Buffer$commonIndexOfElement$2$iv":I
    .end local v9    # "$this$seek$iv$iv":Lokio/Buffer;
    .end local v10    # "$i$f$seek":I
    .end local v11    # "s$iv$iv":Lokio/Segment;
    .end local v13    # "offset$iv":J
    .end local v15    # "s$iv":Lokio/Segment;
    .end local v18    # "offset$iv":J
    .end local v20    # "offset$iv$iv":J
    .end local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v23    # "$i$f$commonIndexOfElement":I
    :goto_11
    return-wide v12

    .line 1599
    .local v1, "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .local v2, "$i$f$commonIndexOfElement":I
    .restart local v3    # "fromIndex$iv":J
    :cond_19
    move-object/from16 v22, v1

    move/from16 v23, v2

    .end local v1    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .end local v2    # "$i$f$commonIndexOfElement":I
    .restart local v22    # "$this$commonIndexOfElement$iv":Lokio/Buffer;
    .restart local v23    # "$i$f$commonIndexOfElement":I
    const/4 v0, 0x0

    .line 1598
    .local v0, "$i$a$-require--Buffer$commonIndexOfElement$1$iv":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require--Buffer$commonIndexOfElement$1$iv":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 1

    .line 123
    new-instance v0, Lokio/Buffer$inputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public final md5()Lokio/ByteString;
    .locals 1

    .line 516
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 1

    .line 88
    new-instance v0, Lokio/Buffer$outputStream$1;

    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    check-cast v0, Ljava/io/OutputStream;

    return-object v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 2

    .line 119
    new-instance v0, Lokio/PeekSource;

    move-object v1, p0

    check-cast v1, Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    check-cast v0, Lokio/Source;

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .locals 7
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "bytes"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    const/4 v5, 0x0

    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "offset":J
    .end local p3    # "bytes":Lokio/ByteString;
    .local v2, "offset":J
    .local v4, "bytes":Lokio/ByteString;
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .locals 8
    .param p1, "offset"    # J
    .param p3, "bytes"    # Lokio/ByteString;
    .param p4, "bytesOffset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "offset",
            "bytes",
            "bytesOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "bytes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    move-object v0, p0

    .local v0, "$this$commonRangeEquals$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1670
    .local v1, "$i$f$commonRangeEquals":I
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p1, v2

    if-ltz v5, :cond_3

    .line 1671
    if-ltz p4, :cond_3

    .line 1672
    if-ltz p5, :cond_3

    .line 1673
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    int-to-long v5, p5

    cmp-long v7, v2, v5

    if-ltz v7, :cond_3

    .line 1674
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v2, p4

    if-ge v2, p5, :cond_0

    goto :goto_1

    .line 1678
    :cond_0
    const/4 v2, 0x0

    .local v2, "i$iv":I
    :goto_0
    if-ge v2, p5, :cond_2

    .line 1679
    int-to-long v5, v2

    add-long/2addr v5, p1

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->getByte(J)B

    move-result v3

    add-int v5, p4, v2

    invoke-virtual {p3, v5}, Lokio/ByteString;->getByte(I)B

    move-result v5

    if-eq v3, v5, :cond_1

    .line 1680
    goto :goto_2

    .line 1678
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1683
    .end local v2    # "i$iv":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 1676
    :cond_3
    :goto_1
    nop

    .line 501
    .end local v0    # "$this$commonRangeEquals$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRangeEquals":I
    :goto_2
    return v4
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "sink"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 359
    .local v0, "s":Lokio/Segment;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->limit:I

    iget v3, v0, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 360
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 362
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 363
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 365
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_1

    .line 366
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 367
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 370
    :cond_1
    return v1
.end method

.method public read([B)I
    .locals 4
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1094
    .local v1, "$i$f$commonRead":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->read([BII)I

    move-result v0

    .line 347
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1, "sink"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sink",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1102
    .local v1, "$i$f$commonRead":I
    array-length v2, p1

    int-to-long v3, v2

    int-to-long v5, p2

    int-to-long v7, p3

    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1104
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 1105
    .local v2, "s$iv":Lokio/Segment;
    :cond_0
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1106
    .local v3, "toCopy$iv":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    .line 1107
    nop

    .line 1108
    nop

    .line 1109
    iget v5, v2, Lokio/Segment;->pos:I

    .line 1110
    iget v6, v2, Lokio/Segment;->pos:I

    add-int/2addr v6, v3

    .line 1106
    invoke-static {v4, p1, p2, v5, v6}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1113
    iget v4, v2, Lokio/Segment;->pos:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->pos:I

    .line 1114
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1116
    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_1

    .line 1117
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1118
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 1121
    :cond_1
    move v2, v3

    .line 353
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    .end local v2    # "s$iv":Lokio/Segment;
    .end local v3    # "toCopy$iv":I
    :goto_0
    return v2
.end method

.method public read(Lokio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "byteCount"
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    move-object v0, p0

    .local v0, "$this$commonRead$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1489
    .local v1, "$i$f$commonRead":I
    const-wide/16 v2, 0x0

    .local v2, "byteCount$iv":J
    move-wide v2, p2

    .line 1490
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    .line 1492
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    const-wide/16 v4, -0x1

    goto :goto_1

    .line 1493
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 1494
    :cond_2
    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 1495
    move-wide v4, v2

    .line 469
    .end local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonRead":I
    .end local v2    # "byteCount$iv":J
    :goto_1
    return-wide v4

    .line 1491
    .restart local v0    # "$this$commonRead$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonRead":I
    .restart local v2    # "byteCount$iv":J
    :cond_3
    const/4 v4, 0x0

    .line 1490
    .local v4, "$i$a$-require--Buffer$commonRead$1$iv":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4    # "$i$a$-require--Buffer$commonRead$1$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public readAll(Lokio/Sink;)J
    .locals 7
    .param p1, "sink"    # Lokio/Sink;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    move-object v0, p0

    .local v0, "$this$commonReadAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 985
    .local v1, "$i$f$commonReadAll":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 986
    .local v2, "byteCount$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 987
    invoke-interface {p1, v0, v2, v3}, Lokio/Sink;->write(Lokio/Buffer;J)V

    .line 989
    :cond_0
    nop

    .line 297
    .end local v0    # "$this$commonReadAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadAll":I
    .end local v2    # "byteCount$iv":J
    return-wide v2
.end method

.method public final readAndWriteUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readAndWriteUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    .line 598
    return-object v0
.end method

.method public final readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unsafeCursor"
        }
    .end annotation

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    invoke-static {p0, p1}, Lokio/internal/-Buffer;->commonReadAndWriteUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readByte()B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 255
    move-object v0, p0

    .local v0, "$this$commonReadByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 691
    .local v1, "$i$f$commonReadByte":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 693
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 694
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 695
    .local v3, "pos$iv":I
    iget v4, v2, Lokio/Segment;->limit:I

    .line 697
    .local v4, "limit$iv":I
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 698
    .local v5, "data$iv":[B
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v6, "pos$iv":I
    aget-byte v3, v5, v3

    .line 699
    .local v3, "b$iv":B
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 701
    if-ne v6, v4, :cond_0

    .line 702
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 703
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 705
    :cond_0
    iput v6, v2, Lokio/Segment;->pos:I

    .line 708
    :goto_0
    nop

    .line 255
    .end local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByte":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "b$iv":B
    .end local v4    # "limit$iv":I
    .end local v5    # "data$iv":[B
    .end local v6    # "pos$iv":I
    return v3

    .line 691
    .restart local v0    # "$this$commonReadByte$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByte":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readByteArray()[B
    .locals 4

    .line 342
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1086
    .local v1, "$i$f$commonReadByteArray":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    .line 342
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    return-object v0
.end method

.method public readByteArray(J)[B
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 345
    move-object v0, p0

    .local v0, "$this$commonReadByteArray$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1087
    .local v1, "$i$f$commonReadByteArray":I
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 1089
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    .line 1091
    long-to-int v2, p1

    new-array v2, v2, [B

    .line 1092
    .local v2, "result$iv":[B
    invoke-virtual {v0, v2}, Lokio/Buffer;->readFully([B)V

    .line 1093
    nop

    .line 345
    .end local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteArray":I
    .end local v2    # "result$iv":[B
    return-object v2

    .line 1089
    .restart local v0    # "$this$commonReadByteArray$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteArray":I
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 1088
    :cond_2
    const/4 v2, 0x0

    .line 1087
    .local v2, "$i$a$-require--Buffer$commonReadByteArray$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require--Buffer$commonReadByteArray$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readByteString()Lokio/ByteString;
    .locals 4

    .line 284
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 960
    .local v1, "$i$f$commonReadByteString":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 284
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .locals 5
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 287
    move-object v0, p0

    .local v0, "$this$commonReadByteString$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 961
    .local v1, "$i$f$commonReadByteString":I
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 963
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_2

    .line 965
    const-wide/16 v2, 0x1000

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    .line 966
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v2

    move-object v3, v2

    .line 962
    .local v3, "it$iv":Lokio/ByteString;
    const/4 v4, 0x0

    .line 966
    .local v4, "$i$a$-also--Buffer$commonReadByteString$2$iv":I
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->skip(J)V

    .end local v3    # "it$iv":Lokio/ByteString;
    .end local v4    # "$i$a$-also--Buffer$commonReadByteString$2$iv":I
    goto :goto_1

    .line 968
    :cond_1
    new-instance v2, Lokio/ByteString;

    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    .line 287
    .end local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadByteString":I
    :goto_1
    return-object v2

    .line 963
    .restart local v0    # "$this$commonReadByteString$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadByteString":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 962
    :cond_3
    const/4 v2, 0x0

    .line 961
    .local v2, "$i$a$-require--Buffer$commonReadByteString$1$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require--Buffer$commonReadByteString$1$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readDecimalLong()J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 279
    move-object/from16 v0, p0

    .local v0, "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 844
    .local v1, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_f

    .line 847
    const-wide/16 v2, 0x0

    .line 848
    .local v2, "value$iv":J
    const/4 v6, 0x0

    .line 849
    .local v6, "seen$iv":I
    const/4 v7, 0x0

    .line 850
    .local v7, "negative$iv":Z
    const/4 v8, 0x0

    .line 852
    .local v8, "done$iv":Z
    const-wide/16 v9, -0x7

    .line 855
    .local v9, "overflowDigit$iv":J
    :goto_0
    iget-object v11, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 857
    .local v11, "segment$iv":Lokio/Segment;
    iget-object v12, v11, Lokio/Segment;->data:[B

    .line 858
    .local v12, "data$iv":[B
    iget v13, v11, Lokio/Segment;->pos:I

    .line 859
    .local v13, "pos$iv":I
    iget v14, v11, Lokio/Segment;->limit:I

    .line 861
    .local v14, "limit$iv":I
    :goto_1
    if-ge v13, v14, :cond_6

    .line 862
    aget-byte v15, v12, v13

    .line 863
    .local v15, "b$iv":B
    move-wide/from16 v16, v4

    const/16 v4, 0x30

    if-lt v15, v4, :cond_4

    const/16 v4, 0x39

    if-gt v15, v4, :cond_4

    .line 864
    rsub-int/lit8 v4, v15, 0x30

    .line 867
    .local v4, "digit$iv":I
    const-wide v18, -0xcccccccccccccccL

    cmp-long v5, v2, v18

    if-ltz v5, :cond_2

    cmp-long v5, v2, v18

    if-nez v5, :cond_0

    move/from16 v18, v7

    move v5, v8

    .end local v7    # "negative$iv":Z
    .end local v8    # "done$iv":Z
    .local v5, "done$iv":Z
    .local v18, "negative$iv":Z
    int-to-long v7, v4

    cmp-long v19, v7, v9

    if-gez v19, :cond_1

    goto :goto_2

    .end local v5    # "done$iv":Z
    .end local v18    # "negative$iv":Z
    .restart local v7    # "negative$iv":Z
    .restart local v8    # "done$iv":Z
    :cond_0
    move/from16 v18, v7

    move v5, v8

    .line 872
    .end local v7    # "negative$iv":Z
    .end local v8    # "done$iv":Z
    .restart local v5    # "done$iv":Z
    .restart local v18    # "negative$iv":Z
    :cond_1
    const-wide/16 v7, 0xa

    mul-long v2, v2, v7

    .line 873
    int-to-long v7, v4

    add-long/2addr v2, v7

    move/from16 v19, v1

    move/from16 v21, v5

    move/from16 v7, v18

    .end local v4    # "digit$iv":I
    goto :goto_3

    .line 867
    .end local v5    # "done$iv":Z
    .end local v18    # "negative$iv":Z
    .restart local v4    # "digit$iv":I
    .restart local v7    # "negative$iv":Z
    .restart local v8    # "done$iv":Z
    :cond_2
    move/from16 v18, v7

    move v5, v8

    .line 868
    .end local v7    # "negative$iv":Z
    .end local v8    # "done$iv":Z
    .restart local v5    # "done$iv":Z
    .restart local v18    # "negative$iv":Z
    :goto_2
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    invoke-virtual {v7, v2, v3}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v7

    invoke-virtual {v7, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v7

    .line 869
    .local v7, "buffer$iv":Lokio/Buffer;
    if-nez v18, :cond_3

    invoke-virtual {v7}, Lokio/Buffer;->readByte()B

    .line 870
    :cond_3
    new-instance v8, Ljava/lang/NumberFormatException;

    move/from16 v19, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .local v19, "$i$f$commonReadDecimalLong":I
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v1

    move/from16 v20, v4

    .end local v4    # "digit$iv":I
    .local v20, "digit$iv":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    .end local v5    # "done$iv":Z
    .local v21, "done$iv":Z
    const-string v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 863
    .end local v18    # "negative$iv":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    .end local v20    # "digit$iv":I
    .end local v21    # "done$iv":Z
    .restart local v1    # "$i$f$commonReadDecimalLong":I
    .local v7, "negative$iv":Z
    .restart local v8    # "done$iv":Z
    :cond_4
    move/from16 v19, v1

    move/from16 v18, v7

    move/from16 v21, v8

    .line 874
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v7    # "negative$iv":Z
    .end local v8    # "done$iv":Z
    .restart local v18    # "negative$iv":Z
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    .restart local v21    # "done$iv":Z
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_5

    if-nez v6, :cond_5

    .line 875
    const/4 v7, 0x1

    .line 876
    .end local v18    # "negative$iv":Z
    .restart local v7    # "negative$iv":Z
    const-wide/16 v4, 0x1

    sub-long/2addr v9, v4

    .line 882
    :goto_3
    add-int/lit8 v13, v13, 0x1

    .line 883
    nop

    .end local v15    # "b$iv":B
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v4, v16

    move/from16 v1, v19

    move/from16 v8, v21

    goto/16 :goto_1

    .line 879
    .end local v7    # "negative$iv":Z
    .restart local v15    # "b$iv":B
    .restart local v18    # "negative$iv":Z
    :cond_5
    const/4 v1, 0x1

    .line 880
    .end local v21    # "done$iv":Z
    .local v1, "done$iv":Z
    move v8, v1

    goto :goto_4

    .line 861
    .end local v15    # "b$iv":B
    .end local v18    # "negative$iv":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    .local v1, "$i$f$commonReadDecimalLong":I
    .restart local v7    # "negative$iv":Z
    .restart local v8    # "done$iv":Z
    :cond_6
    move/from16 v19, v1

    move-wide/from16 v16, v4

    move/from16 v18, v7

    move/from16 v21, v8

    .line 886
    .end local v1    # "$i$f$commonReadDecimalLong":I
    .end local v7    # "negative$iv":Z
    .restart local v18    # "negative$iv":Z
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    :goto_4
    if-ne v13, v14, :cond_7

    .line 887
    invoke-virtual {v11}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 888
    invoke-static {v11}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    .line 890
    :cond_7
    iput v13, v11, Lokio/Segment;->pos:I

    .line 892
    .end local v11    # "segment$iv":Lokio/Segment;
    .end local v12    # "data$iv":[B
    .end local v13    # "pos$iv":I
    .end local v14    # "limit$iv":I
    :goto_5
    if-nez v8, :cond_9

    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v1, v19

    goto/16 :goto_0

    .line 894
    :cond_9
    :goto_6
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v11, v6

    sub-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 896
    if-eqz v18, :cond_a

    const/4 v1, 0x2

    goto :goto_7

    :cond_a
    const/4 v1, 0x1

    .line 897
    .local v1, "minimumSeen$iv":I
    :goto_7
    if-ge v6, v1, :cond_d

    .line 898
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v7, v4, v16

    if-eqz v7, :cond_c

    .line 899
    if-eqz v18, :cond_b

    const-string v4, "Expected a digit"

    goto :goto_8

    :cond_b
    const-string v4, "Expected a digit or \'-\'"

    .line 900
    .local v4, "expected$iv":Ljava/lang/String;
    :goto_8
    new-instance v5, Ljava/lang/NumberFormatException;

    move-wide/from16 v11, v16

    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v7

    invoke-static {v7}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but was 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 898
    .end local v4    # "expected$iv":Ljava/lang/String;
    :cond_c
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 903
    :cond_d
    if-eqz v18, :cond_e

    goto :goto_9

    :cond_e
    neg-long v4, v2

    move-wide v2, v4

    .line 279
    .end local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "minimumSeen$iv":I
    .end local v2    # "value$iv":J
    .end local v6    # "seen$iv":I
    .end local v8    # "done$iv":Z
    .end local v9    # "overflowDigit$iv":J
    .end local v18    # "negative$iv":Z
    .end local v19    # "$i$f$commonReadDecimalLong":I
    :goto_9
    return-wide v2

    .line 844
    .restart local v0    # "$this$commonReadDecimalLong$iv":Lokio/Buffer;
    .local v1, "$i$f$commonReadDecimalLong":I
    :cond_f
    move/from16 v19, v1

    .end local v1    # "$i$f$commonReadDecimalLong":I
    .restart local v19    # "$i$f$commonReadDecimalLong":I
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 219
    return-object p0
.end method

.method public final readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p2, v0

    if-ltz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 226
    invoke-direct {p0, p1, p2, p3, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    .line 227
    return-object p0

    .line 679
    :cond_1
    const/4 v0, 0x0

    .line 225
    .local v0, "$i$a$-require-Buffer$readFrom$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readFrom$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readFully(Lokio/Buffer;J)V
    .locals 5
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sink",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 979
    .local v1, "$i$f$commonReadFully":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, p2

    if-ltz v4, :cond_0

    .line 983
    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 984
    nop

    .line 294
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    return-void

    .line 980
    .restart local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadFully":I
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 981
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readFully([B)V
    .locals 5
    .param p1, "sink"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sink"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    move-object v0, p0

    .local v0, "$this$commonReadFully$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1095
    .local v1, "$i$f$commonReadFully":I
    const/4 v2, 0x0

    .line 1096
    .local v2, "offset$iv":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1097
    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->read([BII)I

    move-result v3

    .line 1098
    .local v3, "read$iv":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1099
    add-int/2addr v2, v3

    .end local v3    # "read$iv":I
    goto :goto_0

    .line 1098
    .restart local v3    # "read$iv":I
    :cond_0
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 1101
    .end local v3    # "read$iv":I
    :cond_1
    nop

    .line 350
    .end local v0    # "$this$commonReadFully$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadFully":I
    .end local v2    # "offset$iv":I
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 282
    move-object/from16 v0, p0

    .local v0, "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 904
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_9

    .line 906
    const-wide/16 v2, 0x0

    .line 907
    .local v2, "value$iv":J
    const/4 v6, 0x0

    .line 908
    .local v6, "seen$iv":I
    const/4 v7, 0x0

    .line 911
    .local v7, "done$iv":Z
    :goto_0
    iget-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 913
    .local v8, "segment$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 914
    .local v9, "data$iv":[B
    iget v10, v8, Lokio/Segment;->pos:I

    .line 915
    .local v10, "pos$iv":I
    iget v11, v8, Lokio/Segment;->limit:I

    .line 917
    .local v11, "limit$iv":I
    :goto_1
    if-ge v10, v11, :cond_5

    .line 918
    const/4 v12, 0x0

    .line 920
    .local v12, "digit$iv":I
    aget-byte v13, v9, v10

    .line 921
    .local v13, "b$iv":B
    const/16 v14, 0x30

    if-lt v13, v14, :cond_0

    const/16 v14, 0x39

    if-gt v13, v14, :cond_0

    .line 922
    add-int/lit8 v12, v13, -0x30

    goto :goto_2

    .line 923
    :cond_0
    const/16 v14, 0x61

    if-lt v13, v14, :cond_1

    const/16 v14, 0x66

    if-gt v13, v14, :cond_1

    .line 924
    add-int/lit8 v14, v13, -0x61

    add-int/lit8 v12, v14, 0xa

    goto :goto_2

    .line 925
    :cond_1
    const/16 v14, 0x41

    if-lt v13, v14, :cond_3

    const/16 v14, 0x46

    if-gt v13, v14, :cond_3

    .line 926
    add-int/lit8 v14, v13, -0x41

    add-int/lit8 v12, v14, 0xa

    .line 939
    :goto_2
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v2

    cmp-long v16, v14, v4

    if-nez v16, :cond_2

    .line 944
    const/4 v14, 0x4

    shl-long/2addr v2, v14

    .line 945
    int-to-long v14, v12

    or-long/2addr v2, v14

    .line 946
    add-int/lit8 v10, v10, 0x1

    .line 947
    nop

    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 940
    .restart local v12    # "digit$iv":I
    .restart local v13    # "b$iv":B
    :cond_2
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v4, v2, v3}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v4

    invoke-virtual {v4, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    .line 941
    .local v4, "buffer$iv":Lokio/Buffer;
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .local v16, "$i$f$commonReadHexadecimalUnsignedLong":I
    const-string v1, "Number too large: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 925
    .end local v4    # "buffer$iv":Lokio/Buffer;
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_3
    move/from16 v16, v1

    .line 928
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    if-eqz v6, :cond_4

    .line 934
    const/4 v1, 0x1

    .line 935
    .end local v7    # "done$iv":Z
    .local v1, "done$iv":Z
    move v7, v1

    goto :goto_3

    .line 929
    .end local v1    # "done$iv":Z
    .restart local v7    # "done$iv":Z
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 930
    invoke-static {v13}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 929
    invoke-direct {v1, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 917
    .end local v12    # "digit$iv":I
    .end local v13    # "b$iv":B
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .local v1, "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_5
    move/from16 v16, v1

    .line 950
    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :goto_3
    if-ne v10, v11, :cond_6

    .line 951
    invoke-virtual {v8}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 952
    invoke-static {v8}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_4

    .line 954
    :cond_6
    iput v10, v8, Lokio/Segment;->pos:I

    .line 956
    .end local v8    # "segment$iv":Lokio/Segment;
    .end local v9    # "data$iv":[B
    .end local v10    # "pos$iv":I
    .end local v11    # "limit$iv":I
    :goto_4
    if-nez v7, :cond_8

    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    move/from16 v1, v16

    goto/16 :goto_0

    .line 958
    :cond_8
    :goto_5
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v8, v6

    sub-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 959
    nop

    .line 282
    .end local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v2    # "value$iv":J
    .end local v6    # "seen$iv":I
    .end local v7    # "done$iv":Z
    .end local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    return-wide v2

    .line 904
    .restart local v0    # "$this$commonReadHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    :cond_9
    move/from16 v16, v1

    .end local v1    # "$i$f$commonReadHexadecimalUnsignedLong":I
    .restart local v16    # "$i$f$commonReadHexadecimalUnsignedLong":I
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public readInt()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 264
    move-object v0, p0

    .local v0, "$this$commonReadInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 756
    .local v1, "$i$f$commonReadInt":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 758
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 759
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 760
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 763
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    cmp-long v9, v7, v4

    if-gez v9, :cond_0

    .line 765
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 766
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 765
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x18

    .line 767
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 766
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 767
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x10

    .line 765
    or-int/2addr v4, v5

    .line 768
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 766
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 768
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    shl-int/lit8 v5, v5, 0x8

    .line 765
    or-int/2addr v4, v5

    .line 769
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .restart local v5    # "$this$and$iv$iv":B
    const/16 v7, 0xff

    .restart local v7    # "other$iv$iv":I
    const/4 v8, 0x0

    .line 766
    .restart local v8    # "$i$f$and":I
    and-int/2addr v5, v7

    .line 765
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 770
    goto :goto_1

    .line 778
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 780
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 766
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 780
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x18

    .line 781
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 766
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 781
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v8, v8, 0x10

    .line 780
    or-int/2addr v3, v8

    .line 782
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v9, v7, v9

    .local v9, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 766
    .restart local v11    # "$i$f$and":I
    and-int/2addr v9, v10

    .line 782
    .end local v9    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    shl-int/lit8 v9, v9, 0x8

    .line 780
    or-int/2addr v3, v9

    .line 783
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .restart local v10    # "other$iv$iv":I
    const/4 v11, 0x0

    .line 766
    .restart local v11    # "$i$f$and":I
    and-int/2addr v8, v10

    .line 780
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 779
    nop

    .line 785
    .local v3, "i$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 787
    if-ne v9, v6, :cond_1

    .line 788
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 789
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 791
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 794
    :goto_0
    move v4, v3

    .line 264
    .end local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadInt":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "i$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v4

    .line 756
    .restart local v0    # "$this$commonReadInt$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadInt":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readIntLe()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lokio/-SegmentedByteString;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 267
    move-object/from16 v0, p0

    .local v0, "$this$commonReadLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 795
    .local v1, "$i$f$commonReadLong":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 797
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 798
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 799
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 802
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    int-to-long v7, v7

    const/16 v9, 0x20

    cmp-long v10, v7, v4

    if-gez v10, :cond_0

    .line 804
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v4

    .local v4, "$this$and$iv$iv":I
    const-wide v7, 0xffffffffL

    .local v7, "other$iv$iv":J
    const/4 v5, 0x0

    .line 805
    .local v5, "$i$f$and":I
    int-to-long v10, v4

    and-long v4, v10, v7

    .line 804
    .end local v4    # "$this$and$iv$iv":I
    .end local v5    # "$i$f$and":I
    .end local v7    # "other$iv$iv":J
    shl-long/2addr v4, v9

    .line 806
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v7

    .local v7, "$this$and$iv$iv":I
    const-wide v8, 0xffffffffL

    .local v8, "other$iv$iv":J
    const/4 v10, 0x0

    .line 805
    .local v10, "$i$f$and":I
    int-to-long v11, v7

    and-long/2addr v8, v11

    .line 804
    .end local v7    # "$this$and$iv$iv":I
    .end local v8    # "other$iv$iv":J
    .end local v10    # "$i$f$and":I
    or-long/2addr v4, v8

    .line 807
    goto/16 :goto_1

    .line 813
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 815
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .local v10, "other$iv$iv":J
    const/4 v12, 0x0

    .line 816
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 815
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x38

    shl-long/2addr v10, v3

    .line 817
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v12, 0xff

    .local v12, "other$iv$iv":J
    const/4 v14, 0x0

    .line 816
    .local v14, "$i$f$and":I
    move-wide v15, v4

    int-to-long v4, v8

    and-long/2addr v4, v12

    .line 817
    .end local v8    # "$this$and$iv$iv":B
    .end local v12    # "other$iv$iv":J
    .end local v14    # "$i$f$and":I
    const/16 v8, 0x30

    shl-long/2addr v4, v8

    .line 815
    or-long/2addr v4, v10

    .line 818
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 816
    .local v12, "$i$f$and":I
    int-to-long v13, v3

    and-long/2addr v10, v13

    .line 818
    .end local v3    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    const/16 v3, 0x28

    shl-long/2addr v10, v3

    .line 815
    or-long/2addr v4, v10

    .line 819
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v10, 0xff

    .restart local v10    # "other$iv$iv":J
    const/4 v12, 0x0

    .line 816
    .restart local v12    # "$i$f$and":I
    int-to-long v13, v8

    and-long/2addr v10, v13

    .line 819
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":J
    .end local v12    # "$i$f$and":I
    shl-long v8, v10, v9

    .line 815
    or-long/2addr v4, v8

    .line 820
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .local v9, "other$iv$iv":J
    const/4 v11, 0x0

    .line 816
    .local v11, "$i$f$and":I
    int-to-long v12, v3

    and-long/2addr v9, v12

    .line 820
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v3, 0x18

    shl-long/2addr v9, v3

    .line 815
    or-long/2addr v4, v9

    .line 821
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 816
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long/2addr v9, v12

    .line 821
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v8, 0x10

    shl-long v8, v9, v8

    .line 815
    or-long/2addr v4, v8

    .line 822
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 816
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v3

    and-long/2addr v9, v12

    .line 822
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    const/16 v3, 0x8

    shl-long/2addr v9, v3

    .line 815
    or-long/2addr v4, v9

    .line 823
    add-int/lit8 v3, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v3, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const-wide/16 v9, 0xff

    .restart local v9    # "other$iv$iv":J
    const/4 v11, 0x0

    .line 816
    .restart local v11    # "$i$f$and":I
    int-to-long v12, v8

    and-long/2addr v9, v12

    .line 815
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":J
    .end local v11    # "$i$f$and":I
    or-long/2addr v4, v9

    .line 824
    nop

    .line 834
    .local v4, "v$iv":J
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long/2addr v8, v15

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 836
    if-ne v3, v6, :cond_1

    .line 837
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 838
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 840
    :cond_1
    iput v3, v2, Lokio/Segment;->pos:I

    .line 843
    :goto_0
    nop

    .line 267
    .end local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadLong":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "pos$iv":I
    .end local v4    # "v$iv":J
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    :goto_1
    return-wide v4

    .line 795
    .restart local v0    # "$this$commonReadLong$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadLong":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readLongLe()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/-SegmentedByteString;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 261
    move-object v0, p0

    .local v0, "$this$commonReadShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 731
    .local v1, "$i$f$commonReadShort":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 733
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 734
    .local v2, "segment$iv":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->pos:I

    .line 735
    .local v3, "pos$iv":I
    iget v6, v2, Lokio/Segment;->limit:I

    .line 738
    .local v6, "limit$iv":I
    sub-int v7, v6, v3

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    .line 739
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v4

    .local v4, "$this$and$iv$iv":B
    const/16 v5, 0xff

    .local v5, "other$iv$iv":I
    const/4 v7, 0x0

    .line 740
    .local v7, "$i$f$and":I
    and-int/2addr v4, v5

    .line 739
    .end local v4    # "$this$and$iv$iv":B
    .end local v5    # "other$iv$iv":I
    .end local v7    # "$i$f$and":I
    shl-int/lit8 v4, v4, 0x8

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result v5

    .local v5, "$this$and$iv$iv":B
    const/16 v7, 0xff

    .local v7, "other$iv$iv":I
    const/4 v8, 0x0

    .line 740
    .local v8, "$i$f$and":I
    and-int/2addr v5, v7

    .line 739
    .end local v5    # "$this$and$iv$iv":B
    .end local v7    # "other$iv$iv":I
    .end local v8    # "$i$f$and":I
    or-int/2addr v4, v5

    .line 741
    .local v4, "s$iv":I
    int-to-short v5, v4

    goto :goto_1

    .line 744
    .end local v4    # "s$iv":I
    :cond_0
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 745
    .local v7, "data$iv":[B
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "pos$iv":I
    .local v8, "pos$iv":I
    aget-byte v3, v7, v3

    .local v3, "$this$and$iv$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv$iv":I
    const/4 v10, 0x0

    .line 740
    .local v10, "$i$f$and":I
    and-int/2addr v3, v9

    .line 745
    .end local v3    # "$this$and$iv$iv":B
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$i$f$and":I
    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos$iv":I
    .local v9, "pos$iv":I
    aget-byte v8, v7, v8

    .local v8, "$this$and$iv$iv":B
    const/16 v10, 0xff

    .local v10, "other$iv$iv":I
    const/4 v11, 0x0

    .line 740
    .local v11, "$i$f$and":I
    and-int/2addr v8, v10

    .line 745
    .end local v8    # "$this$and$iv$iv":B
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$i$f$and":I
    or-int/2addr v3, v8

    .line 746
    .local v3, "s$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    sub-long/2addr v10, v4

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 748
    if-ne v9, v6, :cond_1

    .line 749
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 750
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 752
    :cond_1
    iput v9, v2, Lokio/Segment;->pos:I

    .line 755
    :goto_0
    int-to-short v5, v3

    .line 261
    .end local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadShort":I
    .end local v2    # "segment$iv":Lokio/Segment;
    .end local v3    # "s$iv":I
    .end local v6    # "limit$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    :goto_1
    return v5

    .line 731
    .restart local v0    # "$this$commonReadShort$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadShort":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readShortLe()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result v0

    invoke-static {v0}, Lokio/-SegmentedByteString;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # J
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "byteCount",
            "charset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 309
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_4

    .line 310
    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const-string v0, ""

    return-object v0

    .line 312
    :cond_1
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    .local v0, "s":Lokio/Segment;
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lokio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    new-instance v1, Ljava/lang/String;

    .line 315
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/lang/String;

    .line 318
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 319
    .local v1, "result":Ljava/lang/String;
    iget v2, v0, Lokio/Segment;->pos:I

    long-to-int v3, p1

    add-int/2addr v2, v3

    iput v2, v0, Lokio/Segment;->pos:I

    .line 320
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 322
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_3

    .line 323
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 324
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 327
    :cond_3
    return-object v1

    .line 309
    .end local v0    # "s":Lokio/Segment;
    .end local v1    # "result":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 679
    :cond_5
    const/4 v0, 0x0

    .line 308
    .local v0, "$i$a$-require-Buffer$readString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$readString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "charset"
        }
    .end annotation

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsafe()Lokio/Buffer$UnsafeCursor;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lokio/Buffer;->readUnsafe$default(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    .line 594
    return-object v0
.end method

.method public final readUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 1
    .param p1, "unsafeCursor"    # Lokio/Buffer$UnsafeCursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unsafeCursor"
        }
    .end annotation

    const-string/jumbo v0, "unsafeCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    invoke-static {p0, p1}, Lokio/internal/-Buffer;->commonReadUnsafe(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8()Ljava/lang/String;
    .locals 3

    .line 299
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .locals 1
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 302
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8CodePoint()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 340
    move-object v0, p0

    .local v0, "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1015
    .local v1, "$i$f$commonReadUtf8CodePoint":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_b

    .line 1017
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v2

    .line 1018
    .local v2, "b0$iv":B
    const/4 v3, 0x0

    .line 1019
    .local v3, "codePoint$iv":I
    const/4 v4, 0x0

    .line 1020
    .local v4, "byteCount$iv":I
    const/4 v5, 0x0

    .line 1022
    .local v5, "min$iv":I
    nop

    .line 1023
    const/16 v6, 0x80

    .local v6, "other$iv$iv":I
    move v7, v2

    .local v7, "$this$and$iv$iv":B
    const/4 v8, 0x0

    .line 1024
    .local v8, "$i$f$and":I
    and-int/2addr v6, v7

    .line 1023
    .end local v6    # "other$iv$iv":I
    .end local v7    # "$this$and$iv$iv":B
    .end local v8    # "$i$f$and":I
    const v7, 0xfffd

    if-nez v6, :cond_0

    .line 1025
    const/16 v6, 0x7f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .local v8, "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .local v9, "$i$f$and":I
    and-int/2addr v6, v8

    .line 1025
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    nop

    .line 1026
    .end local v3    # "codePoint$iv":I
    .local v6, "codePoint$iv":I
    const/4 v3, 0x1

    .line 1027
    .end local v4    # "byteCount$iv":I
    .local v3, "byteCount$iv":I
    const/4 v4, 0x0

    .end local v5    # "min$iv":I
    .local v4, "min$iv":I
    goto :goto_0

    .line 1029
    .end local v6    # "codePoint$iv":I
    .local v3, "codePoint$iv":I
    .local v4, "byteCount$iv":I
    .restart local v5    # "min$iv":I
    :cond_0
    const/16 v6, 0xe0

    .local v6, "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1029
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xc0

    if-ne v6, v8, :cond_1

    .line 1031
    const/16 v6, 0x1f

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1031
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    nop

    .line 1032
    .end local v3    # "codePoint$iv":I
    .local v6, "codePoint$iv":I
    const/4 v3, 0x2

    .line 1033
    .end local v4    # "byteCount$iv":I
    .local v3, "byteCount$iv":I
    const/16 v4, 0x80

    .end local v5    # "min$iv":I
    .local v4, "min$iv":I
    goto :goto_0

    .line 1035
    .end local v6    # "codePoint$iv":I
    .local v3, "codePoint$iv":I
    .local v4, "byteCount$iv":I
    .restart local v5    # "min$iv":I
    :cond_1
    const/16 v6, 0xf0

    .local v6, "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1035
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xe0

    if-ne v6, v8, :cond_2

    .line 1037
    const/16 v6, 0xf

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1037
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    nop

    .line 1038
    .end local v3    # "codePoint$iv":I
    .local v6, "codePoint$iv":I
    const/4 v3, 0x3

    .line 1039
    .end local v4    # "byteCount$iv":I
    .local v3, "byteCount$iv":I
    const/16 v4, 0x800

    .end local v5    # "min$iv":I
    .local v4, "min$iv":I
    goto :goto_0

    .line 1041
    .end local v6    # "codePoint$iv":I
    .local v3, "codePoint$iv":I
    .local v4, "byteCount$iv":I
    .restart local v5    # "min$iv":I
    :cond_2
    const/16 v6, 0xf8

    .local v6, "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1041
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    const/16 v8, 0xf0

    if-ne v6, v8, :cond_a

    .line 1043
    const/4 v6, 0x7

    .restart local v6    # "other$iv$iv":I
    move v8, v2

    .restart local v8    # "$this$and$iv$iv":B
    const/4 v9, 0x0

    .line 1024
    .restart local v9    # "$i$f$and":I
    and-int/2addr v6, v8

    .line 1043
    .end local v6    # "other$iv$iv":I
    .end local v8    # "$this$and$iv$iv":B
    .end local v9    # "$i$f$and":I
    nop

    .line 1044
    .end local v3    # "codePoint$iv":I
    .local v6, "codePoint$iv":I
    const/4 v3, 0x4

    .line 1045
    .end local v4    # "byteCount$iv":I
    .local v3, "byteCount$iv":I
    const/high16 v4, 0x10000

    .line 1054
    .end local v5    # "min$iv":I
    .local v4, "min$iv":I
    :goto_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v8

    int-to-long v10, v3

    cmp-long v5, v8, v10

    if-ltz v5, :cond_9

    .line 1061
    const/4 v5, 0x1

    .local v5, "i$iv":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 1062
    int-to-long v8, v5

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v8

    .line 1063
    .local v8, "b$iv":B
    const/16 v9, 0xc0

    .local v9, "other$iv$iv":I
    move v10, v8

    .local v10, "$this$and$iv$iv":B
    const/4 v11, 0x0

    .line 1024
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .line 1063
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$this$and$iv$iv":B
    .end local v11    # "$i$f$and":I
    const/16 v10, 0x80

    if-ne v9, v10, :cond_3

    .line 1065
    shl-int/lit8 v6, v6, 0x6

    .line 1066
    const/16 v9, 0x3f

    .restart local v9    # "other$iv$iv":I
    move v10, v8

    .restart local v10    # "$this$and$iv$iv":B
    const/4 v11, 0x0

    .line 1024
    .restart local v11    # "$i$f$and":I
    and-int/2addr v9, v10

    .line 1066
    .end local v9    # "other$iv$iv":I
    .end local v10    # "$this$and$iv$iv":B
    .end local v11    # "$i$f$and":I
    or-int/2addr v6, v9

    .line 1061
    .end local v8    # "b$iv":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1068
    .restart local v8    # "b$iv":B
    :cond_3
    int-to-long v9, v5

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->skip(J)V

    .line 1069
    goto :goto_3

    .line 1073
    .end local v5    # "i$iv":I
    .end local v8    # "b$iv":B
    :cond_4
    int-to-long v8, v3

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1075
    nop

    .line 1076
    const v5, 0x10ffff

    if-le v6, v5, :cond_5

    .line 1077
    goto :goto_2

    .line 1079
    :cond_5
    const v5, 0xd800

    const/4 v8, 0x0

    if-gt v5, v6, :cond_6

    const v5, 0xe000

    if-ge v6, v5, :cond_6

    const/4 v8, 0x1

    :cond_6
    if-eqz v8, :cond_7

    .line 1080
    goto :goto_2

    .line 1082
    :cond_7
    if-ge v6, v4, :cond_8

    .line 1083
    goto :goto_2

    .line 1085
    :cond_8
    move v7, v6

    .line 1075
    :goto_2
    goto :goto_3

    .line 1055
    :cond_9
    new-instance v5, Ljava/io/EOFException;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {v2}, Lokio/-SegmentedByteString;->toHexString(B)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "size < "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (to read code point prefixed 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1049
    .end local v6    # "codePoint$iv":I
    .local v3, "codePoint$iv":I
    .local v4, "byteCount$iv":I
    .local v5, "min$iv":I
    :cond_a
    const-wide/16 v8, 0x1

    invoke-virtual {v0, v8, v9}, Lokio/Buffer;->skip(J)V

    .line 1050
    nop

    .line 340
    .end local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8CodePoint":I
    .end local v2    # "b0$iv":B
    .end local v3    # "codePoint$iv":I
    .end local v4    # "byteCount$iv":I
    .end local v5    # "min$iv":I
    :goto_3
    return v7

    .line 1015
    .restart local v0    # "$this$commonReadUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonReadUtf8CodePoint":I
    :cond_b
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public readUtf8Line()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 331
    move-object v0, p0

    .local v0, "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 990
    .local v1, "$i$f$commonReadUtf8Line":I
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v2

    .line 992
    .local v2, "newline$iv":J
    nop

    .line 993
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    invoke-static {v0, v2, v3}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 995
    :cond_1
    const/4 v4, 0x0

    .line 992
    :goto_0
    nop

    .line 331
    .end local v0    # "$this$commonReadUtf8Line$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonReadUtf8Line":I
    .end local v2    # "newline$iv":J
    return-object v4
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 334
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUtf8LineStrict(J)Ljava/lang/String;
    .locals 13
    .param p1, "limit"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 337
    move-object v0, p0

    .local v0, "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    const/4 v6, 0x0

    .line 996
    .local v6, "$i$f$commonReadUtf8LineStrict":I
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 998
    const-wide/16 v7, 0x1

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-long v1, p1, v7

    :goto_1
    move-wide v4, v1

    .line 999
    .local v4, "scanLength$iv":J
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->indexOf(BJJ)J

    move-result-wide v9

    .line 1000
    move-wide v11, v4

    .end local v4    # "scanLength$iv":J
    .local v9, "newline$iv":J
    .local v11, "scanLength$iv":J
    const-wide/16 v1, -0x1

    cmp-long v3, v9, v1

    if-eqz v3, :cond_2

    invoke-static {v0, v9, v10}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1001
    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v1

    cmp-long v3, v11, v1

    if-gez v3, :cond_3

    .line 1002
    sub-long v4, v11, v7

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    .line 1003
    invoke-virtual {v0, v11, v12}, Lokio/Buffer;->getByte(J)B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1005
    invoke-static {v0, v11, v12}, Lokio/internal/-Buffer;->readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v1

    .line 337
    .end local v0    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .end local v6    # "$i$f$commonReadUtf8LineStrict":I
    .end local v9    # "newline$iv":J
    .end local v11    # "scanLength$iv":J
    :goto_2
    return-object v1

    .line 1007
    .restart local v0    # "$this$commonReadUtf8LineStrict$iv":Lokio/Buffer;
    .restart local v6    # "$i$f$commonReadUtf8LineStrict":I
    .restart local v9    # "newline$iv":J
    .restart local v11    # "scanLength$iv":J
    :cond_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1008
    .local v1, "data$iv":Lokio/Buffer;
    const/16 v2, 0x20

    .local v2, "a$iv$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    .local v3, "b$iv$iv":J
    const/4 v5, 0x0

    .line 1009
    .local v5, "$i$f$minOf":I
    int-to-long v7, v2

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1008
    .end local v2    # "a$iv$iv":I
    .end local v3    # "b$iv$iv":J
    .end local v5    # "$i$f$minOf":I
    const-wide/16 v2, 0x0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 1010
    new-instance v2, Ljava/io/EOFException;

    .line 1011
    nop

    .line 1012
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1014
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\n not found: limit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " content="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1010
    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 997
    .end local v1    # "data$iv":Lokio/Buffer;
    .end local v9    # "newline$iv":J
    .end local v11    # "scanLength$iv":J
    :cond_4
    const/4 v1, 0x0

    .line 996
    .local v1, "$i$a$-require--Buffer$commonReadUtf8LineStrict$1$iv":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "limit < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--Buffer$commonReadUtf8LineStrict$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public request(J)Z
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .line 116
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public require(J)V
    .locals 3
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 113
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    .line 114
    return-void

    .line 113
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public select(Lokio/Options;)I
    .locals 6
    .param p1, "options"    # Lokio/Options;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    move-object v0, p0

    .local v0, "$this$commonSelect$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 969
    .local v1, "$i$f$commonSelect":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, p1, v4, v2, v3}, Lokio/internal/-Buffer;->selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    move-result v2

    .line 970
    .local v2, "index$iv":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 973
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->getByteStrings$third_party_java_src_okio_okio_jvm()[Lokio/ByteString;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    .line 974
    .local v3, "selectedSize$iv":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->skip(J)V

    .line 975
    nop

    .line 289
    .end local v0    # "$this$commonSelect$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSelect":I
    .end local v2    # "index$iv":I
    .end local v3    # "selectedSize$iv":I
    :goto_0
    return v2
.end method

.method public select(Lokio/TypedOptions;)Ljava/lang/Object;
    .locals 4
    .param p1, "options"    # Lokio/TypedOptions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokio/TypedOptions<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    move-object v0, p0

    check-cast v0, Lokio/BufferedSource;

    .local v0, "$this$commonSelect$iv":Lokio/BufferedSource;
    const/4 v1, 0x0

    .line 976
    .local v1, "$i$f$commonSelect":I
    invoke-virtual {p1}, Lokio/TypedOptions;->getOptions$third_party_java_src_okio_okio_jvm()Lokio/Options;

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSource;->select(Lokio/Options;)I

    move-result v2

    .line 977
    .local v2, "index$iv":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 978
    :cond_0
    invoke-virtual {p1, v2}, Lokio/TypedOptions;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 976
    .end local v2    # "index$iv":I
    :goto_0
    nop

    .line 291
    .end local v0    # "$this$commonSelect$iv":Lokio/BufferedSource;
    .end local v1    # "$i$f$commonSelect":I
    return-object v3
.end method

.method public final setSize$third_party_java_src_okio_okio_jvm(J)V
    .locals 0
    .param p1, "<set-?>"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "<set-?>"
        }
    .end annotation

    .line 81
    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-void
.end method

.method public final sha1()Lokio/ByteString;
    .locals 1

    .line 523
    const-string v0, "SHA-1"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha256()Lokio/ByteString;
    .locals 1

    .line 526
    const-string v0, "SHA-256"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final sha512()Lokio/ByteString;
    .locals 1

    .line 529
    const-string v0, "SHA-512"

    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()J
    .locals 2

    .line 79
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .locals 10
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 376
    move-object v0, p0

    .local v0, "$this$commonSkip$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1123
    .local v1, "$i$f$commonSkip":I
    move-wide v2, p1

    .line 1124
    .local v2, "byteCount$iv":J
    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 1125
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v4, :cond_1

    .line 1127
    .local v4, "head$iv":Lokio/Segment;
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    .local v5, "b$iv$iv":I
    const/4 v6, 0x0

    .line 1128
    .local v6, "$i$f$minOf":I
    int-to-long v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    .line 1127
    .end local v5    # "b$iv$iv":I
    .end local v6    # "$i$f$minOf":I
    long-to-int v5, v7

    .line 1129
    .local v5, "toSkip$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v6

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1130
    int-to-long v6, v5

    sub-long/2addr v2, v6

    .line 1131
    iget v6, v4, Lokio/Segment;->pos:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->pos:I

    .line 1133
    iget v6, v4, Lokio/Segment;->pos:I

    iget v7, v4, Lokio/Segment;->limit:I

    if-ne v6, v7, :cond_0

    .line 1134
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v6

    iput-object v6, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1135
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v4    # "head$iv":Lokio/Segment;
    .end local v5    # "toSkip$iv":I
    goto :goto_0

    .line 1125
    :cond_1
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 1138
    :cond_2
    nop

    .line 376
    .end local v0    # "$this$commonSkip$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSkip":I
    .end local v2    # "byteCount$iv":J
    return-void
.end method

.method public final snapshot()Lokio/ByteString;
    .locals 7

    .line 589
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1746
    .local v1, "$i$f$commonSnapshot":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 1748
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v3}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object v0

    .line 589
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    return-object v0

    .line 1747
    .restart local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonSnapshot":I
    :cond_1
    const/4 v2, 0x0

    .line 1746
    .local v2, "$i$a$-check--Buffer$commonSnapshot$1$iv":I
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size > Int.MAX_VALUE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-check--Buffer$commonSnapshot$1$iv":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final snapshot(I)Lokio/ByteString;
    .locals 9
    .param p1, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteCount"
        }
    .end annotation

    .line 591
    move-object v0, p0

    .local v0, "$this$commonSnapshot$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1749
    .local v1, "$i$f$commonSnapshot":I
    if-nez p1, :cond_0

    sget-object v2, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    goto :goto_2

    .line 1750
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    int-to-long v7, p1

    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1753
    const/4 v2, 0x0

    .line 1754
    .local v2, "offset$iv":I
    const/4 v3, 0x0

    .line 1755
    .local v3, "segmentCount$iv":I
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1756
    .local v4, "s$iv":Lokio/Segment;
    :goto_0
    if-ge v2, p1, :cond_2

    .line 1757
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    if-eq v5, v6, :cond_1

    .line 1760
    iget v5, v4, Lokio/Segment;->limit:I

    iget v6, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1761
    add-int/lit8 v3, v3, 0x1

    .line 1762
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_0

    .line 1758
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "s.limit == s.pos"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1766
    :cond_2
    new-array v5, v3, [[B

    .line 1767
    .local v5, "segments$iv":[[B
    mul-int/lit8 v6, v3, 0x2

    new-array v6, v6, [I

    .line 1768
    .local v6, "directory$iv":[I
    const/4 v2, 0x0

    .line 1769
    const/4 v3, 0x0

    .line 1770
    iget-object v4, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1771
    :goto_1
    if-ge v2, p1, :cond_3

    .line 1772
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v7, v4, Lokio/Segment;->data:[B

    aput-object v7, v5, v3

    .line 1773
    iget v7, v4, Lokio/Segment;->limit:I

    iget v8, v4, Lokio/Segment;->pos:I

    sub-int/2addr v7, v8

    add-int/2addr v2, v7

    .line 1775
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v6, v3

    .line 1776
    move-object v7, v5

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    add-int/2addr v7, v3

    iget v8, v4, Lokio/Segment;->pos:I

    aput v8, v6, v7

    .line 1777
    const/4 v7, 0x1

    iput-boolean v7, v4, Lokio/Segment;->shared:Z

    .line 1778
    add-int/lit8 v3, v3, 0x1

    .line 1779
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    .line 1782
    :cond_3
    new-instance v7, Lokio/SegmentedByteString;

    invoke-direct {v7, v5, v6}, Lokio/SegmentedByteString;-><init>([[B[I)V

    check-cast v7, Lokio/ByteString;

    move-object v2, v7

    .line 591
    .end local v0    # "$this$commonSnapshot$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonSnapshot":I
    .end local v2    # "offset$iv":I
    .end local v3    # "segmentCount$iv":I
    .end local v4    # "s$iv":Lokio/Segment;
    .end local v5    # "segments$iv":[[B
    .end local v6    # "directory$iv":[I
    :goto_2
    return-object v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 509
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 579
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;
    .locals 5
    .param p1, "minimumCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minimumCapacity"
        }
    .end annotation

    .line 465
    move-object v0, p0

    .local v0, "$this$commonWritableSegment$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1432
    .local v1, "$i$f$commonWritableSegment":I
    const/16 v2, 0x2000

    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    if-gt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 1434
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_1

    .line 1435
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    .line 1436
    .local v2, "result$iv":Lokio/Segment;
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1437
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1438
    iput-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    .line 1439
    goto :goto_3

    .line 1442
    .end local v2    # "result$iv":Lokio/Segment;
    :cond_1
    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1443
    .local v3, "tail$iv":Lokio/Segment;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v3, Lokio/Segment;->limit:I

    add-int/2addr v4, p1

    if-gt v4, v2, :cond_3

    iget-boolean v2, v3, Lokio/Segment;->owner:Z

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_2

    .line 1444
    :cond_3
    :goto_1
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v2

    invoke-virtual {v3, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v2

    .line 1446
    .end local v3    # "tail$iv":Lokio/Segment;
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    nop

    .line 465
    .end local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWritableSegment":I
    .end local v2    # "tail$iv":Lokio/Segment;
    :goto_3
    return-object v2

    .line 1433
    .restart local v0    # "$this$commonWritableSegment$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWritableSegment":I
    :cond_4
    const/4 v2, 0x0

    .line 1432
    .local v2, "$i$a$-require--Buffer$commonWritableSegment$1$iv":I
    nop

    .end local v2    # "$i$a$-require--Buffer$commonWritableSegment$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unexpected capacity"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 423
    .local v0, "byteCount":I
    move v1, v0

    .line 424
    .local v1, "remaining":I
    :goto_0
    if-lez v1, :cond_0

    .line 425
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 427
    .local v2, "tail":Lokio/Segment;
    iget v3, v2, Lokio/Segment;->limit:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 428
    .local v3, "toCopy":I
    iget-object v4, v2, Lokio/Segment;->data:[B

    iget v5, v2, Lokio/Segment;->limit:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 430
    sub-int/2addr v1, v3

    .line 431
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->limit:I

    .end local v2    # "tail":Lokio/Segment;
    .end local v3    # "toCopy":I
    goto :goto_0

    .line 434
    :cond_0
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 435
    return v0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .locals 4
    .param p1, "byteString"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    move-object v0, p0

    .line 1139
    .local v0, "$this$commonWrite_u24default$iv":Lokio/Buffer;
    nop

    .line 1141
    const/4 v1, 0x0

    .line 1139
    .local v1, "offset$iv":I
    nop

    .line 1142
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .line 1139
    .local v2, "byteCount$iv":I
    const/4 v3, 0x0

    .line 1144
    .local v3, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, v1, v2}, Lokio/ByteString;->write$third_party_java_src_okio_okio_jvm(Lokio/Buffer;II)V

    .line 1145
    nop

    .line 378
    .end local v0    # "$this$commonWrite_u24default$iv":Lokio/Buffer;
    .end local v1    # "offset$iv":I
    .end local v2    # "byteCount$iv":I
    .end local v3    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/ByteString;II)Lokio/Buffer;
    .locals 2
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "byteString",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1146
    .local v1, "$i$f$commonWrite":I
    invoke-virtual {p1, v0, p2, p3}, Lokio/ByteString;->write$third_party_java_src_okio_okio_jvm(Lokio/Buffer;II)V

    .line 1147
    nop

    .line 381
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write(Lokio/Source;J)Lokio/Buffer;
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1314
    .local v1, "$i$f$commonWrite":I
    move-wide v2, p2

    .line 1315
    .local v2, "byteCount$iv":J
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 1316
    invoke-interface {p1, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1317
    .local v4, "read$iv":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 1318
    sub-long/2addr v2, v4

    .end local v4    # "read$iv":J
    goto :goto_0

    .line 1317
    .restart local v4    # "read$iv":J
    :cond_0
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6

    .line 1320
    .end local v4    # "read$iv":J
    :cond_1
    nop

    .line 443
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "byteCount$iv":J
    return-object v0
.end method

.method public write([B)Lokio/Buffer;
    .locals 4
    .param p1, "source"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1285
    .local v1, "$i$f$commonWrite":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v0, p1, v2, v3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    .line 412
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    return-object v0
.end method

.method public write([BII)Lokio/Buffer;
    .locals 10
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1286
    .local v1, "$i$f$commonWrite":I
    move v2, p2

    .line 1287
    .local v2, "offset$iv":I
    array-length v3, p1

    int-to-long v4, v3

    int-to-long v6, v2

    int-to-long v8, p3

    invoke-static/range {v4 .. v9}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1289
    add-int v3, v2, p3

    .line 1290
    .local v3, "limit$iv":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1291
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v4

    .line 1293
    .local v4, "tail$iv":Lokio/Segment;
    sub-int v5, v3, v2

    iget v6, v4, Lokio/Segment;->limit:I

    rsub-int v6, v6, 0x2000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1294
    .local v5, "toCopy$iv":I
    nop

    .line 1295
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 1296
    iget v7, v4, Lokio/Segment;->limit:I

    .line 1297
    nop

    .line 1298
    add-int v8, v2, v5

    .line 1294
    invoke-static {p1, v6, v7, v2, v8}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 1301
    add-int/2addr v2, v5

    .line 1302
    iget v6, v4, Lokio/Segment;->limit:I

    add-int/2addr v6, v5

    iput v6, v4, Lokio/Segment;->limit:I

    .end local v4    # "tail$iv":Lokio/Segment;
    .end local v5    # "toCopy$iv":I
    goto :goto_0

    .line 1305
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v6, p3

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1306
    nop

    .line 418
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v2    # "offset$iv":I
    .end local v3    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 1
    .param p1, "byteString"    # Lokio/ByteString;

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write(Lokio/ByteString;II)Lokio/BufferedSink;
    .locals 1
    .param p1, "byteString"    # Lokio/ByteString;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/ByteString;II)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write(Lokio/Source;J)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # Lokio/Source;
    .param p2, "byteCount"    # J

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Source;J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 1
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 11
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "byteCount"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    move-object v0, p0

    .local v0, "$this$commonWrite$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1447
    .local v1, "$i$f$commonWrite":I
    move-wide v6, p2

    .line 1448
    .local v6, "byteCount$iv":J
    const/4 v8, 0x0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_7

    .line 1450
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 1452
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v6, v2

    if-lez v4, :cond_6

    .line 1454
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v4, v6, v2

    if-gez v4, :cond_4

    .line 1455
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 1456
    .local v2, "tail$iv":Lokio/Segment;
    :goto_2
    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lokio/Segment;->owner:Z

    if-eqz v3, :cond_3

    .line 1457
    iget v3, v2, Lokio/Segment;->limit:I

    int-to-long v3, v3

    add-long/2addr v3, v6

    iget-boolean v5, v2, Lokio/Segment;->shared:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    iget v5, v2, Lokio/Segment;->pos:I

    :goto_3
    int-to-long v9, v5

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x2000

    cmp-long v5, v3, v9

    if-gtz v5, :cond_3

    .line 1460
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v2, v4}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1461
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1462
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1463
    goto :goto_5

    .line 1467
    :cond_3
    iget-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    long-to-int v4, v6

    invoke-virtual {v3, v4}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1472
    .end local v2    # "tail$iv":Lokio/Segment;
    :cond_4
    iget-object v2, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1473
    .local v2, "segmentToMove$iv":Lokio/Segment;
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    .line 1474
    .local v3, "movedByteCount$iv":J
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1475
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v5, :cond_5

    .line 1476
    iput-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1477
    iput-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1478
    iget-object v5, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v5, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_4

    .line 1480
    :cond_5
    iget-object v5, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v5, Lokio/Segment;->prev:Lokio/Segment;

    .line 1481
    .local v5, "tail$iv":Lokio/Segment;
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v2}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v5

    .line 1482
    invoke-virtual {v5}, Lokio/Segment;->compact()V

    .line 1484
    .end local v5    # "tail$iv":Lokio/Segment;
    :goto_4
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-virtual {p1, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1485
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v9

    add-long/2addr v9, v3

    invoke-virtual {v0, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1486
    sub-long/2addr v6, v3

    .end local v2    # "segmentToMove$iv":Lokio/Segment;
    .end local v3    # "movedByteCount$iv":J
    goto/16 :goto_1

    .line 1488
    :cond_6
    nop

    .line 467
    .end local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWrite":I
    .end local v6    # "byteCount$iv":J
    :goto_5
    return-void

    .line 1449
    .restart local v0    # "$this$commonWrite$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWrite":I
    .restart local v6    # "byteCount$iv":J
    :cond_7
    const/4 v2, 0x0

    .line 1448
    .local v2, "$i$a$-require--Buffer$commonWrite$1$iv":I
    nop

    .end local v2    # "$i$a$-require--Buffer$commonWrite$1$iv":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "source == this"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public writeAll(Lokio/Source;)J
    .locals 9
    .param p1, "source"    # Lokio/Source;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    move-object v0, p0

    .local v0, "$this$commonWriteAll$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1307
    .local v1, "$i$f$commonWriteAll":I
    const-wide/16 v2, 0x0

    .line 1308
    .local v2, "totalBytesRead$iv":J
    :goto_0
    nop

    .line 1309
    const-wide/16 v4, 0x2000

    invoke-interface {p1, v0, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 1310
    .local v4, "readCount$iv":J
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 1311
    add-long/2addr v2, v4

    .end local v4    # "readCount$iv":J
    goto :goto_0

    .line 1313
    :cond_0
    nop

    .line 439
    .end local v0    # "$this$commonWriteAll$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteAll":I
    .end local v2    # "totalBytesRead$iv":J
    return-wide v2
.end method

.method public writeByte(I)Lokio/Buffer;
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 445
    move-object v0, p0

    .local v0, "$this$commonWriteByte$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1321
    .local v1, "$i$f$commonWriteByte":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1322
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    iget v4, v2, Lokio/Segment;->limit:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lokio/Segment;->limit:I

    int-to-byte v5, p1

    aput-byte v5, v3, v4

    .line 1323
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1324
    nop

    .line 445
    .end local v0    # "$this$commonWriteByte$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteByte":I
    .end local v2    # "tail$iv":Lokio/Segment;
    return-object v0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "b"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .locals 15
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 459
    move-object v0, p0

    .local v0, "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1357
    .local v1, "$i$f$commonWriteDecimalLong":I
    move-wide/from16 v2, p1

    .line 1358
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1360
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 1363
    :cond_0
    const/4 v6, 0x0

    .line 1364
    .local v6, "negative$iv":Z
    cmp-long v7, v2, v4

    if-gez v7, :cond_2

    .line 1365
    neg-long v2, v2

    .line 1366
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 1367
    const-string v4, "-9223372036854775808"

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 1369
    :cond_1
    const/4 v6, 0x1

    .line 1372
    :cond_2
    invoke-static {v2, v3}, Lokio/internal/-Buffer;->access$countDigitsIn(J)I

    move-result v7

    .line 1373
    .local v7, "width$iv":I
    if-eqz v6, :cond_3

    .line 1374
    add-int/lit8 v7, v7, 0x1

    .line 1377
    :cond_3
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v8

    .line 1378
    .local v8, "tail$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    .line 1379
    .local v9, "data$iv":[B
    iget v10, v8, Lokio/Segment;->limit:I

    add-int/2addr v10, v7

    .line 1380
    .local v10, "pos$iv":I
    :goto_0
    cmp-long v11, v2, v4

    if-eqz v11, :cond_4

    .line 1381
    const/16 v11, 0xa

    int-to-long v11, v11

    rem-long v13, v2, v11

    long-to-int v14, v13

    .line 1382
    .local v14, "digit$iv":I
    add-int/lit8 v10, v10, -0x1

    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    move-result-object v13

    aget-byte v13, v13, v14

    aput-byte v13, v9, v10

    .line 1383
    div-long/2addr v2, v11

    .end local v14    # "digit$iv":I
    goto :goto_0

    .line 1385
    :cond_4
    if-eqz v6, :cond_5

    .line 1386
    add-int/lit8 v10, v10, -0x1

    const/16 v4, 0x2d

    aput-byte v4, v9, v10

    .line 1389
    :cond_5
    iget v4, v8, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    iput v4, v8, Lokio/Segment;->limit:I

    .line 1390
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    int-to-long v11, v7

    add-long/2addr v4, v11

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1391
    nop

    .line 459
    .end local v0    # "$this$commonWriteDecimalLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteDecimalLong":I
    .end local v2    # "v$iv":J
    .end local v6    # "negative$iv":Z
    .end local v7    # "width$iv":I
    .end local v8    # "tail$iv":Lokio/Segment;
    .end local v9    # "data$iv":[B
    .end local v10    # "pos$iv":I
    :goto_1
    return-object v0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .locals 16
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 462
    move-object/from16 v0, p0

    .local v0, "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1392
    .local v1, "$i$f$commonWriteHexadecimalUnsignedLong":I
    move-wide/from16 v2, p1

    .line 1393
    .local v2, "v$iv":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1395
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_1

    .line 1400
    :cond_0
    move-wide v4, v2

    .line 1401
    .local v4, "x$iv":J
    const/4 v6, 0x1

    ushr-long v7, v4, v6

    or-long/2addr v4, v7

    .line 1402
    const/4 v7, 0x2

    ushr-long v8, v4, v7

    or-long/2addr v4, v8

    .line 1403
    const/4 v8, 0x4

    ushr-long v9, v4, v8

    or-long/2addr v4, v9

    .line 1404
    const/16 v9, 0x8

    ushr-long v10, v4, v9

    or-long/2addr v4, v10

    .line 1405
    const/16 v10, 0x10

    ushr-long v11, v4, v10

    or-long/2addr v4, v11

    .line 1406
    const/16 v11, 0x20

    ushr-long v12, v4, v11

    or-long/2addr v4, v12

    .line 1410
    ushr-long v12, v4, v6

    const-wide v14, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v12, v14

    sub-long/2addr v4, v12

    .line 1411
    ushr-long v12, v4, v7

    const-wide v14, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v12, v14

    and-long/2addr v14, v4

    add-long/2addr v12, v14

    .line 1412
    .end local v4    # "x$iv":J
    .local v12, "x$iv":J
    ushr-long v4, v12, v8

    add-long/2addr v4, v12

    const-wide v14, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v4, v14

    .line 1413
    .end local v12    # "x$iv":J
    .restart local v4    # "x$iv":J
    ushr-long v12, v4, v9

    add-long/2addr v4, v12

    .line 1414
    ushr-long v9, v4, v10

    add-long/2addr v4, v9

    .line 1415
    const-wide/16 v9, 0x3f

    and-long v12, v4, v9

    ushr-long v14, v4, v11

    and-long/2addr v9, v14

    add-long/2addr v12, v9

    .line 1418
    .end local v4    # "x$iv":J
    .restart local v12    # "x$iv":J
    const/4 v4, 0x3

    int-to-long v4, v4

    add-long/2addr v4, v12

    int-to-long v9, v8

    div-long/2addr v4, v9

    long-to-int v5, v4

    .line 1420
    .local v5, "width$iv":I
    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v4

    .line 1421
    .local v4, "tail$iv":Lokio/Segment;
    iget-object v7, v4, Lokio/Segment;->data:[B

    .line 1422
    .local v7, "data$iv":[B
    iget v9, v4, Lokio/Segment;->limit:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v6

    .line 1423
    .local v9, "pos$iv":I
    iget v6, v4, Lokio/Segment;->limit:I

    .line 1424
    .local v6, "start$iv":I
    :goto_0
    if-lt v9, v6, :cond_1

    .line 1425
    invoke-static {}, Lokio/internal/-Buffer;->getHEX_DIGIT_BYTES()[B

    move-result-object v10

    const-wide/16 v14, 0xf

    and-long/2addr v14, v2

    long-to-int v11, v14

    aget-byte v10, v10, v11

    aput-byte v10, v7, v9

    .line 1426
    ushr-long/2addr v2, v8

    .line 1427
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 1429
    :cond_1
    iget v8, v4, Lokio/Segment;->limit:I

    add-int/2addr v8, v5

    iput v8, v4, Lokio/Segment;->limit:I

    .line 1430
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v14, v5

    add-long/2addr v10, v14

    invoke-virtual {v0, v10, v11}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1431
    nop

    .line 462
    .end local v0    # "$this$commonWriteHexadecimalUnsignedLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteHexadecimalUnsignedLong":I
    .end local v2    # "v$iv":J
    .end local v4    # "tail$iv":Lokio/Segment;
    .end local v5    # "width$iv":I
    .end local v6    # "start$iv":I
    .end local v7    # "data$iv":[B
    .end local v9    # "pos$iv":I
    .end local v12    # "x$iv":J
    :goto_1
    return-object v0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeInt(I)Lokio/Buffer;
    .locals 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 451
    move-object v0, p0

    .local v0, "$this$commonWriteInt$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1333
    .local v1, "$i$f$commonWriteInt":I
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1334
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1335
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1336
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1337
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1338
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1339
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1340
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1341
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1342
    nop

    .line 451
    .end local v0    # "$this$commonWriteInt$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteInt":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "i"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 453
    invoke-static {p1}, Lokio/-SegmentedByteString;->reverseBytes(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "i"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLong(J)Lokio/Buffer;
    .locals 11
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 455
    move-object v0, p0

    .local v0, "$this$commonWriteLong$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1343
    .local v1, "$i$f$commonWriteLong":I
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1344
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v4, v3, Lokio/Segment;->data:[B

    .line 1345
    .local v4, "data$iv":[B
    iget v5, v3, Lokio/Segment;->limit:I

    .line 1346
    .local v5, "limit$iv":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .local v6, "limit$iv":I
    const/16 v7, 0x38

    ushr-long v7, p1, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v5

    .line 1347
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x30

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v6

    .line 1348
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x28

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v5

    .line 1349
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x20

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v6

    .line 1350
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    const/16 v7, 0x18

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v5

    .line 1351
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "limit$iv":I
    .restart local v5    # "limit$iv":I
    const/16 v7, 0x10

    ushr-long v7, p1, v7

    and-long/2addr v7, v9

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v4, v6

    .line 1352
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v6    # "limit$iv":I
    ushr-long v7, p1, v2

    and-long/2addr v7, v9

    long-to-int v2, v7

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    .line 1353
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "limit$iv":I
    .local v2, "limit$iv":I
    and-long v7, p1, v9

    long-to-int v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 1354
    iput v2, v3, Lokio/Segment;->limit:I

    .line 1355
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x8

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1356
    nop

    .line 455
    .end local v0    # "$this$commonWriteLong$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteLong":I
    .end local v2    # "limit$iv":I
    .end local v3    # "tail$iv":Lokio/Segment;
    .end local v4    # "data$iv":[B
    return-object v0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .locals 2
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 457
    invoke-static {p1, p2}, Lokio/-SegmentedByteString;->reverseBytes(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .locals 1
    .param p1, "v"    # J

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShort(I)Lokio/Buffer;
    .locals 9
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 447
    move-object v0, p0

    .local v0, "$this$commonWriteShort$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1325
    .local v1, "$i$f$commonWriteShort":I
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v2

    .line 1326
    .local v2, "tail$iv":Lokio/Segment;
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1327
    .local v3, "data$iv":[B
    iget v4, v2, Lokio/Segment;->limit:I

    .line 1328
    .local v4, "limit$iv":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "limit$iv":I
    .local v5, "limit$iv":I
    ushr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    .line 1329
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "limit$iv":I
    .restart local v4    # "limit$iv":I
    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1330
    iput v4, v2, Lokio/Segment;->limit:I

    .line 1331
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1332
    nop

    .line 447
    .end local v0    # "$this$commonWriteShort$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteShort":I
    .end local v2    # "tail$iv":Lokio/Segment;
    .end local v3    # "data$iv":[B
    .end local v4    # "limit$iv":I
    return-object v0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "s"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .locals 1
    .param p1, "s"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 449
    int-to-short v0, p1

    invoke-static {v0}, Lokio/-SegmentedByteString;->reverseBytes(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "s"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "beginIndex",
            "endIndex",
            "charset"
        }
    .end annotation

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 405
    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 407
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0

    .line 408
    :cond_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "substring(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "getBytes(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    .local v0, "data":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    return-object v1

    .line 679
    .end local v0    # "data":[B
    :cond_4
    const/4 v0, 0x0

    .line 406
    .local v0, "$i$a$-require-Buffer$writeString$3":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endIndex > string.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_5
    const/4 v0, 0x0

    .line 405
    .local v0, "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_6
    const/4 v0, 0x0

    .line 404
    .local v0, "$i$a$-require-Buffer$writeString$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-Buffer$writeString$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "string",
            "charset"
        }
    .end annotation

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    nop

    .line 392
    nop

    .line 393
    nop

    .line 394
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 395
    nop

    .line 391
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    .line 396
    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 76
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 76
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public final writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .locals 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    invoke-static/range {v1 .. v6}, Lokio/Buffer;->writeTo$default(Lokio/Buffer;Ljava/io/OutputStream;JILjava/lang/Object;)Lokio/Buffer;

    move-result-object p1

    .line 213
    return-object p1
.end method

.method public final writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "byteCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    move-wide v5, p2

    .line 193
    .local v5, "byteCount":J
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 195
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 196
    .local v0, "s":Lokio/Segment;
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v3, v5, v1

    if-lez v3, :cond_1

    .line 197
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    .local v1, "b$iv":I
    const/4 v2, 0x0

    .line 678
    .local v2, "$i$f$minOf":I
    int-to-long v3, v1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 197
    .end local v1    # "b$iv":I
    .end local v2    # "$i$f$minOf":I
    long-to-int v1, v3

    .line 198
    .local v1, "toCopy":I
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 201
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v7, v1

    sub-long/2addr v2, v7

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 202
    int-to-long v2, v1

    sub-long/2addr v5, v2

    .line 204
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    if-ne v2, v3, :cond_0

    .line 205
    move-object v2, v0

    .line 206
    .local v2, "toRecycle":Lokio/Segment;
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    .line 207
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 208
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .end local v1    # "toCopy":I
    .end local v2    # "toRecycle":Lokio/Segment;
    goto :goto_0

    .line 212
    :cond_1
    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    const-string/jumbo v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .locals 19
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "string",
            "beginIndex",
            "endIndex"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const-string/jumbo v3, "string"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    move-object/from16 v3, p0

    .local v3, "$this$commonWriteUtf8$iv":Lokio/Buffer;
    const/4 v4, 0x0

    .line 1148
    .local v4, "$i$f$commonWriteUtf8":I
    const/4 v6, 0x1

    if-ltz v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_f

    .line 1150
    if-lt v2, v1, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_e

    .line 1151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v2, v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_d

    .line 1154
    move/from16 v7, p2

    .line 1155
    .local v7, "i$iv":I
    :goto_3
    if-ge v7, v2, :cond_c

    .line 1156
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1158
    .local v8, "c$iv":I
    nop

    .line 1159
    const/16 v9, 0x80

    if-ge v8, v9, :cond_4

    .line 1160
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v10

    .line 1161
    .local v10, "tail$iv":Lokio/Segment;
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 1162
    .local v11, "data$iv":[B
    iget v12, v10, Lokio/Segment;->limit:I

    sub-int/2addr v12, v7

    .line 1163
    .local v12, "segmentOffset$iv":I
    rsub-int v13, v12, 0x2000

    invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1166
    .local v13, "runLimit$iv":I
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i$iv":I
    .local v14, "i$iv":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    .line 1170
    .end local v14    # "i$iv":I
    .restart local v7    # "i$iv":I
    :goto_4
    if-ge v7, v13, :cond_3

    .line 1171
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1172
    if-ge v8, v9, :cond_3

    .line 1173
    add-int/lit8 v14, v7, 0x1

    .end local v7    # "i$iv":I
    .restart local v14    # "i$iv":I
    add-int/2addr v7, v12

    int-to-byte v15, v8

    aput-byte v15, v11, v7

    move v7, v14

    goto :goto_4

    .line 1176
    .end local v14    # "i$iv":I
    .restart local v7    # "i$iv":I
    :cond_3
    add-int v9, v7, v12

    iget v14, v10, Lokio/Segment;->limit:I

    sub-int/2addr v9, v14

    .line 1177
    .local v9, "runSize$iv":I
    iget v14, v10, Lokio/Segment;->limit:I

    add-int/2addr v14, v9

    iput v14, v10, Lokio/Segment;->limit:I

    .line 1178
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v14

    const/16 v16, 0x1

    int-to-long v5, v9

    add-long/2addr v14, v5

    invoke-virtual {v3, v14, v15}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    const/4 v6, 0x1

    .end local v9    # "runSize$iv":I
    .end local v10    # "tail$iv":Lokio/Segment;
    .end local v11    # "data$iv":[B
    .end local v12    # "segmentOffset$iv":I
    .end local v13    # "runLimit$iv":I
    goto :goto_3

    .line 1181
    :cond_4
    const/16 v16, 0x1

    const/16 v5, 0x800

    const/4 v6, 0x2

    if-ge v8, v5, :cond_5

    .line 1183
    invoke-virtual {v3, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v5

    .line 1185
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 1186
    iget-object v10, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    add-int/lit8 v11, v11, 0x1

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v11

    .line 1188
    iget v9, v5, Lokio/Segment;->limit:I

    add-int/2addr v9, v6

    iput v9, v5, Lokio/Segment;->limit:I

    .line 1189
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x2

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1190
    nop

    .end local v5    # "tail$iv":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 1193
    :cond_5
    const v5, 0xd800

    const/4 v10, 0x3

    const/16 v11, 0x3f

    if-lt v8, v5, :cond_b

    const v5, 0xdfff

    if-le v8, v5, :cond_6

    const/16 v17, 0x2

    goto/16 :goto_8

    .line 1210
    :cond_6
    add-int/lit8 v5, v7, 0x1

    if-ge v5, v2, :cond_7

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    .line 1211
    .local v5, "low$iv":I
    :goto_5
    const v12, 0xdbff

    if-gt v8, v12, :cond_a

    const v12, 0xdc00

    if-gt v12, v5, :cond_8

    const v12, 0xe000

    if-ge v5, v12, :cond_8

    const/4 v12, 0x1

    goto :goto_6

    :cond_8
    const/4 v12, 0x0

    :goto_6
    if-nez v12, :cond_9

    goto :goto_7

    .line 1218
    :cond_9
    and-int/lit16 v12, v8, 0x3ff

    shl-int/lit8 v12, v12, 0xa

    and-int/lit16 v13, v5, 0x3ff

    or-int/2addr v12, v13

    const/high16 v13, 0x10000

    add-int/2addr v12, v13

    .line 1221
    .local v12, "codePoint$iv":I
    const/4 v13, 0x4

    invoke-virtual {v3, v13}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v14

    .line 1223
    .local v14, "tail$iv":Lokio/Segment;
    iget-object v15, v14, Lokio/Segment;->data:[B

    const/16 v17, 0x2

    iget v6, v14, Lokio/Segment;->limit:I

    const/16 v18, 0x4

    shr-int/lit8 v13, v12, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    aput-byte v13, v15, v6

    .line 1224
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v15, v12, 0xc

    and-int/2addr v15, v11

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v6, v13

    .line 1225
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v13, v14, Lokio/Segment;->limit:I

    add-int/lit8 v13, v13, 0x2

    shr-int/lit8 v15, v12, 0x6

    and-int/2addr v11, v15

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v13

    .line 1226
    iget-object v6, v14, Lokio/Segment;->data:[B

    iget v11, v14, Lokio/Segment;->limit:I

    add-int/2addr v11, v10

    and-int/lit8 v10, v12, 0x3f

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v11

    .line 1228
    iget v6, v14, Lokio/Segment;->limit:I

    add-int/lit8 v6, v6, 0x4

    iput v6, v14, Lokio/Segment;->limit:I

    .line 1229
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v17, 0x4

    add-long v9, v9, v17

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1230
    add-int/lit8 v7, v7, 0x2

    const/4 v6, 0x1

    .end local v12    # "codePoint$iv":I
    .end local v14    # "tail$iv":Lokio/Segment;
    goto/16 :goto_3

    .line 1212
    :cond_a
    :goto_7
    invoke-virtual {v3, v11}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 1213
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1193
    .end local v5    # "low$iv":I
    :cond_b
    const/16 v17, 0x2

    .line 1195
    :goto_8
    invoke-virtual {v3, v10}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v5

    .line 1197
    .local v5, "tail$iv":Lokio/Segment;
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->limit:I

    shr-int/lit8 v13, v8, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    aput-byte v13, v6, v12

    .line 1198
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v12, v5, Lokio/Segment;->limit:I

    add-int/lit8 v12, v12, 0x1

    shr-int/lit8 v13, v8, 0x6

    and-int/2addr v11, v13

    or-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v6, v12

    .line 1199
    iget-object v6, v5, Lokio/Segment;->data:[B

    iget v11, v5, Lokio/Segment;->limit:I

    add-int/lit8 v11, v11, 0x2

    and-int/lit8 v12, v8, 0x3f

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v6, v11

    .line 1201
    iget v6, v5, Lokio/Segment;->limit:I

    add-int/2addr v6, v10

    iput v6, v5, Lokio/Segment;->limit:I

    .line 1202
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v9

    const-wide/16 v11, 0x3

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1203
    nop

    .end local v5    # "tail$iv":Lokio/Segment;
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 1236
    .end local v8    # "c$iv":I
    :cond_c
    nop

    .line 386
    .end local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .end local v4    # "$i$f$commonWriteUtf8":I
    .end local v7    # "i$iv":I
    return-object v3

    .line 1149
    .restart local v3    # "$this$commonWriteUtf8$iv":Lokio/Buffer;
    .restart local v4    # "$i$f$commonWriteUtf8":I
    :cond_d
    const/4 v5, 0x0

    .line 1151
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$3$iv":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endIndex > string.length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$3$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1149
    :cond_e
    const/4 v5, 0x0

    .line 1150
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex < beginIndex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$2$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1149
    :cond_f
    const/4 v5, 0x0

    .line 1148
    .local v5, "$i$a$-require--Buffer$commonWriteUtf8$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "beginIndex < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-require--Buffer$commonWriteUtf8$1$iv":I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .locals 12
    .param p1, "codePoint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codePoint"
        }
    .end annotation

    .line 389
    move-object v0, p0

    .local v0, "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    const/4 v1, 0x0

    .line 1237
    .local v1, "$i$f$commonWriteUtf8CodePoint":I
    nop

    .line 1238
    const/16 v2, 0x80

    if-ge p1, v2, :cond_0

    .line 1240
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1242
    :cond_0
    const/16 v3, 0x800

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ge p1, v3, :cond_1

    .line 1244
    invoke-virtual {v0, v5}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v3

    .line 1246
    .local v3, "tail$iv":Lokio/Segment;
    iget-object v6, v3, Lokio/Segment;->data:[B

    iget v7, v3, Lokio/Segment;->limit:I

    shr-int/lit8 v8, p1, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1247
    iget-object v6, v3, Lokio/Segment;->data:[B

    iget v7, v3, Lokio/Segment;->limit:I

    add-int/2addr v7, v4

    and-int/lit8 v4, p1, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    .line 1249
    iget v2, v3, Lokio/Segment;->limit:I

    add-int/2addr v2, v5

    iput v2, v3, Lokio/Segment;->limit:I

    .line 1250
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .end local v3    # "tail$iv":Lokio/Segment;
    goto/16 :goto_0

    .line 1252
    :cond_1
    const v3, 0xd800

    const/4 v6, 0x0

    if-gt v3, p1, :cond_2

    const v3, 0xe000

    if-ge p1, v3, :cond_2

    const/4 v6, 0x1

    :cond_2
    const/16 v3, 0x3f

    if-eqz v6, :cond_3

    .line 1254
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_0

    .line 1256
    :cond_3
    const/high16 v6, 0x10000

    const/4 v7, 0x3

    if-ge p1, v6, :cond_4

    .line 1258
    invoke-virtual {v0, v7}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v6

    .line 1260
    .local v6, "tail$iv":Lokio/Segment;
    iget-object v8, v6, Lokio/Segment;->data:[B

    iget v9, v6, Lokio/Segment;->limit:I

    shr-int/lit8 v10, p1, 0xc

    or-int/lit16 v10, v10, 0xe0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 1261
    iget-object v8, v6, Lokio/Segment;->data:[B

    iget v9, v6, Lokio/Segment;->limit:I

    add-int/2addr v9, v4

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v8, v9

    .line 1262
    iget-object v3, v6, Lokio/Segment;->data:[B

    iget v4, v6, Lokio/Segment;->limit:I

    add-int/2addr v4, v5

    and-int/lit8 v5, p1, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1264
    iget v2, v6, Lokio/Segment;->limit:I

    add-int/2addr v2, v7

    iput v2, v6, Lokio/Segment;->limit:I

    .line 1265
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .end local v6    # "tail$iv":Lokio/Segment;
    goto :goto_0

    .line 1267
    :cond_4
    const v6, 0x10ffff

    if-gt p1, v6, :cond_5

    .line 1269
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lokio/Buffer;->writableSegment$third_party_java_src_okio_okio_jvm(I)Lokio/Segment;

    move-result-object v8

    .line 1271
    .local v8, "tail$iv":Lokio/Segment;
    iget-object v9, v8, Lokio/Segment;->data:[B

    iget v10, v8, Lokio/Segment;->limit:I

    shr-int/lit8 v11, p1, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 1272
    iget-object v9, v8, Lokio/Segment;->data:[B

    iget v10, v8, Lokio/Segment;->limit:I

    add-int/2addr v10, v4

    shr-int/lit8 v4, p1, 0xc

    and-int/2addr v4, v3

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v9, v10

    .line 1273
    iget-object v4, v8, Lokio/Segment;->data:[B

    iget v9, v8, Lokio/Segment;->limit:I

    add-int/2addr v9, v5

    shr-int/lit8 v5, p1, 0x6

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v4, v9

    .line 1274
    iget-object v3, v8, Lokio/Segment;->data:[B

    iget v4, v8, Lokio/Segment;->limit:I

    add-int/2addr v4, v7

    and-int/lit8 v5, p1, 0x3f

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 1276
    iget v2, v8, Lokio/Segment;->limit:I

    add-int/2addr v2, v6

    iput v2, v8, Lokio/Segment;->limit:I

    .line 1277
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lokio/Buffer;->setSize$third_party_java_src_okio_okio_jvm(J)V

    .line 1284
    .end local v8    # "tail$iv":Lokio/Segment;
    :goto_0
    nop

    .line 389
    .end local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .end local v1    # "$i$f$commonWriteUtf8CodePoint":I
    return-object v0

    .line 1280
    .restart local v0    # "$this$commonWriteUtf8CodePoint$iv":Lokio/Buffer;
    .restart local v1    # "$i$f$commonWriteUtf8CodePoint":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lokio/-SegmentedByteString;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected code point: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .locals 1
    .param p1, "codePoint"    # I

    .line 76
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method
