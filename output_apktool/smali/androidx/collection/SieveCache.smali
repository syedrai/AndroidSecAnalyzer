.class public final Landroidx/collection/SieveCache;
.super Ljava/lang/Object;
.source "SieveCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSieveCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCache\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 SieveCache.kt\nandroidx/collection/SieveCacheKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 8 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 9 ObjectList.kt\nandroidx/collection/ObjectList\n*L\n1#1,1148:1\n684#1,2:1160\n633#1:1162\n635#1,2:1164\n638#1,6:1167\n251#1,2:1173\n251#1,2:1175\n251#1,2:1177\n251#1,2:1180\n251#1,2:1200\n548#1,4:1209\n1025#1,6:1213\n1035#1,3:1220\n1038#1,2:1224\n251#1,2:1226\n1041#1,6:1228\n552#1:1234\n251#1,2:1235\n1025#1,6:1237\n1035#1,3:1244\n1038#1,9:1248\n1025#1,6:1285\n1035#1,3:1292\n1038#1,9:1296\n1025#1,6:1305\n1035#1,3:1312\n1038#1,9:1316\n1025#1,6:1325\n1035#1,3:1332\n1038#1,9:1336\n548#1,4:1345\n1025#1,6:1349\n1035#1,3:1356\n1038#1,9:1360\n552#1:1369\n548#1,4:1370\n1025#1,6:1374\n1035#1,3:1381\n1038#1,9:1385\n552#1:1394\n548#1,4:1395\n1025#1,6:1399\n1035#1,3:1406\n1038#1,9:1410\n552#1:1419\n1025#1,6:1420\n1035#1,3:1427\n1038#1,9:1431\n660#1,3:1458\n663#1:1462\n665#1,2:1464\n668#1,5:1467\n674#1,8:1473\n548#1,4:1634\n1025#1,6:1638\n1035#1,3:1645\n1038#1,9:1649\n552#1:1658\n548#1,4:1659\n1025#1,6:1663\n1035#1,3:1670\n1038#1,9:1674\n552#1:1683\n60#2,4:1149\n1#3:1153\n1254#4,6:1154\n1399#4:1193\n1270#4:1197\n1399#4:1219\n1270#4:1223\n1399#4:1243\n1270#4:1247\n1399#4:1265\n1270#4:1269\n1399#4:1291\n1270#4:1295\n1399#4:1311\n1270#4:1315\n1399#4:1331\n1270#4:1335\n1399#4:1355\n1270#4:1359\n1399#4:1380\n1270#4:1384\n1399#4:1405\n1270#4:1409\n1399#4:1426\n1270#4:1430\n1230#4:1446\n1254#4,6:1447\n1242#4:1453\n1241#4,4:1454\n1165#4,3:1485\n1179#4:1488\n1175#4:1489\n1372#4,3:1490\n1386#4,3:1493\n1312#4:1496\n1303#4:1497\n1297#4:1498\n1309#4:1499\n1393#4:1500\n1165#4,3:1501\n1175#4:1504\n1179#4:1505\n1372#4,3:1506\n1386#4,3:1509\n1312#4:1512\n1303#4:1513\n1297#4:1514\n1309#4:1515\n1393#4:1516\n1265#4:1517\n1220#4:1518\n1262#4:1519\n1220#4:1520\n1230#4:1521\n1254#4,6:1522\n1242#4:1528\n1241#4,4:1529\n1372#4,3:1533\n1399#4:1536\n1297#4:1537\n1144#4,14:1538\n1220#4:1552\n1165#4,3:1553\n1175#4:1556\n1179#4:1557\n1254#4,6:1558\n1220#4:1565\n1179#4:1566\n1254#4,6:1567\n1254#4,6:1573\n1179#4:1584\n1254#4,6:1585\n1268#4:1596\n1220#4:1597\n1165#4,3:1598\n1175#4:1601\n1179#4:1602\n1230#4:1603\n1254#4,6:1604\n1242#4:1610\n1241#4,4:1611\n1399#4:1632\n1270#4:1633\n1399#4:1644\n1270#4:1648\n1399#4:1669\n1270#4:1673\n1111#5:1163\n1114#5:1166\n1130#5:1440\n1123#5:1441\n1119#5:1442\n1123#5:1443\n1111#5:1444\n1114#5:1445\n1123#5:1461\n1127#5:1463\n1117#5:1466\n1114#5:1472\n1123#5:1481\n1127#5:1482\n1117#5:1483\n1114#5:1484\n1132#5:1564\n1144#5:1579\n1138#5:1580\n1141#5:1581\n1132#5:1582\n1132#5:1583\n1144#5:1591\n1138#5:1592\n1135#5:1593\n1132#5:1594\n1132#5:1595\n1123#5:1615\n1127#5:1616\n1096#5,2:1617\n1147#5:1619\n1098#5,2:1620\n1147#5:1622\n1147#5:1623\n1147#5:1624\n1147#5:1625\n1123#5:1626\n1127#5:1627\n1103#5,4:1628\n216#6:1179\n217#6:1182\n357#7,4:1183\n329#7,6:1187\n339#7,3:1194\n342#7,2:1198\n345#7,6:1202\n361#7:1208\n232#8,2:1257\n201#8,6:1259\n211#8,3:1266\n214#8,9:1270\n234#8:1279\n288#9,5:1280\n*S KotlinDebug\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCache\n*L\n229#1:1160,2\n288#1:1162\n288#1:1164,2\n288#1:1167,6\n300#1:1173,2\n311#1:1175,2\n322#1:1177,2\n332#1:1180,2\n341#1:1200,2\n350#1:1209,4\n350#1:1213,6\n350#1:1220,3\n350#1:1224,2\n350#1:1226,2\n350#1:1228,6\n350#1:1234\n358#1:1235,2\n447#1:1237,6\n447#1:1244,3\n447#1:1248,9\n551#1:1285,6\n551#1:1292,3\n551#1:1296,9\n563#1:1305,6\n563#1:1312,3\n563#1:1316,9\n575#1:1325,6\n575#1:1332,3\n575#1:1336,9\n580#1:1345,4\n580#1:1349,6\n580#1:1356,3\n580#1:1360,9\n580#1:1369\n586#1:1370,4\n586#1:1374,6\n586#1:1381,3\n586#1:1385,9\n586#1:1394\n596#1:1395,4\n596#1:1399,6\n596#1:1406,3\n596#1:1410,9\n596#1:1419\n609#1:1420,6\n609#1:1427,3\n609#1:1431,9\n654#1:1458,3\n654#1:1462\n654#1:1464,2\n654#1:1467,5\n654#1:1473,8\n1055#1:1634,4\n1055#1:1638,6\n1055#1:1645,3\n1055#1:1649,9\n1055#1:1658\n1081#1:1659,4\n1081#1:1663,6\n1081#1:1670,3\n1081#1:1674,9\n1081#1:1683\n131#1:1149,4\n211#1:1154,6\n341#1:1193\n341#1:1197\n350#1:1219\n350#1:1223\n447#1:1243\n447#1:1247\n486#1:1265\n486#1:1269\n551#1:1291\n551#1:1295\n563#1:1311\n563#1:1315\n575#1:1331\n575#1:1335\n580#1:1355\n580#1:1359\n586#1:1380\n586#1:1384\n596#1:1405\n596#1:1409\n609#1:1426\n609#1:1430\n648#1:1446\n648#1:1447,6\n648#1:1453\n648#1:1454,4\n688#1:1485,3\n689#1:1488\n692#1:1489\n696#1:1490,3\n697#1:1493,3\n698#1:1496\n699#1:1497\n699#1:1498\n703#1:1499\n706#1:1500\n718#1:1501,3\n719#1:1504\n720#1:1505\n727#1:1506,3\n728#1:1509,3\n729#1:1512\n730#1:1513\n730#1:1514\n734#1:1515\n737#1:1516\n746#1:1517\n746#1:1518\n752#1:1519\n752#1:1520\n753#1:1521\n753#1:1522,6\n753#1:1528\n753#1:1529,4\n764#1:1533,3\n765#1:1536\n767#1:1537\n841#1:1538,14\n847#1:1552\n861#1:1553,3\n862#1:1556\n873#1:1557\n874#1:1558,6\n888#1:1565\n891#1:1566\n892#1:1567,6\n893#1:1573,6\n915#1:1584\n916#1:1585,6\n980#1:1596\n980#1:1597\n982#1:1598,3\n983#1:1601\n985#1:1602\n985#1:1603\n985#1:1604,6\n985#1:1610\n985#1:1611,4\n1030#1:1632\n1037#1:1633\n1055#1:1644\n1055#1:1648\n1081#1:1669\n1081#1:1673\n288#1:1163\n288#1:1166\n619#1:1440\n621#1:1441\n622#1:1442\n626#1:1443\n633#1:1444\n636#1:1445\n654#1:1461\n654#1:1463\n654#1:1466\n654#1:1472\n662#1:1481\n663#1:1482\n666#1:1483\n672#1:1484\n878#1:1564\n905#1:1579\n907#1:1580\n908#1:1581\n910#1:1582\n912#1:1583\n931#1:1591\n933#1:1592\n934#1:1593\n936#1:1594\n940#1:1595\n1001#1:1615\n1002#1:1616\n1003#1:1617,2\n1003#1:1619\n1003#1:1620,2\n1003#1:1622\n1005#1:1623\n1006#1:1624\n1007#1:1625\n1014#1:1626\n1015#1:1627\n1016#1:1628,4\n332#1:1179\n332#1:1182\n341#1:1183,4\n341#1:1187,6\n341#1:1194,3\n341#1:1198,2\n341#1:1202,6\n341#1:1208\n486#1:1257,2\n486#1:1259,6\n486#1:1266,3\n486#1:1270,9\n486#1:1279\n491#1:1280,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008!\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\u00e2\u0001\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0005\u00128\u0008\u0002\u0010\u0007\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00050\u0008\u0012%\u0008\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u000e\u0012d\u0008\u0002\u0010\u000f\u001a^\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0011\u0012\u0015\u0012\u0013\u0018\u00018\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00150\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0006\u00104\u001a\u00020\u0013J\u0006\u00105\u001a\u00020\u0013J\u0006\u00106\u001a\u00020\u0013J\u0006\u00107\u001a\u00020\u0013J\u0010\u00108\u001a\u00020\u00152\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u00109\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0005H\u0002J\u0008\u0010:\u001a\u00020\u0015H\u0002J\u0018\u0010;\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010<J\u001e\u0010=\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0001H\u0086\n\u00a2\u0006\u0002\u0010>J\u001d\u0010?\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010@J\'\u0010A\u001a\u00020\u00152\u001a\u0010B\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0\u001d\u00a2\u0006\u0002\u0010DJ \u0010A\u001a\u00020\u00152\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0EJ \u0010A\u001a\u00020\u00152\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0FJ\u001a\u0010A\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010HJ\u001a\u0010A\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010IJ\u001a\u0010A\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000J\u001d\u0010J\u001a\u00020\u00152\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010CH\u0086\nJ*\u0010J\u001a\u00020\u00152\u001a\u0010B\u001a\u0016\u0012\u0012\u0008\u0001\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0\u001dH\u0086\n\u00a2\u0006\u0002\u0010DJ#\u0010J\u001a\u00020\u00152\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0EH\u0086\nJ#\u0010J\u001a\u00020\u00152\u0018\u0010B\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010C0FH\u0086\nJ\u001d\u0010J\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010HH\u0086\nJ\u001d\u0010J\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010IH\u0086\nJ\u001d\u0010J\u001a\u00020\u00152\u0012\u0010G\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H\u0086\nJ\u0015\u0010L\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u000b\u001a\u00028\u0000\u00a2\u0006\u0002\u0010<J\u001b\u0010L\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010MJ \u0010N\u001a\u00020\u00152\u0018\u0010O\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00130\u0008J\u0016\u0010P\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\n\u00a2\u0006\u0002\u0010QJ\u001e\u0010P\u001a\u00020\u00152\u000e\u0010\u001c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u001dH\u0086\n\u00a2\u0006\u0002\u0010RJ\u0017\u0010P\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000EH\u0086\nJ\u0017\u0010P\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000FH\u0086\nJ\u0017\u0010P\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000SH\u0086\nJ\u0017\u0010P\u001a\u00020\u00152\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000TH\u0086\nJ\u0006\u0010U\u001a\u00020\u0015J\u0010\u0010V\u001a\u00020\u00152\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005J\u000e\u0010W\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005JD\u0010X\u001a\u00020\u001526\u0010Y\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00150\u0008H\u0086\u0008\u00f8\u0001\u0000J/\u0010Z\u001a\u00020\u00152!\u0010Y\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00150\u000eH\u0086\u0008\u00f8\u0001\u0000J/\u0010[\u001a\u00020\u00152!\u0010Y\u001a\u001d\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00150\u000eH\u0086\u0008\u00f8\u0001\u0000J&\u0010\\\u001a\u00020\u00132\u0018\u0010O\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00130\u0008H\u0086\u0008\u00f8\u0001\u0000J&\u00104\u001a\u00020\u00132\u0018\u0010O\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00130\u0008H\u0086\u0008\u00f8\u0001\u0000J\u0006\u0010/\u001a\u00020\u0005J&\u0010/\u001a\u00020\u00052\u0018\u0010O\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00130\u0008H\u0086\u0008\u00f8\u0001\u0000J\u0016\u0010]\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00028\u0000H\u0086\u0002\u00a2\u0006\u0002\u0010^J\u0013\u0010_\u001a\u00020\u00132\u0006\u0010\u000b\u001a\u00028\u0000\u00a2\u0006\u0002\u0010^J\u0013\u0010`\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00028\u0001\u00a2\u0006\u0002\u0010^J\u0008\u0010a\u001a\u00020\u0005H\u0002J\u0011\u0010b\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0005H\u0082\u0008J\u0017\u0010d\u001a\u0004\u0018\u00018\u00012\u0006\u0010c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0002\u0010eJ\u0011\u0010f\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0005H\u0082\u0008J\u0011\u0010g\u001a\u00020\u00152\u0006\u0010c\u001a\u00020\u0005H\u0082\u0008J\u0015\u0010h\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010iJ\u0015\u0010j\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010iJ\u0010\u0010k\u001a\u00020\u00052\u0006\u0010l\u001a\u00020\u0005H\u0002J\r\u0010m\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008nJ\r\u0010o\u001a\u00020\u0015H\u0000\u00a2\u0006\u0002\u0008pJ\u0015\u0010q\u001a\u00020\u00152\u0006\u0010r\u001a\u00020\u0005H\u0000\u00a2\u0006\u0002\u0008sJ\u0010\u0010t\u001a\u00020\u00152\u0006\u0010u\u001a\u00020\u0019H\u0002J\u0010\u0010t\u001a\u00020\u00152\u0006\u0010u\u001a\u00020vH\u0002J/\u0010w\u001a\u00020\u00152!\u0010Y\u001a\u001d\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(c\u0012\u0004\u0012\u00020\u00150\u000eH\u0081\u0008\u00f8\u0001\u0000J\u0008\u0010x\u001a\u00020\u0005H\u0016J\u0013\u0010y\u001a\u00020\u00132\u0008\u0010z\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010{\u001a\u00020|H\u0016R>\u0010\u0007\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00050\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\r\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000Rj\u0010\u000f\u001a^\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0011\u0012\u0015\u0012\u0013\u0018\u00018\u0001\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\t\u0012\u0008\u0008\n\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00150\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0018\u001a\u00020\u00198\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001d8\u0000@\u0000X\u0081\u000e\u00a2\u0006\n\n\u0002\u0010\u001f\u0012\u0004\u0008\u001e\u0010\u001bR\"\u0010 \u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001d8\u0000@\u0000X\u0081\u000e\u00a2\u0006\n\n\u0002\u0010\u001f\u0012\u0004\u0008!\u0010\u001bR\u000e\u0010\"\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010+\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010-R\u001a\u0010/\u001a\u00020\u00058FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00080\u0010\u001b\u001a\u0004\u00081\u0010-R\u0011\u00102\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010-\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006}"
    }
    d2 = {
        "Landroidx/collection/SieveCache;",
        "K",
        "",
        "V",
        "maxSize",
        "",
        "initialCapacity",
        "sizeOf",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "key",
        "value",
        "createValueFromKey",
        "Lkotlin/Function1;",
        "onEntryRemoved",
        "Lkotlin/Function4;",
        "oldValue",
        "newValue",
        "",
        "evicted",
        "",
        "<init>",
        "(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V",
        "metadata",
        "",
        "getMetadata$annotations",
        "()V",
        "keys",
        "",
        "getKeys$annotations",
        "[Ljava/lang/Object;",
        "values",
        "getValues$annotations",
        "nodes",
        "_capacity",
        "growthLimit",
        "_count",
        "_maxSize",
        "_size",
        "head",
        "tail",
        "hand",
        "size",
        "getSize",
        "()I",
        "getMaxSize",
        "count",
        "getCount$annotations",
        "getCount",
        "capacity",
        "getCapacity",
        "any",
        "none",
        "isEmpty",
        "isNotEmpty",
        "initializeStorage",
        "initializeMetadata",
        "initializeGrowth",
        "get",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "set",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "put",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "putAll",
        "pairs",
        "Lkotlin/Pair;",
        "([Lkotlin/Pair;)V",
        "",
        "Lkotlin/sequences/Sequence;",
        "from",
        "",
        "Landroidx/collection/ScatterMap;",
        "plusAssign",
        "pair",
        "remove",
        "(Ljava/lang/Object;Ljava/lang/Object;)Z",
        "removeIf",
        "predicate",
        "minusAssign",
        "(Ljava/lang/Object;)V",
        "([Ljava/lang/Object;)V",
        "Landroidx/collection/ScatterSet;",
        "Landroidx/collection/ObjectList;",
        "evictAll",
        "resize",
        "trimToSize",
        "forEach",
        "block",
        "forEachKey",
        "forEachValue",
        "all",
        "contains",
        "(Ljava/lang/Object;)Z",
        "containsKey",
        "containsValue",
        "findEvictionCandidate",
        "moveNodeToHead",
        "index",
        "removeValueAt",
        "(I)Ljava/lang/Object;",
        "removeNode",
        "markNodeVisited",
        "findKeyIndex",
        "(Ljava/lang/Object;)I",
        "findInsertIndex",
        "findFirstAvailableSlot",
        "hash1",
        "adjustStorage",
        "adjustStorage$collection",
        "dropDeletes",
        "dropDeletes$collection",
        "resizeStorage",
        "newCapacity",
        "resizeStorage$collection",
        "fixupNodes",
        "mapping",
        "",
        "forEachIndexed",
        "hashCode",
        "equals",
        "other",
        "toString",
        "",
        "collection"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _capacity:I

.field private _count:I

.field private _maxSize:I

.field private _size:I

.field private final createValueFromKey:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private growthLimit:I

.field private hand:I

.field private head:I

.field public keys:[Ljava/lang/Object;

.field public metadata:[J

.field private nodes:[J

.field private final onEntryRemoved:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "TK;TV;TV;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeOf:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TK;TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tail:I

.field public values:[Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$9S5Xsoz6JD4up1dj7rWQ7KPjEsM(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/collection/SieveCache;->_init_$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tvveupQ1RZCm97sDbynbWhhPJik(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/collection/SieveCache;->_init_$lambda$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V
    .locals 3
    .param p1, "maxSize"    # I
    .param p2, "initialCapacity"    # I
    .param p3, "sizeOf"    # Lkotlin/jvm/functions/Function2;
    .param p4, "createValueFromKey"    # Lkotlin/jvm/functions/Function1;
    .param p5, "onEntryRemoved"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;+TV;>;",
            "Lkotlin/jvm/functions/Function4<",
            "-TK;-TV;-TV;-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "sizeOf"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createValueFromKey"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onEntryRemoved"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p3, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    .line 109
    iput-object p4, p0, Landroidx/collection/SieveCache;->createValueFromKey:Lkotlin/jvm/functions/Function1;

    .line 110
    iput-object p5, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    .line 114
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    iput-object v0, p0, Landroidx/collection/SieveCache;->metadata:[J

    .line 115
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 116
    sget-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 117
    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object v0

    iput-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 126
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/collection/SieveCache;->head:I

    .line 127
    iput v0, p0, Landroidx/collection/SieveCache;->tail:I

    .line 128
    iput v0, p0, Landroidx/collection/SieveCache;->hand:I

    .line 130
    nop

    .line 131
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "value$iv":Z
    :goto_0
    const/4 v1, 0x0

    .line 1149
    .local v1, "$i$f$requirePrecondition":I
    if-nez v0, :cond_1

    .line 1150
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-requirePrecondition-SieveCache$4":I
    nop

    .line 1150
    .end local v2    # "$i$a$-requirePrecondition-SieveCache$4":I
    const-string v2, "maxSize must be > 0"

    invoke-static {v2}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1152
    :cond_1
    nop

    .line 132
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$requirePrecondition":I
    iput p1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    .line 133
    invoke-static {p2}, Landroidx/collection/ScatterMapKt;->unloadedCapacity(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->initializeStorage(I)V

    .line 134
    nop

    .line 105
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    .line 105
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 107
    const/4 p2, 0x6

    const/4 v2, 0x6

    goto :goto_0

    .line 105
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 108
    new-instance p3, Landroidx/collection/SieveCache$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Landroidx/collection/SieveCache$$ExternalSyntheticLambda0;-><init>()V

    move-object v3, p3

    goto :goto_1

    .line 105
    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 109
    sget-object p2, Landroidx/collection/SieveCache$2;->INSTANCE:Landroidx/collection/SieveCache$2;

    move-object p4, p2

    check-cast p4, Lkotlin/jvm/functions/Function1;

    move-object v4, p4

    goto :goto_2

    .line 105
    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 111
    new-instance p5, Landroidx/collection/SieveCache$$ExternalSyntheticLambda1;

    invoke-direct {p5}, Landroidx/collection/SieveCache$$ExternalSyntheticLambda1;-><init>()V

    move-object v5, p5

    goto :goto_3

    .line 105
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/collection/SieveCache;-><init>(IILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    .line 113
    return-void
.end method

.method private static final _init_$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const/4 p0, 0x1

    return p0
.end method

.method private static final _init_$lambda$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "<unused var>"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final findEvictionCandidate()I
    .locals 13

    .line 616
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 618
    .local v0, "nodes":[J
    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    .line 619
    .local v1, "candidate":I
    :goto_0
    const-wide/32 v3, 0x7fffffff

    const/16 v5, 0x1f

    if-eq v1, v2, :cond_2

    aget-wide v6, v0, v1

    .local v6, "$this$visited$iv":J
    const/4 v8, 0x0

    .line 1440
    .local v8, "$i$f$getVisited":I
    const/16 v9, 0x3e

    shr-long v9, v6, v9

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    long-to-int v6, v9

    .line 619
    .end local v6    # "$this$visited$iv":J
    .end local v8    # "$i$f$getVisited":I
    if-eqz v6, :cond_2

    .line 620
    aget-wide v6, v0, v1

    .line 621
    .local v6, "node":J
    move-wide v8, v6

    .local v8, "$this$previousNode$iv":J
    const/4 v10, 0x0

    .line 1441
    .local v10, "$i$f$getPreviousNode":I
    shr-long v11, v8, v5

    and-long/2addr v3, v11

    long-to-int v4, v3

    .line 621
    .end local v8    # "$this$previousNode$iv":J
    .end local v10    # "$i$f$getPreviousNode":I
    nop

    .line 622
    .local v4, "previousIndex":I
    const/4 v3, 0x0

    .line 1442
    .local v3, "$i$f$clearVisitedBit":I
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v8, v6

    .end local v3    # "$i$f$clearVisitedBit":I
    aput-wide v8, v0, v1

    .line 623
    if-eq v4, v2, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget v3, p0, Landroidx/collection/SieveCache;->tail:I

    :goto_1
    move v1, v3

    .end local v4    # "previousIndex":I
    .end local v6    # "node":J
    goto :goto_0

    .line 626
    :cond_2
    aget-wide v6, v0, v1

    .local v6, "$this$previousNode$iv":J
    const/4 v8, 0x0

    .line 1443
    .local v8, "$i$f$getPreviousNode":I
    shr-long v9, v6, v5

    and-long/2addr v3, v9

    long-to-int v4, v3

    .line 626
    .end local v6    # "$this$previousNode$iv":J
    .end local v8    # "$i$f$getPreviousNode":I
    nop

    .line 627
    .restart local v4    # "previousIndex":I
    if-eq v4, v2, :cond_3

    move v2, v4

    :cond_3
    iput v2, p0, Landroidx/collection/SieveCache;->hand:I

    .line 629
    return v1
.end method

.method private final findFirstAvailableSlot(I)I
    .locals 14
    .param p1, "hash1"    # I

    .line 759
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    .line 760
    .local v0, "probeMask":I
    and-int v1, p1, v0

    .line 761
    .local v1, "probeOffset":I
    const/4 v2, 0x0

    .line 763
    .local v2, "probeIndex":I
    :goto_0
    nop

    .line 764
    iget-object v3, p0, Landroidx/collection/SieveCache;->metadata:[J

    .local v3, "metadata$iv":[J
    const/4 v4, 0x0

    .line 1533
    .local v4, "$i$f$group":I
    shr-int/lit8 v5, v1, 0x3

    .line 1534
    .local v5, "i$iv":I
    and-int/lit8 v6, v1, 0x7

    shl-int/lit8 v6, v6, 0x3

    .line 1535
    .local v6, "b$iv":I
    aget-wide v7, v3, v5

    ushr-long/2addr v7, v6

    add-int/lit8 v9, v5, 0x1

    aget-wide v9, v3, v9

    rsub-int/lit8 v11, v6, 0x40

    shl-long/2addr v9, v11

    int-to-long v11, v6

    neg-long v11, v11

    const/16 v13, 0x3f

    shr-long/2addr v11, v13

    and-long/2addr v9, v11

    or-long v3, v7, v9

    .line 764
    .end local v3    # "metadata$iv":[J
    .end local v4    # "$i$f$group":I
    .end local v5    # "i$iv":I
    .end local v6    # "b$iv":I
    nop

    .line 765
    .local v3, "g":J
    move-wide v5, v3

    .local v5, "$this$maskEmptyOrDeleted$iv":J
    const/4 v7, 0x0

    .line 1536
    .local v7, "$i$f$maskEmptyOrDeleted":I
    not-long v8, v5

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v8, v10

    .line 765
    .end local v5    # "$this$maskEmptyOrDeleted$iv":J
    .end local v7    # "$i$f$maskEmptyOrDeleted":I
    nop

    .line 766
    .local v5, "m":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 767
    move-wide v7, v5

    .local v7, "$this$lowestBitSet$iv":J
    const/4 v9, 0x0

    .line 1537
    .local v9, "$i$f$lowestBitSet":I
    invoke-static {v7, v8}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    shr-int/lit8 v7, v10, 0x3

    .line 767
    .end local v7    # "$this$lowestBitSet$iv":J
    .end local v9    # "$i$f$lowestBitSet":I
    add-int/2addr v7, v1

    and-int/2addr v7, v0

    return v7

    .line 769
    :cond_0
    add-int/lit8 v2, v2, 0x8

    .line 770
    add-int v7, v1, v2

    and-int v1, v7, v0

    .end local v3    # "g":J
    .end local v5    # "m":J
    goto :goto_0
.end method

.method private final findInsertIndex(Ljava/lang/Object;)I
    .locals 24
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 718
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1501
    .local v2, "$i$f$hash":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const v5, -0x3361d2af    # -8.2930312E7f

    mul-int v4, v4, v5

    .line 1503
    .local v4, "hash$iv":I
    shl-int/lit8 v5, v4, 0x10

    xor-int v2, v4, v5

    .line 718
    .end local v2    # "$i$f$hash":I
    .end local v4    # "hash$iv":I
    nop

    .line 719
    .local v2, "hash":I
    const/4 v4, 0x0

    .line 1504
    .local v4, "$i$f$h1":I
    ushr-int/lit8 v4, v2, 0x7

    .line 719
    .end local v4    # "$i$f$h1":I
    nop

    .line 720
    .local v4, "hash1":I
    const/4 v5, 0x0

    .line 1505
    .local v5, "$i$f$h2":I
    and-int/lit8 v5, v2, 0x7f

    .line 720
    .end local v5    # "$i$f$h2":I
    nop

    .line 722
    .local v5, "hash2":I
    iget v6, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 723
    .local v6, "probeMask":I
    and-int v7, v4, v6

    .line 724
    .local v7, "probeOffset":I
    const/4 v8, 0x0

    .line 726
    .local v8, "probeIndex":I
    :goto_1
    nop

    .line 727
    iget-object v9, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v9, "metadata$iv":[J
    const/4 v10, 0x0

    .line 1506
    .local v10, "$i$f$group":I
    shr-int/lit8 v11, v7, 0x3

    .line 1507
    .local v11, "i$iv":I
    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    .line 1508
    .local v12, "b$iv":I
    aget-wide v13, v9, v11

    ushr-long/2addr v13, v12

    add-int/lit8 v15, v11, 0x1

    aget-wide v15, v9, v15

    rsub-int/lit8 v17, v12, 0x40

    shl-long v15, v15, v17

    move/from16 v18, v4

    .end local v4    # "hash1":I
    .local v18, "hash1":I
    int-to-long v3, v12

    neg-long v3, v3

    const/16 v19, 0x3f

    shr-long v3, v3, v19

    and-long/2addr v3, v15

    or-long/2addr v3, v13

    .line 727
    .end local v9    # "metadata$iv":[J
    .end local v10    # "$i$f$group":I
    .end local v11    # "i$iv":I
    .end local v12    # "b$iv":I
    nop

    .line 728
    .local v3, "g":J
    move-wide v9, v3

    .local v9, "$this$match$iv":J
    const/4 v11, 0x0

    .line 1509
    .local v11, "$i$f$match":I
    int-to-long v12, v5

    const-wide v14, 0x101010101010101L

    mul-long v12, v12, v14

    xor-long/2addr v12, v9

    .line 1511
    .local v12, "x$iv":J
    sub-long v14, v12, v14

    move/from16 v16, v2

    move-wide/from16 v19, v3

    .end local v2    # "hash":I
    .end local v3    # "g":J
    .local v16, "hash":I
    .local v19, "g":J
    not-long v2, v12

    and-long/2addr v2, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v14

    .line 728
    .end local v9    # "$this$match$iv":J
    .end local v11    # "$i$f$match":I
    .end local v12    # "x$iv":J
    nop

    .line 729
    .local v2, "m":J
    :goto_2
    move-wide v9, v2

    .local v9, "$this$hasNext$iv":J
    const/4 v4, 0x0

    .line 1512
    .local v4, "$i$f$hasNext":I
    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    cmp-long v21, v9, v11

    if-eqz v21, :cond_1

    const/4 v4, 0x1

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    .end local v4    # "$i$f$hasNext":I
    .end local v9    # "$this$hasNext$iv":J
    :goto_3
    if-eqz v4, :cond_3

    .line 730
    move-wide v9, v2

    .local v9, "$this$get$iv":J
    const/4 v4, 0x0

    .line 1513
    .local v4, "$i$f$get":I
    move-wide v11, v9

    .local v11, "$this$lowestBitSet$iv$iv":J
    const/4 v13, 0x0

    .line 1514
    .local v13, "$i$f$lowestBitSet":I
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v21

    shr-int/lit8 v11, v21, 0x3

    .line 1513
    .end local v11    # "$this$lowestBitSet$iv$iv":J
    .end local v13    # "$i$f$lowestBitSet":I
    nop

    .line 730
    .end local v4    # "$i$f$get":I
    .end local v9    # "$this$get$iv":J
    add-int/2addr v11, v7

    and-int v4, v11, v6

    .line 731
    .local v4, "index":I
    iget-object v9, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v9, v9, v4

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 732
    return v4

    .line 734
    :cond_2
    move-wide v9, v2

    .local v9, "$this$next$iv":J
    const/4 v11, 0x0

    .line 1515
    .local v11, "$i$f$next":I
    const-wide/16 v12, 0x1

    sub-long v12, v9, v12

    and-long/2addr v9, v12

    .line 734
    .end local v9    # "$this$next$iv":J
    .end local v11    # "$i$f$next":I
    move-wide v2, v9

    .end local v4    # "index":I
    goto :goto_2

    .line 737
    :cond_3
    move-wide/from16 v9, v19

    .local v9, "$this$maskEmpty$iv":J
    const/4 v4, 0x0

    .line 1516
    .local v4, "$i$f$maskEmpty":I
    move-wide/from16 v21, v11

    not-long v11, v9

    const/16 v23, 0x6

    shl-long v11, v11, v23

    and-long/2addr v11, v9

    and-long v9, v11, v14

    .line 737
    .end local v4    # "$i$f$maskEmpty":I
    .end local v9    # "$this$maskEmpty$iv":J
    cmp-long v4, v9, v21

    if-eqz v4, :cond_7

    .line 738
    nop

    .line 745
    .end local v2    # "m":J
    .end local v19    # "g":J
    move/from16 v4, v18

    .end local v18    # "hash1":I
    .local v4, "hash1":I
    invoke-direct {v0, v4}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v2

    .line 746
    .local v2, "index":I
    iget v3, v0, Landroidx/collection/SieveCache;->growthLimit:I

    const-wide/16 v9, 0xff

    if-nez v3, :cond_5

    iget-object v3, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v3, "metadata$iv":[J
    const/4 v11, 0x0

    .line 1517
    .local v11, "$i$f$isDeleted":I
    const/4 v12, 0x0

    .line 1518
    .local v12, "$i$f$readRawMetadata":I
    shr-int/lit8 v14, v2, 0x3

    aget-wide v14, v3, v14

    and-int/lit8 v18, v2, 0x7

    shl-int/lit8 v18, v18, 0x3

    shr-long v14, v14, v18

    and-long/2addr v14, v9

    .line 1517
    .end local v12    # "$i$f$readRawMetadata":I
    const-wide/16 v18, 0xfe

    cmp-long v12, v14, v18

    if-nez v12, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 746
    .end local v3    # "metadata$iv":[J
    .end local v11    # "$i$f$isDeleted":I
    :goto_4
    if-nez v3, :cond_5

    .line 747
    invoke-virtual {v0}, Landroidx/collection/SieveCache;->adjustStorage$collection()V

    .line 748
    invoke-direct {v0, v4}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v2

    .line 751
    :cond_5
    iget v3, v0, Landroidx/collection/SieveCache;->_count:I

    add-int/2addr v3, v13

    iput v3, v0, Landroidx/collection/SieveCache;->_count:I

    .line 752
    iget v3, v0, Landroidx/collection/SieveCache;->growthLimit:I

    iget-object v11, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v11, "metadata$iv":[J
    const/4 v12, 0x0

    .line 1519
    .local v12, "$i$f$isEmpty":I
    const/4 v14, 0x0

    .line 1520
    .local v14, "$i$f$readRawMetadata":I
    shr-int/lit8 v15, v2, 0x3

    aget-wide v18, v11, v15

    and-int/lit8 v15, v2, 0x7

    shl-int/lit8 v15, v15, 0x3

    shr-long v18, v18, v15

    and-long v14, v18, v9

    .line 1519
    .end local v14    # "$i$f$readRawMetadata":I
    const-wide/16 v18, 0x80

    cmp-long v20, v14, v18

    if-nez v20, :cond_6

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    .line 752
    .end local v11    # "metadata$iv":[J
    .end local v12    # "$i$f$isEmpty":I
    :goto_5
    sub-int v3, v3, v17

    iput v3, v0, Landroidx/collection/SieveCache;->growthLimit:I

    .line 753
    iget-object v3, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v3, "data$iv":[J
    iget v11, v0, Landroidx/collection/SieveCache;->_capacity:I

    .local v11, "capacity$iv":I
    int-to-long v12, v5

    .local v12, "value$iv":J
    const/4 v14, 0x0

    .line 1521
    .local v14, "$i$f$writeMetadata":I
    const/4 v15, 0x0

    .line 1522
    .local v15, "$i$f$writeRawMetadata":I
    shr-int/lit8 v17, v2, 0x3

    .line 1523
    .local v17, "i$iv$iv":I
    and-int/lit8 v18, v2, 0x7

    shl-int/lit8 v18, v18, 0x3

    .line 1526
    .local v18, "b$iv$iv":I
    aget-wide v19, v3, v17

    shl-long v9, v9, v18

    not-long v9, v9

    and-long v9, v19, v9

    shl-long v19, v12, v18

    or-long v9, v9, v19

    aput-wide v9, v3, v17

    .line 1527
    nop

    .line 1528
    .end local v15    # "$i$f$writeRawMetadata":I
    .end local v17    # "i$iv$iv":I
    .end local v18    # "b$iv$iv":I
    add-int/lit8 v9, v2, -0x7

    and-int/2addr v9, v11

    and-int/lit8 v10, v11, 0x7

    add-int/2addr v9, v10

    .line 1529
    nop

    .line 1531
    .local v9, "cloneIndex$iv":I
    shr-int/lit8 v10, v9, 0x3

    shr-int/lit8 v15, v2, 0x3

    aget-wide v17, v3, v15

    aput-wide v17, v3, v10

    .line 1532
    nop

    .line 755
    .end local v3    # "data$iv":[J
    .end local v9    # "cloneIndex$iv":I
    .end local v11    # "capacity$iv":I
    .end local v12    # "value$iv":J
    .end local v14    # "$i$f$writeMetadata":I
    not-int v3, v2

    return v3

    .line 741
    .end local v4    # "hash1":I
    .local v2, "m":J
    .local v18, "hash1":I
    .restart local v19    # "g":J
    :cond_7
    move/from16 v4, v18

    .end local v18    # "hash1":I
    .restart local v4    # "hash1":I
    add-int/lit8 v8, v8, 0x8

    .line 742
    add-int v9, v7, v8

    and-int v7, v9, v6

    move/from16 v2, v16

    .end local v2    # "m":J
    .end local v19    # "g":J
    goto/16 :goto_1
.end method

.method private final findKeyIndex(Ljava/lang/Object;)I
    .locals 22
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1485
    .local v2, "$i$f$hash":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const v5, -0x3361d2af    # -8.2930312E7f

    mul-int v4, v4, v5

    .line 1487
    .local v4, "hash$iv":I
    shl-int/lit8 v5, v4, 0x10

    xor-int v2, v4, v5

    .line 688
    .end local v2    # "$i$f$hash":I
    .end local v4    # "hash$iv":I
    nop

    .line 689
    .local v2, "hash":I
    const/4 v4, 0x0

    .line 1488
    .local v4, "$i$f$h2":I
    and-int/lit8 v4, v2, 0x7f

    .line 689
    .end local v4    # "$i$f$h2":I
    nop

    .line 691
    .local v4, "hash2":I
    iget v5, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 692
    .local v5, "probeMask":I
    const/4 v6, 0x0

    .line 1489
    .local v6, "$i$f$h1":I
    ushr-int/lit8 v6, v2, 0x7

    .line 692
    .end local v6    # "$i$f$h1":I
    and-int/2addr v6, v5

    .line 693
    .local v6, "probeOffset":I
    const/4 v7, 0x0

    .line 695
    .local v7, "probeIndex":I
    :goto_1
    nop

    .line 696
    iget-object v8, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v8, "metadata$iv":[J
    const/4 v9, 0x0

    .line 1490
    .local v9, "$i$f$group":I
    shr-int/lit8 v10, v6, 0x3

    .line 1491
    .local v10, "i$iv":I
    and-int/lit8 v11, v6, 0x7

    shl-int/lit8 v11, v11, 0x3

    .line 1492
    .local v11, "b$iv":I
    aget-wide v12, v8, v10

    ushr-long/2addr v12, v11

    add-int/lit8 v14, v10, 0x1

    aget-wide v14, v8, v14

    rsub-int/lit8 v16, v11, 0x40

    shl-long v14, v14, v16

    move/from16 v17, v4

    .end local v4    # "hash2":I
    .local v17, "hash2":I
    int-to-long v3, v11

    neg-long v3, v3

    const/16 v18, 0x3f

    shr-long v3, v3, v18

    and-long/2addr v3, v14

    or-long/2addr v3, v12

    .line 696
    .end local v8    # "metadata$iv":[J
    .end local v9    # "$i$f$group":I
    .end local v10    # "i$iv":I
    .end local v11    # "b$iv":I
    nop

    .line 697
    .local v3, "g":J
    move-wide v8, v3

    .local v8, "$this$match$iv":J
    const/4 v10, 0x0

    .line 1493
    .local v10, "$i$f$match":I
    move/from16 v11, v17

    .end local v17    # "hash2":I
    .local v11, "hash2":I
    int-to-long v12, v11

    const-wide v14, 0x101010101010101L

    mul-long v12, v12, v14

    xor-long/2addr v12, v8

    .line 1495
    .local v12, "x$iv":J
    sub-long v14, v12, v14

    move/from16 v17, v2

    move-wide/from16 v18, v3

    .end local v2    # "hash":I
    .end local v3    # "g":J
    .local v17, "hash":I
    .local v18, "g":J
    not-long v2, v12

    and-long/2addr v2, v14

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v14

    .line 697
    .end local v8    # "$this$match$iv":J
    .end local v10    # "$i$f$match":I
    .end local v12    # "x$iv":J
    nop

    .line 698
    .local v2, "m":J
    :goto_2
    move-wide v8, v2

    .local v8, "$this$hasNext$iv":J
    const/4 v4, 0x0

    .line 1496
    .local v4, "$i$f$hasNext":I
    const-wide/16 v12, 0x0

    cmp-long v10, v8, v12

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    .end local v4    # "$i$f$hasNext":I
    .end local v8    # "$this$hasNext$iv":J
    :goto_3
    if-eqz v10, :cond_3

    .line 699
    move-wide v8, v2

    .local v8, "$this$get$iv":J
    const/4 v4, 0x0

    .line 1497
    .local v4, "$i$f$get":I
    move-wide v12, v8

    .local v12, "$this$lowestBitSet$iv$iv":J
    const/4 v10, 0x0

    .line 1498
    .local v10, "$i$f$lowestBitSet":I
    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v20

    shr-int/lit8 v10, v20, 0x3

    .line 1497
    .end local v10    # "$i$f$lowestBitSet":I
    .end local v12    # "$this$lowestBitSet$iv$iv":J
    nop

    .line 699
    .end local v4    # "$i$f$get":I
    .end local v8    # "$this$get$iv":J
    add-int/2addr v10, v6

    and-int v4, v10, v5

    .line 700
    .local v4, "index":I
    iget-object v8, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v8, v8, v4

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 701
    return v4

    .line 703
    :cond_2
    move-wide v8, v2

    .local v8, "$this$next$iv":J
    const/4 v10, 0x0

    .line 1499
    .local v10, "$i$f$next":I
    const-wide/16 v12, 0x1

    sub-long v12, v8, v12

    and-long/2addr v8, v12

    .line 703
    .end local v8    # "$this$next$iv":J
    .end local v10    # "$i$f$next":I
    move-wide v2, v8

    .end local v4    # "index":I
    goto :goto_2

    .line 706
    :cond_3
    move-wide/from16 v8, v18

    .local v8, "$this$maskEmpty$iv":J
    const/4 v4, 0x0

    .line 1500
    .local v4, "$i$f$maskEmpty":I
    move-wide/from16 v20, v12

    not-long v12, v8

    const/4 v10, 0x6

    shl-long/2addr v12, v10

    and-long/2addr v12, v8

    and-long v8, v12, v14

    .line 706
    .end local v4    # "$i$f$maskEmpty":I
    .end local v8    # "$this$maskEmpty$iv":J
    cmp-long v4, v8, v20

    if-eqz v4, :cond_4

    .line 707
    nop

    .line 714
    .end local v2    # "m":J
    .end local v18    # "g":J
    const/4 v2, -0x1

    return v2

    .line 710
    .restart local v2    # "m":J
    .restart local v18    # "g":J
    :cond_4
    add-int/lit8 v7, v7, 0x8

    .line 711
    add-int v4, v6, v7

    and-int v6, v4, v5

    move v4, v11

    move/from16 v2, v17

    .end local v2    # "m":J
    .end local v18    # "g":J
    goto/16 :goto_1
.end method

.method private final fixupNodes([I)V
    .locals 14
    .param p1, "mapping"    # [I

    .line 1011
    iget-object v0, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 1012
    .local v0, "nodes":[J
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    :goto_0
    const v3, 0x7fffffff

    if-ge v1, v2, :cond_2

    .line 1013
    aget-wide v4, v0, v1

    .line 1014
    .local v4, "node":J
    move-wide v6, v4

    .local v6, "$this$previousNode$iv":J
    const/4 v8, 0x0

    .line 1626
    .local v8, "$i$f$getPreviousNode":I
    const/16 v9, 0x1f

    shr-long v10, v6, v9

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v10, v12

    long-to-int v6, v10

    .line 1014
    .end local v6    # "$this$previousNode$iv":J
    .end local v8    # "$i$f$getPreviousNode":I
    nop

    .line 1015
    .local v6, "previous":I
    move-wide v7, v4

    .local v7, "$this$nextNode$iv":J
    const/4 v10, 0x0

    .line 1627
    .local v10, "$i$f$getNextNode":I
    and-long/2addr v12, v7

    long-to-int v7, v12

    .line 1015
    .end local v7    # "$this$nextNode$iv":J
    .end local v10    # "$i$f$getNextNode":I
    nop

    .line 1016
    .local v7, "next":I
    const/4 v8, 0x0

    .line 1628
    .local v8, "$i$f$createLinks":I
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    and-long/2addr v10, v4

    .line 1629
    if-ne v6, v3, :cond_0

    const v12, 0x7fffffff

    goto :goto_1

    :cond_0
    aget v12, p1, v6

    :goto_1
    int-to-long v12, v12

    .line 1628
    or-long/2addr v10, v12

    .line 1630
    nop

    .line 1628
    shl-long v9, v10, v9

    .line 1631
    if-ne v7, v3, :cond_1

    goto :goto_2

    :cond_1
    aget v3, p1, v7

    :goto_2
    int-to-long v11, v3

    .line 1628
    or-long/2addr v9, v11

    .end local v8    # "$i$f$createLinks":I
    aput-wide v9, v0, v1

    .line 1012
    .end local v4    # "node":J
    .end local v6    # "previous":I
    .end local v7    # "next":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "i":I
    :cond_2
    iget v1, p0, Landroidx/collection/SieveCache;->head:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Landroidx/collection/SieveCache;->head:I

    aget v1, p1, v1

    iput v1, p0, Landroidx/collection/SieveCache;->head:I

    .line 1019
    :cond_3
    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    if-eq v1, v3, :cond_4

    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    aget v1, p1, v1

    iput v1, p0, Landroidx/collection/SieveCache;->tail:I

    .line 1020
    :cond_4
    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    if-eq v1, v3, :cond_5

    iget v1, p0, Landroidx/collection/SieveCache;->hand:I

    aget v1, p1, v1

    iput v1, p0, Landroidx/collection/SieveCache;->hand:I

    .line 1021
    :cond_5
    return-void
.end method

.method private final fixupNodes([J)V
    .locals 21
    .param p1, "mapping"    # [J

    .line 998
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 999
    .local v1, "nodes":[J
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    :goto_0
    const v6, 0x7fffffff

    if-ge v2, v3, :cond_2

    .line 1000
    aget-wide v7, v1, v2

    .line 1001
    .local v7, "node":J
    move-wide v9, v7

    .local v9, "$this$previousNode$iv":J
    const/4 v11, 0x0

    .line 1615
    .local v11, "$i$f$getPreviousNode":I
    const/16 v12, 0x1f

    shr-long v13, v9, v12

    const-wide/32 v15, 0x7fffffff

    and-long/2addr v13, v15

    long-to-int v9, v13

    .line 1001
    .end local v9    # "$this$previousNode$iv":J
    .end local v11    # "$i$f$getPreviousNode":I
    nop

    .line 1002
    .local v9, "previous":I
    move-wide v10, v7

    .local v10, "$this$nextNode$iv":J
    const/4 v13, 0x0

    .line 1616
    .local v13, "$i$f$getNextNode":I
    const-wide v17, 0xffffffffL

    and-long v4, v10, v15

    long-to-int v5, v4

    .line 1002
    .end local v10    # "$this$nextNode$iv":J
    .end local v13    # "$i$f$getNextNode":I
    nop

    .line 1003
    .local v5, "next":I
    const/4 v4, 0x0

    .line 1617
    .local v4, "$i$f$createLinks":I
    const-wide/high16 v10, -0x4000000000000000L    # -2.0

    and-long/2addr v10, v7

    .line 1618
    if-ne v9, v6, :cond_0

    move-wide/from16 v19, v7

    goto :goto_1

    :cond_0
    aget-wide v13, p1, v9

    .local v13, "$this$dst$iv$iv":J
    const/4 v15, 0x0

    .line 1619
    .local v15, "$i$f$getDst":I
    move-wide/from16 v19, v7

    .end local v7    # "node":J
    .local v19, "node":J
    and-long v6, v13, v17

    long-to-int v7, v6

    move v6, v7

    .line 1618
    .end local v13    # "$this$dst$iv$iv":J
    .end local v15    # "$i$f$getDst":I
    :goto_1
    int-to-long v6, v6

    .line 1617
    or-long/2addr v6, v10

    .line 1620
    nop

    .line 1617
    shl-long/2addr v6, v12

    .line 1621
    const v8, 0x7fffffff

    if-ne v5, v8, :cond_1

    const v13, 0x7fffffff

    goto :goto_2

    :cond_1
    aget-wide v10, p1, v5

    .local v10, "$this$dst$iv$iv":J
    const/4 v8, 0x0

    .line 1622
    .local v8, "$i$f$getDst":I
    and-long v12, v10, v17

    long-to-int v13, v12

    .line 1621
    .end local v8    # "$i$f$getDst":I
    .end local v10    # "$this$dst$iv$iv":J
    :goto_2
    int-to-long v10, v13

    .line 1617
    or-long/2addr v6, v10

    .end local v4    # "$i$f$createLinks":I
    aput-wide v6, v1, v2

    .line 999
    .end local v5    # "next":I
    .end local v9    # "previous":I
    .end local v19    # "node":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide v17, 0xffffffffL

    .line 1005
    .end local v2    # "i":I
    iget v2, v0, Landroidx/collection/SieveCache;->head:I

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_3

    iget v2, v0, Landroidx/collection/SieveCache;->head:I

    aget-wide v2, p1, v2

    .local v2, "$this$dst$iv":J
    const/4 v4, 0x0

    .line 1623
    .local v4, "$i$f$getDst":I
    and-long v5, v2, v17

    long-to-int v2, v5

    .line 1005
    .end local v2    # "$this$dst$iv":J
    .end local v4    # "$i$f$getDst":I
    iput v2, v0, Landroidx/collection/SieveCache;->head:I

    .line 1006
    :cond_3
    iget v2, v0, Landroidx/collection/SieveCache;->tail:I

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_4

    iget v2, v0, Landroidx/collection/SieveCache;->tail:I

    aget-wide v2, p1, v2

    .restart local v2    # "$this$dst$iv":J
    const/4 v4, 0x0

    .line 1624
    .restart local v4    # "$i$f$getDst":I
    and-long v5, v2, v17

    long-to-int v2, v5

    .line 1006
    .end local v2    # "$this$dst$iv":J
    .end local v4    # "$i$f$getDst":I
    iput v2, v0, Landroidx/collection/SieveCache;->tail:I

    .line 1007
    :cond_4
    iget v2, v0, Landroidx/collection/SieveCache;->hand:I

    const v8, 0x7fffffff

    if-eq v2, v8, :cond_5

    iget v2, v0, Landroidx/collection/SieveCache;->hand:I

    aget-wide v2, p1, v2

    .restart local v2    # "$this$dst$iv":J
    const/4 v4, 0x0

    .line 1625
    .restart local v4    # "$i$f$getDst":I
    and-long v5, v2, v17

    long-to-int v2, v5

    .line 1007
    .end local v2    # "$this$dst$iv":J
    .end local v4    # "$i$f$getDst":I
    iput v2, v0, Landroidx/collection/SieveCache;->hand:I

    .line 1008
    :cond_5
    return-void
.end method

.method public static synthetic getCount$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getKeys$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMetadata$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getValues$annotations()V
    .locals 0

    return-void
.end method

.method private final initializeGrowth()V
    .locals 2

    .line 218
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/SieveCache;->growthLimit:I

    .line 219
    return-void
.end method

.method private final initializeMetadata(I)V
    .locals 14
    .param p1, "capacity"    # I

    .line 203
    nop

    .line 204
    if-nez p1, :cond_0

    .line 205
    sget-object v0, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    goto :goto_0

    .line 208
    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, -0x8

    shr-int/lit8 v0, v0, 0x3

    .line 209
    .local v0, "size":I
    new-array v1, v0, [J

    move-object v2, v1

    .local v2, "$this$initializeMetadata_u24lambda_u244":[J
    const/4 v9, 0x0

    .line 210
    .local v9, "$i$a$-apply-SieveCache$initializeMetadata$1":I
    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 211
    const-wide/16 v3, 0xff

    .local v3, "value$iv":J
    const/4 v5, 0x0

    .line 1154
    .local v5, "$i$f$writeRawMetadata":I
    shr-int/lit8 v6, p1, 0x3

    .line 1155
    .local v6, "i$iv":I
    and-int/lit8 v7, p1, 0x7

    shl-int/lit8 v7, v7, 0x3

    .line 1158
    .local v7, "b$iv":I
    aget-wide v10, v2, v6

    const-wide/16 v12, 0xff

    shl-long/2addr v12, v7

    not-long v12, v12

    and-long/2addr v10, v12

    shl-long v12, v3, v7

    or-long/2addr v10, v12

    aput-wide v10, v2, v6

    .line 1159
    nop

    .line 212
    .end local v3    # "value$iv":J
    .end local v5    # "$i$f$writeRawMetadata":I
    .end local v6    # "i$iv":I
    .end local v7    # "b$iv":I
    nop

    .line 209
    .end local v2    # "$this$initializeMetadata_u24lambda_u244":[J
    .end local v9    # "$i$a$-apply-SieveCache$initializeMetadata$1":I
    move-object v0, v1

    .line 203
    .end local v0    # "size":I
    :goto_0
    iput-object v0, p0, Landroidx/collection/SieveCache;->metadata:[J

    .line 214
    invoke-direct {p0}, Landroidx/collection/SieveCache;->initializeGrowth()V

    .line 215
    return-void
.end method

.method private final initializeStorage(I)V
    .locals 10
    .param p1, "initialCapacity"    # I

    .line 187
    if-lez p1, :cond_0

    .line 190
    const/4 v0, 0x7

    invoke-static {p1}, Landroidx/collection/ScatterMapKt;->normalizeCapacity(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 187
    :goto_0
    nop

    .line 186
    nop

    .line 194
    .local v0, "newCapacity":I
    iput v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    .line 195
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->initializeMetadata(I)V

    .line 196
    if-nez v0, :cond_1

    sget-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-array v1, v0, [Ljava/lang/Object;

    :goto_1
    iput-object v1, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 197
    if-nez v0, :cond_2

    sget-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    goto :goto_2

    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    :goto_2
    iput-object v1, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 198
    nop

    .line 199
    if-nez v0, :cond_3

    invoke-static {}, Landroidx/collection/SieveCacheKt;->getEmptyNodes()[J

    move-result-object v1

    goto :goto_3

    :cond_3
    new-array v1, v0, [J

    .line 1153
    move-object v2, v1

    .local v2, "$this$initializeStorage_u24lambda_u243":[J
    const/4 v9, 0x0

    .line 199
    .local v9, "$i$a$-apply-SieveCache$initializeStorage$1":I
    const/4 v7, 0x6

    const/4 v8, 0x0

    const-wide v3, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([JJIIILjava/lang/Object;)V

    .line 198
    .end local v2    # "$this$initializeStorage_u24lambda_u243":[J
    .end local v9    # "$i$a$-apply-SieveCache$initializeStorage$1":I
    :goto_3
    iput-object v1, p0, Landroidx/collection/SieveCache;->nodes:[J

    .line 200
    return-void
.end method

.method private final markNodeVisited(I)V
    .locals 7
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 684
    .local v0, "$i$f$markNodeVisited":I
    iget-object v1, p0, Landroidx/collection/SieveCache;->nodes:[J

    iget-object v2, p0, Landroidx/collection/SieveCache;->nodes:[J

    aget-wide v3, v2, p1

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    or-long/2addr v3, v5

    aput-wide v3, v1, p1

    .line 685
    return-void
.end method

.method private final moveNodeToHead(I)V
    .locals 14
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 633
    .local v0, "$i$f$moveNodeToHead":I
    iget-object v1, p0, Landroidx/collection/SieveCache;->nodes:[J

    iget v2, p0, Landroidx/collection/SieveCache;->head:I

    .local v2, "next$iv":I
    const/4 v3, 0x0

    .line 1444
    .local v3, "$i$f$createLinkToNext":I
    int-to-long v4, v2

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    const-wide v8, 0x3fffffff80000000L    # 1.9999995231628418

    or-long v2, v4, v8

    .end local v2    # "next$iv":I
    .end local v3    # "$i$f$createLinkToNext":I
    aput-wide v2, v1, p1

    .line 635
    iget v1, p0, Landroidx/collection/SieveCache;->head:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 636
    iget-object v1, p0, Landroidx/collection/SieveCache;->nodes:[J

    iget v3, p0, Landroidx/collection/SieveCache;->head:I

    iget-object v4, p0, Landroidx/collection/SieveCache;->nodes:[J

    iget v5, p0, Landroidx/collection/SieveCache;->head:I

    aget-wide v8, v4, v5

    .local v8, "node$iv":J
    const/4 v4, 0x0

    .line 1445
    .local v4, "$i$f$setLinkToPrevious":I
    const-wide v10, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v10, v8

    int-to-long v12, p1

    and-long/2addr v6, v12

    const/16 v5, 0x1f

    shl-long v5, v6, v5

    or-long/2addr v5, v10

    .end local v4    # "$i$f$setLinkToPrevious":I
    .end local v8    # "node$iv":J
    aput-wide v5, v1, v3

    .line 638
    :cond_0
    iput p1, p0, Landroidx/collection/SieveCache;->head:I

    .line 640
    iget v1, p0, Landroidx/collection/SieveCache;->tail:I

    if-ne v1, v2, :cond_1

    .line 641
    iput p1, p0, Landroidx/collection/SieveCache;->tail:I

    .line 643
    :cond_1
    return-void
.end method

.method private final removeNode(I)V
    .locals 20
    .param p1, "index"    # I

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 660
    .local v2, "$i$f$removeNode":I
    iget-object v3, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 661
    .local v3, "nodes":[J
    aget-wide v4, v3, v1

    .line 662
    .local v4, "node":J
    move-wide v6, v4

    .local v6, "$this$previousNode$iv":J
    const/4 v8, 0x0

    .line 1481
    .local v8, "$i$f$getPreviousNode":I
    const/16 v9, 0x1f

    shr-long v10, v6, v9

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v10, v12

    long-to-int v6, v10

    .line 662
    .end local v6    # "$this$previousNode$iv":J
    .end local v8    # "$i$f$getPreviousNode":I
    nop

    .line 663
    .local v6, "previousIndex":I
    move-wide v7, v4

    .local v7, "$this$nextNode$iv":J
    const/4 v10, 0x0

    .line 1482
    .local v10, "$i$f$getNextNode":I
    and-long v14, v7, v12

    long-to-int v7, v14

    .line 663
    .end local v7    # "$this$nextNode$iv":J
    .end local v10    # "$i$f$getNextNode":I
    nop

    .line 665
    .local v7, "nextIndex":I
    const v8, 0x7fffffff

    if-eq v6, v8, :cond_0

    .line 666
    aget-wide v10, v3, v6

    .local v10, "node$iv":J
    const/4 v14, 0x0

    .line 1483
    .local v14, "$i$f$setLinkToNext":I
    const-wide/32 v15, -0x80000000

    and-long/2addr v15, v10

    move-wide/from16 v18, v10

    const/16 v17, 0x1f

    .end local v10    # "node$iv":J
    .local v18, "node$iv":J
    int-to-long v9, v7

    and-long/2addr v9, v12

    or-long/2addr v9, v15

    .end local v14    # "$i$f$setLinkToNext":I
    .end local v18    # "node$iv":J
    aput-wide v9, v3, v6

    goto :goto_0

    .line 668
    :cond_0
    const/16 v17, 0x1f

    iput v7, v0, Landroidx/collection/SieveCache;->head:I

    .line 671
    :goto_0
    if-eq v7, v8, :cond_1

    .line 672
    aget-wide v8, v3, v7

    .local v8, "node$iv":J
    const/4 v10, 0x0

    .line 1484
    .local v10, "$i$f$setLinkToPrevious":I
    const-wide v14, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v14, v8

    move-wide/from16 v18, v12

    int-to-long v12, v6

    and-long v12, v12, v18

    shl-long v11, v12, v17

    or-long v8, v14, v11

    .end local v8    # "node$iv":J
    .end local v10    # "$i$f$setLinkToPrevious":I
    aput-wide v8, v3, v7

    goto :goto_1

    .line 674
    :cond_1
    iput v6, v0, Landroidx/collection/SieveCache;->tail:I

    .line 677
    :goto_1
    iget v8, v0, Landroidx/collection/SieveCache;->hand:I

    if-ne v8, v1, :cond_2

    .line 678
    iput v6, v0, Landroidx/collection/SieveCache;->hand:I

    .line 680
    :cond_2
    const-wide v8, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v8, v3, v1

    .line 681
    return-void
.end method

.method private final removeValueAt(I)Ljava/lang/Object;
    .locals 21
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 646
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/collection/SieveCache;->_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroidx/collection/SieveCache;->_count:I

    .line 648
    iget-object v2, v0, Landroidx/collection/SieveCache;->metadata:[J

    .local v2, "data$iv":[J
    iget v3, v0, Landroidx/collection/SieveCache;->_capacity:I

    .local v3, "capacity$iv":I
    const-wide/16 v4, 0xfe

    .local v4, "value$iv":J
    const/4 v6, 0x0

    .line 1446
    .local v6, "$i$f$writeMetadata":I
    const/4 v7, 0x0

    .line 1447
    .local v7, "$i$f$writeRawMetadata":I
    shr-int/lit8 v8, v1, 0x3

    .line 1448
    .local v8, "i$iv$iv":I
    and-int/lit8 v9, v1, 0x7

    shl-int/lit8 v9, v9, 0x3

    .line 1451
    .local v9, "b$iv$iv":I
    aget-wide v10, v2, v8

    const-wide/16 v12, 0xff

    shl-long/2addr v12, v9

    not-long v12, v12

    and-long/2addr v10, v12

    shl-long v12, v4, v9

    or-long/2addr v10, v12

    aput-wide v10, v2, v8

    .line 1452
    nop

    .line 1453
    .end local v7    # "$i$f$writeRawMetadata":I
    .end local v8    # "i$iv$iv":I
    .end local v9    # "b$iv$iv":I
    add-int/lit8 v7, v1, -0x7

    and-int/2addr v7, v3

    and-int/lit8 v8, v3, 0x7

    add-int/2addr v7, v8

    .line 1454
    nop

    .line 1456
    .local v7, "cloneIndex$iv":I
    shr-int/lit8 v8, v7, 0x3

    shr-int/lit8 v9, v1, 0x3

    aget-wide v9, v2, v9

    aput-wide v9, v2, v8

    .line 1457
    nop

    .line 650
    .end local v2    # "data$iv":[J
    .end local v3    # "capacity$iv":I
    .end local v4    # "value$iv":J
    .end local v6    # "$i$f$writeMetadata":I
    .end local v7    # "cloneIndex$iv":I
    iget-object v2, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 651
    iget-object v2, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 652
    .local v2, "previousValue":Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aput-object v3, v4, v1

    .line 654
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1458
    .local v4, "$i$f$removeNode":I
    iget-object v5, v3, Landroidx/collection/SieveCache;->nodes:[J

    .line 1459
    .local v5, "nodes$iv":[J
    aget-wide v6, v5, v1

    .line 1460
    .local v6, "node$iv":J
    move-wide v8, v6

    .local v8, "$this$previousNode$iv$iv":J
    const/4 v10, 0x0

    .line 1461
    .local v10, "$i$f$getPreviousNode":I
    const/16 v11, 0x1f

    shr-long v12, v8, v11

    const-wide/32 v14, 0x7fffffff

    and-long/2addr v12, v14

    long-to-int v8, v12

    .line 1460
    .end local v8    # "$this$previousNode$iv$iv":J
    .end local v10    # "$i$f$getPreviousNode":I
    nop

    .line 1462
    .local v8, "previousIndex$iv":I
    move-wide v9, v6

    .local v9, "$this$nextNode$iv$iv":J
    const/4 v12, 0x0

    .line 1463
    .local v12, "$i$f$getNextNode":I
    move/from16 v16, v12

    const/16 v13, 0x1f

    .end local v12    # "$i$f$getNextNode":I
    .local v16, "$i$f$getNextNode":I
    and-long v11, v9, v14

    long-to-int v9, v11

    .line 1462
    .end local v9    # "$this$nextNode$iv$iv":J
    .end local v16    # "$i$f$getNextNode":I
    nop

    .line 1464
    .local v9, "nextIndex$iv":I
    const v10, 0x7fffffff

    if-eq v8, v10, :cond_0

    .line 1465
    aget-wide v11, v5, v8

    .local v11, "node$iv$iv":J
    const/16 v16, 0x0

    .line 1466
    .local v16, "$i$f$setLinkToNext":I
    const-wide/32 v17, -0x80000000

    and-long v17, v11, v17

    move-wide/from16 v19, v14

    const/16 v15, 0x1f

    int-to-long v13, v9

    and-long v13, v13, v19

    or-long v11, v17, v13

    .end local v11    # "node$iv$iv":J
    .end local v16    # "$i$f$setLinkToNext":I
    aput-wide v11, v5, v8

    goto :goto_0

    .line 1467
    :cond_0
    move-wide/from16 v19, v14

    const/16 v15, 0x1f

    iput v9, v3, Landroidx/collection/SieveCache;->head:I

    .line 1470
    :goto_0
    if-eq v9, v10, :cond_1

    .line 1471
    aget-wide v10, v5, v9

    .local v10, "node$iv$iv":J
    const/4 v12, 0x0

    .line 1472
    .local v12, "$i$f$setLinkToPrevious":I
    const-wide v13, -0x3fffffff80000001L    # -2.000000953674316

    and-long/2addr v13, v10

    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "$i$f$removeNode":I
    .end local v5    # "nodes$iv":[J
    .local v16, "$i$f$removeNode":I
    .local v17, "nodes$iv":[J
    int-to-long v4, v8

    and-long v4, v4, v19

    shl-long/2addr v4, v15

    or-long/2addr v4, v13

    .end local v10    # "node$iv$iv":J
    .end local v12    # "$i$f$setLinkToPrevious":I
    aput-wide v4, v17, v9

    goto :goto_1

    .line 1473
    .end local v16    # "$i$f$removeNode":I
    .end local v17    # "nodes$iv":[J
    .restart local v4    # "$i$f$removeNode":I
    .restart local v5    # "nodes$iv":[J
    :cond_1
    move/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "$i$f$removeNode":I
    .end local v5    # "nodes$iv":[J
    .restart local v16    # "$i$f$removeNode":I
    .restart local v17    # "nodes$iv":[J
    iput v8, v3, Landroidx/collection/SieveCache;->tail:I

    .line 1476
    :goto_1
    iget v4, v3, Landroidx/collection/SieveCache;->hand:I

    if-ne v4, v1, :cond_2

    .line 1477
    iput v8, v3, Landroidx/collection/SieveCache;->hand:I

    .line 1479
    :cond_2
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v4, v17, v1

    .line 1480
    nop

    .line 656
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v6    # "node$iv":J
    .end local v8    # "previousIndex$iv":I
    .end local v9    # "nextIndex$iv":I
    .end local v16    # "$i$f$removeNode":I
    .end local v17    # "nodes$iv":[J
    return-object v2
.end method


# virtual methods
.method public final adjustStorage$collection()V
    .locals 6

    .line 776
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x20

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget v2, p0, Landroidx/collection/SieveCache;->_capacity:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    const-wide/16 v4, 0x19

    mul-long v2, v2, v4

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/collection/MutableFloatFloatMap$$ExternalSyntheticBackport0;->m(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    .line 777
    invoke-virtual {p0}, Landroidx/collection/SieveCache;->dropDeletes$collection()V

    goto :goto_0

    .line 779
    :cond_0
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/SieveCache;->resizeStorage$collection(I)V

    .line 781
    :goto_0
    return-void
.end method

.method public final all(Lkotlin/jvm/functions/Function2;)Z
    .locals 25
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "predicate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 580
    .local v1, "$i$f$all":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v3, 0x0

    .line 1345
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1346
    .local v4, "k$iv":[Ljava/lang/Object;
    iget-object v5, v2, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1348
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v7, 0x0

    .line 1349
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/SieveCache;->metadata:[J

    .line 1350
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 1352
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_5

    .line 1353
    :goto_0
    aget-wide v12, v8, v10

    .line 1354
    .local v12, "slot$iv$iv":J
    move-wide v14, v12

    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1355
    .local v16, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v18, v12

    const/16 v17, 0x1

    .end local v12    # "slot$iv$iv":J
    .local v18, "slot$iv$iv":J
    not-long v11, v14

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v14

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v11, v20

    .line 1354
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v16    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v13, v11, v20

    if-eqz v13, :cond_4

    .line 1356
    sub-int v11, v10, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1357
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_3

    .line 1358
    const-wide/16 v14, 0xff

    and-long v14, v18, v14

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1359
    .local v16, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    const/16 v22, 0x0

    cmp-long v23, v14, v20

    if-gez v23, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    .line 1358
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_2

    .line 1360
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 1361
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 1348
    .local v16, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v20, 0x8

    aget-object v12, v4, v15

    move/from16 v21, v1

    .end local v1    # "$i$f$all":I
    .local v21, "$i$f$all":I
    const-string v1, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v1, v5, v15

    move-object/from16 v23, v2

    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .local v23, "this_$iv":Landroidx/collection/SieveCache;
    const-string v2, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "value":Ljava/lang/Object;
    .local v12, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 580
    .local v2, "$i$a$-forEach-SieveCache$all$1":I
    invoke-interface {v0, v12, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-nez v24, :cond_1

    return v22

    .line 1348
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "$i$a$-forEach-SieveCache$all$1":I
    .end local v12    # "key":Ljava/lang/Object;
    :cond_1
    nop

    .line 1361
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1358
    .end local v14    # "index$iv$iv":I
    .end local v21    # "$i$f$all":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .local v1, "$i$f$all":I
    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    :cond_2
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v20, 0x8

    .line 1363
    .end local v1    # "$i$f$all":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v21    # "$i$f$all":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_3
    shr-long v18, v18, v20

    .line 1357
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v23

    const/16 v12, 0x8

    goto :goto_1

    .end local v21    # "$i$f$all":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$all":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_3
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v20, 0x8

    .line 1365
    .end local v1    # "$i$f$all":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v13    # "j$iv$iv":I
    .restart local v21    # "$i$f$all":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    const/16 v1, 0x8

    if-ne v11, v1, :cond_7

    goto :goto_4

    .line 1354
    .end local v11    # "bitCount$iv$iv":I
    .end local v21    # "$i$f$all":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$all":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_4
    move/from16 v21, v1

    move-object/from16 v23, v2

    .line 1352
    .end local v1    # "$i$f$all":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v18    # "slot$iv$iv":J
    .restart local v21    # "$i$f$all":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_4
    if-eq v10, v9, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v23

    goto/16 :goto_0

    .end local v21    # "$i$f$all":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$all":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_5
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v17, 0x1

    .line 1368
    .end local v1    # "$i$f$all":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v10    # "i$iv$iv":I
    .restart local v21    # "$i$f$all":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_6
    nop

    .line 1369
    .end local v6    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_7
    nop

    .line 581
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    return v17
.end method

.method public final any()Z
    .locals 1

    .line 174
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final any(Lkotlin/jvm/functions/Function2;)Z
    .locals 25
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "predicate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 586
    .local v1, "$i$f$any":I
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v3, 0x0

    .line 1370
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1371
    .local v4, "k$iv":[Ljava/lang/Object;
    iget-object v5, v2, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1373
    .local v5, "v$iv":[Ljava/lang/Object;
    move-object v6, v2

    .local v6, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v7, 0x0

    .line 1374
    .local v7, "$i$f$forEachIndexed":I
    iget-object v8, v6, Landroidx/collection/SieveCache;->metadata:[J

    .line 1375
    .local v8, "m$iv$iv":[J
    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    .line 1377
    .local v9, "lastIndex$iv$iv":I
    const/4 v10, 0x0

    .local v10, "i$iv$iv":I
    if-gt v10, v9, :cond_5

    .line 1378
    :goto_0
    aget-wide v12, v8, v10

    .line 1379
    .local v12, "slot$iv$iv":J
    move-wide v14, v12

    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1380
    .local v16, "$i$f$maskEmptyOrDeleted":I
    move-wide/from16 v18, v12

    const/16 v17, 0x0

    .end local v12    # "slot$iv$iv":J
    .local v18, "slot$iv$iv":J
    not-long v11, v14

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v14

    const-wide v20, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v11, v20

    .line 1379
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v16    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v13, v11, v20

    if-eqz v13, :cond_4

    .line 1381
    sub-int v11, v10, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1382
    .local v11, "bitCount$iv$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv$iv":I
    :goto_1
    if-ge v13, v11, :cond_3

    .line 1383
    const-wide/16 v14, 0xff

    and-long v14, v18, v14

    .local v14, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1384
    .local v16, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    const/16 v22, 0x1

    cmp-long v23, v14, v20

    if-gez v23, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    .line 1383
    .end local v14    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_2

    .line 1385
    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    .line 1386
    .local v14, "index$iv$iv":I
    move v15, v14

    .local v15, "index$iv":I
    const/16 v16, 0x0

    .line 1373
    .local v16, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v20, 0x8

    aget-object v12, v4, v15

    move/from16 v21, v1

    .end local v1    # "$i$f$any":I
    .local v21, "$i$f$any":I
    const-string v1, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v1, v5, v15

    move-object/from16 v23, v2

    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .local v23, "this_$iv":Landroidx/collection/SieveCache;
    const-string v2, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "value":Ljava/lang/Object;
    .local v12, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 586
    .local v2, "$i$a$-forEach-SieveCache$any$1":I
    invoke-interface {v0, v12, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Boolean;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v24

    if-eqz v24, :cond_1

    return v22

    .line 1373
    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "$i$a$-forEach-SieveCache$any$1":I
    .end local v12    # "key":Ljava/lang/Object;
    :cond_1
    nop

    .line 1386
    .end local v15    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1383
    .end local v14    # "index$iv$iv":I
    .end local v21    # "$i$f$any":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .local v1, "$i$f$any":I
    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    :cond_2
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v20, 0x8

    .line 1388
    .end local v1    # "$i$f$any":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v21    # "$i$f$any":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_3
    shr-long v18, v18, v20

    .line 1382
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v23

    const/16 v12, 0x8

    goto :goto_1

    .end local v21    # "$i$f$any":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$any":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_3
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v20, 0x8

    .line 1390
    .end local v1    # "$i$f$any":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v13    # "j$iv$iv":I
    .restart local v21    # "$i$f$any":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    const/16 v1, 0x8

    if-ne v11, v1, :cond_7

    goto :goto_4

    .line 1379
    .end local v11    # "bitCount$iv$iv":I
    .end local v21    # "$i$f$any":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$any":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_4
    move/from16 v21, v1

    move-object/from16 v23, v2

    .line 1377
    .end local v1    # "$i$f$any":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v18    # "slot$iv$iv":J
    .restart local v21    # "$i$f$any":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_4
    if-eq v10, v9, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v21

    move-object/from16 v2, v23

    goto/16 :goto_0

    .end local v21    # "$i$f$any":I
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v1    # "$i$f$any":I
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_5
    move/from16 v21, v1

    move-object/from16 v23, v2

    const/16 v17, 0x0

    .line 1393
    .end local v1    # "$i$f$any":I
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v10    # "i$iv$iv":I
    .restart local v21    # "$i$f$any":I
    .restart local v23    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_6
    nop

    .line 1394
    .end local v6    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v8    # "m$iv$iv":[J
    .end local v9    # "lastIndex$iv$iv":I
    :cond_7
    nop

    .line 587
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "k$iv":[Ljava/lang/Object;
    .end local v5    # "v$iv":[Ljava/lang/Object;
    .end local v23    # "this_$iv":Landroidx/collection/SieveCache;
    return v17
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 21
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string/jumbo v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    move-object/from16 v1, p0

    iget-object v2, v1, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 609
    .local v2, "v":[Ljava/lang/Object;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1420
    .local v4, "$i$f$forEachIndexed":I
    iget-object v5, v3, Landroidx/collection/SieveCache;->metadata:[J

    .line 1421
    .local v5, "m$iv":[J
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    .line 1423
    .local v6, "lastIndex$iv":I
    const/4 v7, 0x0

    .local v7, "i$iv":I
    if-gt v7, v6, :cond_5

    .line 1424
    :goto_0
    aget-wide v9, v5, v7

    .line 1425
    .local v9, "slot$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv":J
    const/4 v13, 0x0

    .line 1426
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 1425
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v13, v11, v16

    if-eqz v13, :cond_4

    .line 1427
    sub-int v11, v7, v6

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1428
    .local v11, "bitCount$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv":I
    :goto_1
    if-ge v13, v11, :cond_3

    .line 1429
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv":J
    const/16 v16, 0x0

    .line 1430
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    const/16 v19, 0x1

    cmp-long v20, v14, v17

    if-gez v20, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    .line 1429
    .end local v14    # "value$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_2

    .line 1431
    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    .line 1432
    .local v14, "index$iv":I
    move v15, v14

    .local v15, "index":I
    const/16 v16, 0x0

    .line 610
    .local v16, "$i$a$-forEachIndexed-SieveCache$containsValue$1":I
    const/16 v17, 0x0

    aget-object v8, v2, v15

    const/16 v18, 0x8

    const-string v12, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    return v19

    .line 611
    :cond_1
    nop

    .line 1432
    .end local v15    # "index":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$containsValue$1":I
    goto :goto_3

    .line 1429
    .end local v14    # "index$iv":I
    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x8

    .line 1434
    :goto_3
    shr-long v9, v9, v18

    .line 1428
    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0x8

    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    const/16 v18, 0x8

    .line 1436
    .end local v13    # "j$iv":I
    const/16 v8, 0x8

    if-ne v11, v8, :cond_7

    goto :goto_4

    .line 1425
    .end local v11    # "bitCount$iv":I
    :cond_4
    const/16 v17, 0x0

    .line 1423
    .end local v9    # "slot$iv":J
    :goto_4
    if-eq v7, v6, :cond_6

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    const/16 v17, 0x0

    .line 1439
    .end local v7    # "i$iv":I
    :cond_6
    nop

    .line 612
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v4    # "$i$f$forEachIndexed":I
    .end local v5    # "m$iv":[J
    .end local v6    # "lastIndex$iv":I
    :cond_7
    return v17
.end method

.method public final count()I
    .locals 1

    .line 591
    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getSize()I

    move-result v0

    return v0
.end method

.method public final count(Lkotlin/jvm/functions/Function2;)I
    .locals 24
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "predicate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 595
    .local v1, "$i$f$count":I
    const/4 v2, 0x0

    .line 596
    .local v2, "count":I
    move-object/from16 v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1395
    .local v4, "$i$f$forEach":I
    iget-object v5, v3, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1396
    .local v5, "k$iv":[Ljava/lang/Object;
    iget-object v6, v3, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1398
    .local v6, "v$iv":[Ljava/lang/Object;
    move-object v7, v3

    .local v7, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v8, 0x0

    .line 1399
    .local v8, "$i$f$forEachIndexed":I
    iget-object v9, v7, Landroidx/collection/SieveCache;->metadata:[J

    .line 1400
    .local v9, "m$iv$iv":[J
    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    .line 1402
    .local v10, "lastIndex$iv$iv":I
    const/4 v11, 0x0

    .local v11, "i$iv$iv":I
    if-gt v11, v10, :cond_5

    .line 1403
    :goto_0
    aget-wide v12, v9, v11

    .line 1404
    .local v12, "slot$iv$iv":J
    move-wide v14, v12

    .local v14, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1405
    .local v16, "$i$f$maskEmptyOrDeleted":I
    move/from16 v17, v1

    move/from16 v18, v2

    .end local v1    # "$i$f$count":I
    .end local v2    # "count":I
    .local v17, "$i$f$count":I
    .local v18, "count":I
    not-long v1, v14

    const/16 v19, 0x7

    shl-long v1, v1, v19

    and-long/2addr v1, v14

    const-wide v19, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v1, v1, v19

    .line 1404
    .end local v14    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v16    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v14, v1, v19

    if-eqz v14, :cond_4

    .line 1406
    sub-int v1, v11, v10

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 1407
    .local v1, "bitCount$iv$iv":I
    const/4 v14, 0x0

    .local v14, "j$iv$iv":I
    :goto_1
    if-ge v14, v1, :cond_3

    .line 1408
    const-wide/16 v15, 0xff

    and-long/2addr v15, v12

    .local v15, "value$iv$iv$iv":J
    const/16 v19, 0x0

    .line 1409
    .local v19, "$i$f$isFull":I
    const-wide/16 v20, 0x80

    cmp-long v22, v15, v20

    if-gez v22, :cond_0

    const/16 v20, 0x1

    goto :goto_2

    :cond_0
    const/16 v20, 0x0

    .line 1408
    .end local v15    # "value$iv$iv$iv":J
    .end local v19    # "$i$f$isFull":I
    :goto_2
    if-eqz v20, :cond_2

    .line 1410
    shl-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v14

    .line 1411
    .local v15, "index$iv$iv":I
    move/from16 v16, v15

    .local v16, "index$iv":I
    const/16 v19, 0x0

    .line 1398
    .local v19, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v20, 0x8

    aget-object v2, v5, v16

    move-object/from16 v21, v3

    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .local v21, "this_$iv":Landroidx/collection/SieveCache;
    const-string v3, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v3, v6, v16

    move-object/from16 v22, v2

    const-string v2, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v3, "value":Ljava/lang/Object;
    .local v22, "key":Ljava/lang/Object;
    move-object/from16 v2, v22

    .end local v22    # "key":Ljava/lang/Object;
    .local v2, "key":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 596
    .local v22, "$i$a$-forEach-SieveCache$count$1":I
    invoke-interface {v0, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_1

    add-int/lit8 v18, v18, 0x1

    .line 1398
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v22    # "$i$a$-forEach-SieveCache$count$1":I
    :cond_1
    nop

    .line 1411
    .end local v16    # "index$iv":I
    .end local v19    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1408
    .end local v15    # "index$iv$iv":I
    .end local v21    # "this_$iv":Landroidx/collection/SieveCache;
    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    :cond_2
    move-object/from16 v21, v3

    const/16 v20, 0x8

    .line 1413
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v21    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_3
    shr-long v12, v12, v20

    .line 1407
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v21

    const/16 v2, 0x8

    goto :goto_1

    .end local v21    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v3    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_3
    move-object/from16 v21, v3

    const/16 v20, 0x8

    .line 1415
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v14    # "j$iv$iv":I
    .restart local v21    # "this_$iv":Landroidx/collection/SieveCache;
    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    move/from16 v2, v18

    goto :goto_4

    .line 1404
    .end local v1    # "bitCount$iv$iv":I
    .end local v21    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v3    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_4
    move-object/from16 v21, v3

    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v21    # "this_$iv":Landroidx/collection/SieveCache;
    move/from16 v2, v18

    .line 1402
    .end local v12    # "slot$iv$iv":J
    .end local v18    # "count":I
    .local v2, "count":I
    :goto_4
    if-eq v11, v10, :cond_6

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v17

    move-object/from16 v3, v21

    goto/16 :goto_0

    .end local v17    # "$i$f$count":I
    .end local v21    # "this_$iv":Landroidx/collection/SieveCache;
    .local v1, "$i$f$count":I
    .restart local v3    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_5
    move/from16 v17, v1

    move-object/from16 v21, v3

    .line 1418
    .end local v1    # "$i$f$count":I
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v11    # "i$iv$iv":I
    .restart local v17    # "$i$f$count":I
    .restart local v21    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_6
    move/from16 v18, v2

    .line 1419
    .end local v2    # "count":I
    .end local v7    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v8    # "$i$f$forEachIndexed":I
    .end local v9    # "m$iv$iv":[J
    .end local v10    # "lastIndex$iv$iv":I
    .restart local v18    # "count":I
    :cond_7
    nop

    .line 597
    .end local v4    # "$i$f$forEach":I
    .end local v5    # "k$iv":[Ljava/lang/Object;
    .end local v6    # "v$iv":[Ljava/lang/Object;
    .end local v21    # "this_$iv":Landroidx/collection/SieveCache;
    return v18
.end method

.method public final dropDeletes$collection()V
    .locals 39

    .line 785
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 788
    .local v1, "metadata":[J
    if-nez v1, :cond_0

    return-void

    .line 790
    :cond_0
    iget v2, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 791
    .local v2, "capacity":I
    iget-object v3, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 792
    .local v3, "keys":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 793
    .local v4, "values":[Ljava/lang/Object;
    iget-object v5, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 837
    .local v5, "nodes":[J
    new-array v6, v2, [J

    .line 838
    .local v6, "indexMapping":[J
    const-wide v7, 0x7fffffff7fffffffL

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9, v2}, Lkotlin/collections/ArraysKt;->fill([JJII)V

    .line 841
    const/4 v10, 0x0

    .line 1538
    .local v10, "$i$f$convertMetadataForCleanup":I
    add-int/lit8 v11, v2, 0x7

    shr-int/lit8 v11, v11, 0x3

    .line 1539
    .local v11, "end$iv":I
    const/4 v12, 0x0

    .local v12, "i$iv":I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 1541
    aget-wide v13, v1, v12

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    .line 1542
    .local v13, "maskedGroup$iv":J
    move-wide v15, v7

    not-long v7, v13

    const/16 v17, 0x7

    ushr-long v17, v13, v17

    add-long v7, v7, v17

    const-wide v17, -0x101010101010102L

    and-long v7, v7, v17

    aput-wide v7, v1, v12

    .line 1539
    .end local v13    # "maskedGroup$iv":J
    add-int/lit8 v12, v12, 0x1

    move-wide v7, v15

    goto :goto_0

    :cond_1
    move-wide v15, v7

    .line 1545
    .end local v12    # "i$iv":I
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

    move-result v7

    .line 1547
    .local v7, "lastIndex$iv":I
    add-int/lit8 v8, v7, -0x1

    .line 1548
    add-int/lit8 v12, v7, -0x1

    aget-wide v12, v1, v12

    const-wide v17, 0xffffffffffffffL

    and-long v12, v12, v17

    const-wide/high16 v17, -0x100000000000000L

    or-long v12, v12, v17

    aput-wide v12, v1, v8

    .line 1550
    aget-wide v12, v1, v9

    aput-wide v12, v1, v7

    .line 1551
    nop

    .line 843
    .end local v7    # "lastIndex$iv":I
    .end local v10    # "$i$f$convertMetadataForCleanup":I
    .end local v11    # "end$iv":I
    const/4 v7, 0x0

    .line 846
    .local v7, "index":I
    :goto_1
    if-eq v7, v2, :cond_a

    .line 847
    const/4 v8, 0x0

    .line 1552
    .local v8, "$i$f$readRawMetadata":I
    shr-int/lit8 v10, v7, 0x3

    aget-wide v10, v1, v10

    and-int/lit8 v12, v7, 0x7

    shl-int/lit8 v12, v12, 0x3

    shr-long/2addr v10, v12

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    .line 847
    .end local v8    # "$i$f$readRawMetadata":I
    nop

    .line 849
    .local v10, "m":J
    const-wide/16 v17, 0x80

    cmp-long v8, v10, v17

    if-nez v8, :cond_2

    .line 850
    add-int/lit8 v7, v7, 0x1

    .line 851
    goto :goto_1

    .line 856
    :cond_2
    const-wide/16 v19, 0xfe

    cmp-long v8, v10, v19

    if-eqz v8, :cond_3

    .line 857
    add-int/lit8 v7, v7, 0x1

    .line 858
    goto :goto_1

    .line 861
    :cond_3
    aget-object v8, v3, v7

    .local v8, "k$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 1553
    .local v14, "$i$f$hash":I
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v19

    goto :goto_2

    :cond_4
    const/16 v19, 0x0

    :goto_2
    const v20, -0x3361d2af    # -8.2930312E7f

    mul-int v19, v19, v20

    .line 1555
    .local v19, "hash$iv":I
    shl-int/lit8 v20, v19, 0x10

    xor-int v8, v19, v20

    .line 861
    .end local v8    # "k$iv":Ljava/lang/Object;
    .end local v14    # "$i$f$hash":I
    .end local v19    # "hash$iv":I
    nop

    .line 862
    .local v8, "hash":I
    const/4 v14, 0x0

    .line 1556
    .local v14, "$i$f$h1":I
    ushr-int/lit8 v14, v8, 0x7

    .line 862
    .end local v14    # "$i$f$h1":I
    nop

    .line 863
    .local v14, "hash1":I
    const/16 v19, 0x0

    invoke-direct {v0, v14}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v9

    .line 868
    .local v9, "targetIndex":I
    and-int v20, v14, v2

    .line 869
    .local v20, "probeOffset":I
    sub-int v21, v9, v20

    and-int v21, v21, v2

    move-wide/from16 v22, v12

    div-int/lit8 v12, v21, 0x8

    .line 870
    .local v12, "newProbeIndex":I
    sub-int v13, v7, v20

    and-int/2addr v13, v2

    div-int/lit8 v13, v13, 0x8

    .line 872
    .local v13, "oldProbeIndex":I
    const/16 v21, 0x20

    if-ne v12, v13, :cond_6

    .line 873
    const/16 v17, 0x0

    .line 1557
    .local v17, "$i$f$h2":I
    and-int/lit8 v17, v8, 0x7f

    .line 873
    .end local v17    # "$i$f$h2":I
    move/from16 v18, v17

    .line 874
    .local v18, "hash2":I
    move-object/from16 v26, v3

    move-wide/from16 v24, v15

    move/from16 v15, v18

    move/from16 v16, v2

    .end local v2    # "capacity":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .end local v18    # "hash2":I
    .local v15, "hash2":I
    .local v16, "capacity":I
    .local v26, "keys":[Ljava/lang/Object;
    int-to-long v2, v15

    .local v2, "value$iv":J
    const/16 v17, 0x0

    .line 1558
    .local v17, "$i$f$writeRawMetadata":I
    shr-int/lit8 v18, v7, 0x3

    .line 1559
    .local v18, "i$iv":I
    and-int/lit8 v27, v7, 0x7

    shl-int/lit8 v27, v27, 0x3

    .line 1562
    .local v27, "b$iv":I
    aget-wide v28, v1, v18

    move-wide/from16 v30, v2

    .end local v2    # "value$iv":J
    .local v30, "value$iv":J
    shl-long v2, v22, v27

    not-long v2, v2

    and-long v2, v28, v2

    shl-long v22, v30, v27

    or-long v2, v2, v22

    aput-wide v2, v1, v18

    .line 1563
    nop

    .line 877
    .end local v17    # "$i$f$writeRawMetadata":I
    .end local v18    # "i$iv":I
    .end local v27    # "b$iv":I
    .end local v30    # "value$iv":J
    aget-wide v2, v6, v7

    cmp-long v17, v2, v24

    if-nez v17, :cond_5

    .line 878
    const/4 v2, 0x0

    .line 1564
    .local v2, "$i$f$createMapping":I
    move/from16 v17, v2

    .end local v2    # "$i$f$createMapping":I
    .local v17, "$i$f$createMapping":I
    int-to-long v2, v7

    shl-long v2, v2, v21

    move-wide/from16 v21, v2

    int-to-long v2, v7

    or-long v2, v21, v2

    .end local v17    # "$i$f$createMapping":I
    aput-wide v2, v6, v7

    .line 882
    :cond_5
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v17, v1, v19

    aput-wide v17, v1, v2

    .line 884
    add-int/lit8 v7, v7, 0x1

    .line 885
    move/from16 v2, v16

    move-wide/from16 v15, v24

    move-object/from16 v3, v26

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 888
    .end local v15    # "hash2":I
    .end local v16    # "capacity":I
    .end local v26    # "keys":[Ljava/lang/Object;
    .local v2, "capacity":I
    .restart local v3    # "keys":[Ljava/lang/Object;
    :cond_6
    move-object/from16 v26, v3

    move-wide/from16 v24, v15

    move/from16 v16, v2

    .end local v2    # "capacity":I
    .end local v3    # "keys":[Ljava/lang/Object;
    .restart local v16    # "capacity":I
    .restart local v26    # "keys":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1565
    .local v2, "$i$f$readRawMetadata":I
    shr-int/lit8 v3, v9, 0x3

    aget-wide v27, v1, v3

    and-int/lit8 v3, v9, 0x7

    shl-int/lit8 v3, v3, 0x3

    shr-long v27, v27, v3

    and-long v2, v27, v22

    .line 888
    .end local v2    # "$i$f$readRawMetadata":I
    nop

    .line 889
    .end local v10    # "m":J
    .local v2, "m":J
    const-wide v27, -0x100000000L

    const-wide v29, 0xffffffffL

    cmp-long v11, v2, v17

    if-nez v11, :cond_8

    .line 891
    const/4 v11, 0x0

    .line 1566
    .local v11, "$i$f$h2":I
    and-int/lit8 v11, v8, 0x7f

    .line 891
    .end local v11    # "$i$f$h2":I
    nop

    .line 892
    .local v11, "hash2":I
    move-wide/from16 v17, v2

    .end local v2    # "m":J
    .local v17, "m":J
    int-to-long v2, v11

    .local v2, "value$iv":J
    const/4 v15, 0x0

    .line 1567
    .local v15, "$i$f$writeRawMetadata":I
    shr-int/lit8 v31, v9, 0x3

    .line 1568
    .local v31, "i$iv":I
    and-int/lit8 v32, v9, 0x7

    shl-int/lit8 v32, v32, 0x3

    .line 1571
    .local v32, "b$iv":I
    aget-wide v33, v1, v31

    move/from16 v36, v11

    .end local v11    # "hash2":I
    .local v36, "hash2":I
    shl-long v10, v22, v32

    not-long v10, v10

    and-long v10, v33, v10

    shl-long v33, v2, v32

    or-long v10, v10, v33

    aput-wide v10, v1, v31

    .line 1572
    nop

    .line 893
    .end local v2    # "value$iv":J
    .end local v15    # "$i$f$writeRawMetadata":I
    .end local v31    # "i$iv":I
    .end local v32    # "b$iv":I
    const-wide/16 v2, 0x80

    .restart local v2    # "value$iv":J
    const/4 v10, 0x0

    .line 1573
    .local v10, "$i$f$writeRawMetadata":I
    shr-int/lit8 v11, v7, 0x3

    .line 1574
    .local v11, "i$iv":I
    and-int/lit8 v15, v7, 0x7

    shl-int/lit8 v15, v15, 0x3

    .line 1577
    .local v15, "b$iv":I
    aget-wide v31, v1, v11

    move-wide/from16 v33, v2

    .end local v2    # "value$iv":J
    .local v33, "value$iv":J
    shl-long v2, v22, v15

    not-long v2, v2

    and-long v2, v31, v2

    shl-long v22, v33, v15

    or-long v2, v2, v22

    aput-wide v2, v1, v11

    .line 1578
    nop

    .line 895
    .end local v10    # "$i$f$writeRawMetadata":I
    .end local v11    # "i$iv":I
    .end local v15    # "b$iv":I
    .end local v33    # "value$iv":J
    aget-object v2, v26, v7

    aput-object v2, v26, v9

    .line 896
    const/4 v2, 0x0

    aput-object v2, v26, v7

    .line 898
    aget-object v3, v4, v7

    aput-object v3, v4, v9

    .line 899
    aput-object v2, v4, v7

    .line 901
    aget-wide v2, v5, v7

    aput-wide v2, v5, v9

    .line 902
    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    aput-wide v2, v5, v7

    .line 904
    aget-wide v2, v6, v7

    .line 905
    .local v2, "mapping":J
    move-wide v10, v2

    .local v10, "$this$src$iv":J
    const/4 v15, 0x0

    .line 1579
    .local v15, "$i$f$getSrc":I
    shr-long v22, v10, v21

    move-wide/from16 v31, v2

    .end local v2    # "mapping":J
    .local v31, "mapping":J
    and-long v2, v22, v29

    long-to-int v3, v2

    .line 905
    .end local v10    # "$this$src$iv":J
    .end local v15    # "$i$f$getSrc":I
    nop

    .line 906
    .local v3, "src":I
    const v2, 0x7fffffff

    if-eq v3, v2, :cond_7

    .line 907
    aget-wide v10, v6, v3

    .local v10, "mapping$iv":J
    const/4 v2, 0x0

    .line 1580
    .local v2, "$i$f$createDstMapping":I
    and-long v22, v10, v27

    move/from16 v33, v2

    move v15, v3

    .end local v2    # "$i$f$createDstMapping":I
    .end local v3    # "src":I
    .local v15, "src":I
    .local v33, "$i$f$createDstMapping":I
    int-to-long v2, v9

    or-long v2, v22, v2

    .end local v10    # "mapping$iv":J
    .end local v33    # "$i$f$createDstMapping":I
    aput-wide v2, v6, v15

    .line 908
    aget-wide v2, v6, v7

    .local v2, "mapping$iv":J
    const/4 v10, 0x0

    .line 1581
    .local v10, "$i$f$eraseSrcMapping":I
    and-long v22, v2, v29

    or-long v2, v22, v27

    .end local v2    # "mapping$iv":J
    .end local v10    # "$i$f$eraseSrcMapping":I
    aput-wide v2, v6, v7

    goto :goto_3

    .line 910
    .end local v15    # "src":I
    .restart local v3    # "src":I
    :cond_7
    move v15, v3

    .end local v3    # "src":I
    .restart local v15    # "src":I
    const v2, 0x7fffffff

    .local v2, "src$iv":I
    const/4 v3, 0x0

    .line 1582
    .local v3, "$i$f$createMapping":I
    int-to-long v10, v2

    shl-long v10, v10, v21

    move/from16 v22, v2

    move/from16 v23, v3

    .end local v2    # "src$iv":I
    .end local v3    # "$i$f$createMapping":I
    .local v22, "src$iv":I
    .local v23, "$i$f$createMapping":I
    int-to-long v2, v9

    or-long/2addr v2, v10

    .end local v22    # "src$iv":I
    .end local v23    # "$i$f$createMapping":I
    aput-wide v2, v6, v7

    .line 912
    :goto_3
    const v2, 0x7fffffff

    .local v2, "dst$iv":I
    const/4 v3, 0x0

    .line 1583
    .restart local v3    # "$i$f$createMapping":I
    int-to-long v10, v7

    shl-long v10, v10, v21

    move/from16 v22, v3

    move-object/from16 v33, v4

    .end local v3    # "$i$f$createMapping":I
    .end local v4    # "values":[Ljava/lang/Object;
    .local v22, "$i$f$createMapping":I
    .local v33, "values":[Ljava/lang/Object;
    int-to-long v3, v2

    or-long/2addr v3, v10

    .end local v2    # "dst$iv":I
    .end local v22    # "$i$f$createMapping":I
    aput-wide v3, v6, v9

    move-object/from16 v27, v5

    .end local v15    # "src":I
    .end local v31    # "mapping":J
    .end local v36    # "hash2":I
    goto/16 :goto_5

    .line 915
    .end local v17    # "m":J
    .end local v33    # "values":[Ljava/lang/Object;
    .local v2, "m":J
    .restart local v4    # "values":[Ljava/lang/Object;
    :cond_8
    move-wide/from16 v17, v2

    move-object/from16 v33, v4

    .end local v2    # "m":J
    .end local v4    # "values":[Ljava/lang/Object;
    .restart local v17    # "m":J
    .restart local v33    # "values":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 1584
    .local v2, "$i$f$h2":I
    and-int/lit8 v2, v8, 0x7f

    .line 915
    .end local v2    # "$i$f$h2":I
    nop

    .line 916
    .local v2, "hash2":I
    int-to-long v3, v2

    .local v3, "value$iv":J
    const/4 v10, 0x0

    .line 1585
    .local v10, "$i$f$writeRawMetadata":I
    shr-int/lit8 v11, v9, 0x3

    .line 1586
    .restart local v11    # "i$iv":I
    and-int/lit8 v15, v9, 0x7

    shl-int/lit8 v15, v15, 0x3

    .line 1589
    .local v15, "b$iv":I
    aget-wide v31, v1, v11

    move/from16 v34, v2

    move-wide/from16 v36, v3

    .end local v2    # "hash2":I
    .end local v3    # "value$iv":J
    .local v34, "hash2":I
    .local v36, "value$iv":J
    shl-long v2, v22, v15

    not-long v2, v2

    and-long v2, v31, v2

    shl-long v22, v36, v15

    or-long v2, v2, v22

    aput-wide v2, v1, v11

    .line 1590
    nop

    .line 918
    .end local v10    # "$i$f$writeRawMetadata":I
    .end local v11    # "i$iv":I
    .end local v15    # "b$iv":I
    .end local v36    # "value$iv":J
    aget-object v2, v26, v9

    .line 919
    .local v2, "oldKey":Ljava/lang/Object;
    aget-object v3, v26, v7

    aput-object v3, v26, v9

    .line 920
    aput-object v2, v26, v7

    .line 922
    aget-object v3, v33, v9

    .line 923
    .local v3, "oldValue":Ljava/lang/Object;
    aget-object v4, v33, v7

    aput-object v4, v33, v9

    .line 924
    aput-object v3, v33, v7

    .line 926
    aget-wide v10, v5, v9

    .line 927
    .local v10, "oldNode":J
    aget-wide v22, v5, v7

    aput-wide v22, v5, v9

    .line 928
    aput-wide v10, v5, v7

    .line 930
    aget-wide v22, v6, v7

    .line 931
    .local v22, "mapping":J
    move-wide/from16 v31, v22

    .local v31, "$this$src$iv":J
    const/4 v4, 0x0

    .line 1591
    .local v4, "$i$f$getSrc":I
    shr-long v36, v31, v21

    move-object v15, v2

    move-object/from16 v38, v3

    .end local v2    # "oldKey":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .local v15, "oldKey":Ljava/lang/Object;
    .local v38, "oldValue":Ljava/lang/Object;
    and-long v2, v36, v29

    long-to-int v3, v2

    .line 931
    .end local v4    # "$i$f$getSrc":I
    .end local v31    # "$this$src$iv":J
    nop

    .line 932
    .local v3, "src":I
    const v2, 0x7fffffff

    if-eq v3, v2, :cond_9

    .line 933
    aget-wide v31, v6, v3

    .local v31, "mapping$iv":J
    const/4 v2, 0x0

    .line 1592
    .local v2, "$i$f$createDstMapping":I
    and-long v27, v31, v27

    move/from16 v35, v2

    move v4, v3

    .end local v2    # "$i$f$createDstMapping":I
    .end local v3    # "src":I
    .local v4, "src":I
    .local v35, "$i$f$createDstMapping":I
    int-to-long v2, v9

    or-long v2, v27, v2

    .end local v31    # "mapping$iv":J
    .end local v35    # "$i$f$createDstMapping":I
    aput-wide v2, v6, v4

    .line 934
    aget-wide v2, v6, v7

    .local v2, "mapping$iv":J
    const/16 v27, 0x0

    .line 1593
    .local v27, "$i$f$createSrcMapping":I
    move-wide/from16 v31, v2

    .end local v2    # "mapping$iv":J
    .restart local v31    # "mapping$iv":J
    int-to-long v2, v9

    shl-long v2, v2, v21

    and-long v29, v31, v29

    or-long v2, v2, v29

    .end local v27    # "$i$f$createSrcMapping":I
    .end local v31    # "mapping$iv":J
    aput-wide v2, v6, v7

    move v3, v4

    goto :goto_4

    .line 936
    .end local v4    # "src":I
    .restart local v3    # "src":I
    :cond_9
    move v4, v3

    .end local v3    # "src":I
    .restart local v4    # "src":I
    const/4 v2, 0x0

    .line 1594
    .local v2, "$i$f$createMapping":I
    move/from16 v27, v2

    .end local v2    # "$i$f$createMapping":I
    .local v27, "$i$f$createMapping":I
    int-to-long v2, v9

    shl-long v2, v2, v21

    move-wide/from16 v28, v2

    int-to-long v2, v9

    or-long v2, v28, v2

    .end local v27    # "$i$f$createMapping":I
    aput-wide v2, v6, v7

    .line 937
    move v3, v7

    .line 940
    .end local v4    # "src":I
    .restart local v3    # "src":I
    :goto_4
    const/4 v2, 0x0

    .line 1595
    .restart local v2    # "$i$f$createMapping":I
    move-object/from16 v27, v5

    .end local v5    # "nodes":[J
    .local v27, "nodes":[J
    int-to-long v4, v3

    shl-long v4, v4, v21

    move/from16 v28, v2

    move/from16 v21, v3

    .end local v2    # "$i$f$createMapping":I
    .end local v3    # "src":I
    .local v21, "src":I
    .local v28, "$i$f$createMapping":I
    int-to-long v2, v7

    or-long/2addr v2, v4

    .end local v28    # "$i$f$createMapping":I
    aput-wide v2, v6, v9

    .line 944
    nop

    .end local v10    # "oldNode":J
    .end local v15    # "oldKey":Ljava/lang/Object;
    .end local v21    # "src":I
    .end local v22    # "mapping":J
    .end local v34    # "hash2":I
    .end local v38    # "oldValue":Ljava/lang/Object;
    add-int/lit8 v7, v7, -0x1

    .line 948
    :goto_5
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-wide v3, v1, v19

    aput-wide v3, v1, v2

    .line 950
    nop

    .end local v8    # "hash":I
    .end local v9    # "targetIndex":I
    .end local v12    # "newProbeIndex":I
    .end local v13    # "oldProbeIndex":I
    .end local v14    # "hash1":I
    .end local v17    # "m":J
    .end local v20    # "probeOffset":I
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, v16

    move-wide/from16 v15, v24

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    move-object/from16 v4, v33

    const/4 v9, 0x0

    goto/16 :goto_1

    .line 953
    .end local v16    # "capacity":I
    .end local v26    # "keys":[Ljava/lang/Object;
    .end local v27    # "nodes":[J
    .end local v33    # "values":[Ljava/lang/Object;
    .local v2, "capacity":I
    .local v3, "keys":[Ljava/lang/Object;
    .local v4, "values":[Ljava/lang/Object;
    .restart local v5    # "nodes":[J
    :cond_a
    invoke-direct {v0}, Landroidx/collection/SieveCache;->initializeGrowth()V

    .line 955
    invoke-direct {v0, v6}, Landroidx/collection/SieveCache;->fixupNodes([J)V

    .line 956
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 25
    .param p1, "other"    # Ljava/lang/Object;

    .line 1068
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 1069
    return v2

    .line 1072
    :cond_0
    instance-of v3, v1, Landroidx/collection/SieveCache;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1073
    return v4

    .line 1075
    :cond_1
    move-object v3, v1

    check-cast v3, Landroidx/collection/SieveCache;

    invoke-virtual {v3}, Landroidx/collection/SieveCache;->getSize()I

    move-result v3

    invoke-virtual {v0}, Landroidx/collection/SieveCache;->getSize()I

    move-result v5

    if-ne v3, v5, :cond_b

    move-object v3, v1

    check-cast v3, Landroidx/collection/SieveCache;

    iget v3, v3, Landroidx/collection/SieveCache;->_count:I

    iget v5, v0, Landroidx/collection/SieveCache;->_count:I

    if-eq v3, v5, :cond_2

    const/16 v19, 0x0

    goto/16 :goto_5

    .line 1079
    :cond_2
    move-object v3, v1

    check-cast v3, Landroidx/collection/SieveCache;

    .line 1081
    .local v3, "o":Landroidx/collection/SieveCache;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v6, 0x0

    .line 1659
    .local v6, "$i$f$forEach":I
    iget-object v7, v5, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1660
    .local v7, "k$iv":[Ljava/lang/Object;
    iget-object v8, v5, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1662
    .local v8, "v$iv":[Ljava/lang/Object;
    move-object v9, v5

    .local v9, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v10, 0x0

    .line 1663
    .local v10, "$i$f$forEachIndexed":I
    iget-object v11, v9, Landroidx/collection/SieveCache;->metadata:[J

    .line 1664
    .local v11, "m$iv$iv":[J
    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    .line 1666
    .local v12, "lastIndex$iv$iv":I
    const/4 v13, 0x0

    .local v13, "i$iv$iv":I
    if-gt v13, v12, :cond_8

    .line 1667
    :goto_0
    aget-wide v14, v11, v13

    .line 1668
    .local v14, "slot$iv$iv":J
    move-wide/from16 v16, v14

    .local v16, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/16 v18, 0x0

    .line 1669
    .local v18, "$i$f$maskEmptyOrDeleted":I
    move-object/from16 v20, v5

    move-wide/from16 v4, v16

    const/16 v16, 0x1

    const/16 v19, 0x0

    move-object/from16 v17, v3

    .end local v3    # "o":Landroidx/collection/SieveCache;
    .end local v5    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v16    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v4, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .local v17, "o":Landroidx/collection/SieveCache;
    .local v20, "this_$iv":Landroidx/collection/SieveCache;
    not-long v2, v4

    const/16 v21, 0x7

    shl-long v2, v2, v21

    and-long/2addr v2, v4

    const-wide v21, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v21

    .line 1668
    .end local v4    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v18    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v4, v2, v21

    if-eqz v4, :cond_7

    .line 1670
    sub-int v2, v13, v12

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1671
    .local v2, "bitCount$iv$iv":I
    const/4 v4, 0x0

    .local v4, "j$iv$iv":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 1672
    const-wide/16 v21, 0xff

    and-long v21, v14, v21

    .local v21, "value$iv$iv$iv":J
    const/4 v5, 0x0

    .line 1673
    .local v5, "$i$f$isFull":I
    const-wide/16 v23, 0x80

    cmp-long v18, v21, v23

    if-gez v18, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 1672
    .end local v5    # "$i$f$isFull":I
    .end local v21    # "value$iv$iv$iv":J
    :goto_2
    if-eqz v5, :cond_5

    .line 1674
    shl-int/lit8 v5, v13, 0x3

    add-int/2addr v5, v4

    .line 1675
    .local v5, "index$iv$iv":I
    move/from16 v18, v5

    .local v18, "index$iv":I
    const/16 v21, 0x0

    .line 1662
    .local v21, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v22, 0x8

    aget-object v3, v7, v18

    const-string v0, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v0, v8, v18

    const-string v1, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "value":Ljava/lang/Object;
    .local v3, "key":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1082
    .local v1, "$i$a$-forEach-SieveCache$equals$1":I
    move/from16 v23, v1

    move-object/from16 v1, v17

    move/from16 v17, v4

    .end local v4    # "j$iv$iv":I
    .local v1, "o":Landroidx/collection/SieveCache;
    .local v17, "j$iv$iv":I
    .local v23, "$i$a$-forEach-SieveCache$equals$1":I
    invoke-virtual {v1, v3}, Landroidx/collection/SieveCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1083
    return v19

    .line 1085
    :cond_4
    nop

    .line 1662
    .end local v0    # "value":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v23    # "$i$a$-forEach-SieveCache$equals$1":I
    nop

    .line 1675
    .end local v18    # "index$iv":I
    .end local v21    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1672
    .end local v1    # "o":Landroidx/collection/SieveCache;
    .end local v5    # "index$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    .local v17, "o":Landroidx/collection/SieveCache;
    :cond_5
    move-object/from16 v1, v17

    const/16 v22, 0x8

    move/from16 v17, v4

    .line 1677
    .end local v4    # "j$iv$iv":I
    .restart local v1    # "o":Landroidx/collection/SieveCache;
    .local v17, "j$iv$iv":I
    :goto_3
    shr-long v14, v14, v22

    .line 1671
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    const/16 v3, 0x8

    move-object/from16 v1, p1

    .end local v17    # "j$iv$iv":I
    .restart local v4    # "j$iv$iv":I
    goto :goto_1

    .end local v1    # "o":Landroidx/collection/SieveCache;
    .local v17, "o":Landroidx/collection/SieveCache;
    :cond_6
    move-object/from16 v1, v17

    const/16 v22, 0x8

    move/from16 v17, v4

    .line 1679
    .end local v4    # "j$iv$iv":I
    .end local v17    # "o":Landroidx/collection/SieveCache;
    .restart local v1    # "o":Landroidx/collection/SieveCache;
    const/16 v0, 0x8

    if-ne v2, v0, :cond_a

    goto :goto_4

    .line 1668
    .end local v1    # "o":Landroidx/collection/SieveCache;
    .end local v2    # "bitCount$iv$iv":I
    .restart local v17    # "o":Landroidx/collection/SieveCache;
    :cond_7
    move-object/from16 v1, v17

    .line 1666
    .end local v14    # "slot$iv$iv":J
    .end local v17    # "o":Landroidx/collection/SieveCache;
    .restart local v1    # "o":Landroidx/collection/SieveCache;
    :goto_4
    if-eq v13, v12, :cond_9

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object v3, v1

    move-object/from16 v5, v20

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .end local v1    # "o":Landroidx/collection/SieveCache;
    .end local v20    # "this_$iv":Landroidx/collection/SieveCache;
    .local v3, "o":Landroidx/collection/SieveCache;
    .local v5, "this_$iv":Landroidx/collection/SieveCache;
    :cond_8
    move-object v1, v3

    move-object/from16 v20, v5

    const/16 v16, 0x1

    .line 1682
    .end local v3    # "o":Landroidx/collection/SieveCache;
    .end local v5    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v13    # "i$iv$iv":I
    .restart local v1    # "o":Landroidx/collection/SieveCache;
    .restart local v20    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_9
    nop

    .line 1683
    .end local v9    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "m$iv$iv":[J
    .end local v12    # "lastIndex$iv$iv":I
    :cond_a
    nop

    .line 1087
    .end local v6    # "$i$f$forEach":I
    .end local v7    # "k$iv":[Ljava/lang/Object;
    .end local v8    # "v$iv":[Ljava/lang/Object;
    .end local v20    # "this_$iv":Landroidx/collection/SieveCache;
    return v16

    .line 1075
    .end local v1    # "o":Landroidx/collection/SieveCache;
    :cond_b
    const/16 v19, 0x0

    .line 1076
    :goto_5
    return v19
.end method

.method public final evictAll()V
    .locals 1

    .line 499
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/SieveCache;->trimToSize(I)V

    .line 500
    return-void
.end method

.method public final forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 21
    .param p1, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "block"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 548
    .local v2, "$i$f$forEach":I
    iget-object v3, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 549
    .local v3, "k":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 551
    .local v4, "v":[Ljava/lang/Object;
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v6, 0x0

    .line 1285
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/SieveCache;->metadata:[J

    .line 1286
    .local v7, "m$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1288
    .local v8, "lastIndex$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv":I
    if-gt v9, v8, :cond_4

    .line 1289
    :goto_0
    aget-wide v10, v7, v9

    .line 1290
    .local v10, "slot$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv":J
    const/4 v14, 0x0

    .line 1291
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move v15, v2

    move-object/from16 v16, v3

    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k":[Ljava/lang/Object;
    .local v15, "$i$f$forEach":I
    .local v16, "k":[Ljava/lang/Object;
    not-long v2, v12

    const/16 v17, 0x7

    shl-long v2, v2, v17

    and-long/2addr v2, v12

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v17

    .line 1290
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v2, v17

    if-eqz v12, :cond_3

    .line 1292
    sub-int v2, v9, v8

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    .line 1293
    .local v2, "bitCount$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv":I
    :goto_1
    if-ge v12, v2, :cond_2

    .line 1294
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv":J
    const/16 v17, 0x0

    .line 1295
    .local v17, "$i$f$isFull":I
    const-wide/16 v18, 0x80

    cmp-long v20, v13, v18

    if-gez v20, :cond_0

    const/16 v18, 0x1

    goto :goto_2

    :cond_0
    const/16 v18, 0x0

    .line 1294
    .end local v13    # "value$iv$iv":J
    .end local v17    # "$i$f$isFull":I
    :goto_2
    if-eqz v18, :cond_1

    .line 1296
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1297
    .local v13, "index$iv":I
    move v14, v13

    .local v14, "index":I
    const/16 v17, 0x0

    .line 551
    .local v17, "$i$a$-forEachIndexed-SieveCache$forEach$1":I
    const/16 v18, 0x8

    aget-object v3, v16, v14

    const-string v0, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v0, v4, v14

    move-object/from16 v19, v4

    .end local v4    # "v":[Ljava/lang/Object;
    .local v19, "v":[Ljava/lang/Object;
    const-string v4, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    .end local v14    # "index":I
    .end local v17    # "$i$a$-forEachIndexed-SieveCache$forEach$1":I
    goto :goto_3

    .line 1294
    .end local v13    # "index$iv":I
    .end local v19    # "v":[Ljava/lang/Object;
    .restart local v4    # "v":[Ljava/lang/Object;
    :cond_1
    move-object/from16 v19, v4

    const/16 v18, 0x8

    .line 1299
    .end local v4    # "v":[Ljava/lang/Object;
    .restart local v19    # "v":[Ljava/lang/Object;
    :goto_3
    shr-long v10, v10, v18

    .line 1293
    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    goto :goto_1

    .end local v19    # "v":[Ljava/lang/Object;
    .restart local v4    # "v":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v4

    const/16 v18, 0x8

    .line 1301
    .end local v4    # "v":[Ljava/lang/Object;
    .end local v12    # "j$iv":I
    .restart local v19    # "v":[Ljava/lang/Object;
    const/16 v0, 0x8

    if-ne v2, v0, :cond_6

    goto :goto_4

    .line 1290
    .end local v2    # "bitCount$iv":I
    .end local v19    # "v":[Ljava/lang/Object;
    .restart local v4    # "v":[Ljava/lang/Object;
    :cond_3
    move-object/from16 v19, v4

    .line 1288
    .end local v4    # "v":[Ljava/lang/Object;
    .end local v10    # "slot$iv":J
    .restart local v19    # "v":[Ljava/lang/Object;
    :goto_4
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    goto :goto_0

    .end local v15    # "$i$f$forEach":I
    .end local v16    # "k":[Ljava/lang/Object;
    .end local v19    # "v":[Ljava/lang/Object;
    .local v2, "$i$f$forEach":I
    .restart local v3    # "k":[Ljava/lang/Object;
    .restart local v4    # "v":[Ljava/lang/Object;
    :cond_4
    move v15, v2

    move-object/from16 v16, v3

    move-object/from16 v19, v4

    .line 1304
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k":[Ljava/lang/Object;
    .end local v4    # "v":[Ljava/lang/Object;
    .end local v9    # "i$iv":I
    .restart local v15    # "$i$f$forEach":I
    .restart local v16    # "k":[Ljava/lang/Object;
    .restart local v19    # "v":[Ljava/lang/Object;
    :cond_5
    nop

    .line 552
    .end local v5    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv":[J
    .end local v8    # "lastIndex$iv":I
    :cond_6
    return-void
.end method

.method public final forEachIndexed(Lkotlin/jvm/functions/Function1;)V
    .locals 17
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1025
    .local v1, "$i$f$forEachIndexed":I
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/collection/SieveCache;->metadata:[J

    .line 1026
    .local v3, "m":[J
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    .line 1028
    .local v4, "lastIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    if-gt v5, v4, :cond_4

    .line 1029
    :goto_0
    aget-wide v6, v3, v5

    .line 1030
    .local v6, "slot":J
    move-wide v8, v6

    .local v8, "$this$maskEmptyOrDeleted$iv":J
    const/4 v10, 0x0

    .line 1632
    .local v10, "$i$f$maskEmptyOrDeleted":I
    not-long v11, v8

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v8, v11, v13

    .line 1030
    .end local v8    # "$this$maskEmptyOrDeleted$iv":J
    .end local v10    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v10, v8, v13

    if-eqz v10, :cond_3

    .line 1035
    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    .line 1036
    .local v8, "bitCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v8, :cond_2

    .line 1037
    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    .local v11, "value$iv":J
    const/4 v13, 0x0

    .line 1633
    .local v13, "$i$f$isFull":I
    const-wide/16 v14, 0x80

    cmp-long v16, v11, v14

    if-gez v16, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    .line 1037
    .end local v11    # "value$iv":J
    .end local v13    # "$i$f$isFull":I
    :goto_2
    if-eqz v14, :cond_1

    .line 1038
    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    .line 1039
    .local v11, "index":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .end local v11    # "index":I
    :cond_1
    shr-long/2addr v6, v9

    .line 1036
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1043
    .end local v10    # "j":I
    :cond_2
    if-eq v8, v9, :cond_3

    return-void

    .line 1028
    .end local v6    # "slot":J
    .end local v8    # "bitCount":I
    :cond_3
    if-eq v5, v4, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1046
    .end local v5    # "i":I
    :cond_4
    return-void
.end method

.method public final forEachKey(Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TK;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 561
    .local v1, "$i$f$forEachKey":I
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 563
    .local v3, "k":[Ljava/lang/Object;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v5, 0x0

    .line 1305
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/SieveCache;->metadata:[J

    .line 1306
    .local v6, "m$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 1308
    .local v7, "lastIndex$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv":I
    if-gt v8, v7, :cond_4

    .line 1309
    :goto_0
    aget-wide v9, v6, v8

    .line 1310
    .local v9, "slot$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv":J
    const/4 v13, 0x0

    .line 1311
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 1310
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v13, v11, v16

    if-eqz v13, :cond_3

    .line 1312
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1313
    .local v11, "bitCount$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv":I
    :goto_1
    if-ge v13, v11, :cond_2

    .line 1314
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv":J
    const/16 v16, 0x0

    .line 1315
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v19, v14, v17

    if-gez v19, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1314
    .end local v14    # "value$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_1

    .line 1316
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 1317
    .local v14, "index$iv":I
    move v15, v14

    .local v15, "index":I
    const/16 v16, 0x0

    .line 563
    .local v16, "$i$a$-forEachIndexed-SieveCache$forEachKey$1":I
    const/16 v17, 0x8

    aget-object v12, v3, v15

    move/from16 v18, v1

    .end local v1    # "$i$f$forEachKey":I
    .local v18, "$i$f$forEachKey":I
    const-string v1, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .end local v15    # "index":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$forEachKey$1":I
    goto :goto_3

    .line 1314
    .end local v14    # "index$iv":I
    .end local v18    # "$i$f$forEachKey":I
    .restart local v1    # "$i$f$forEachKey":I
    :cond_1
    move/from16 v18, v1

    const/16 v17, 0x8

    .line 1319
    .end local v1    # "$i$f$forEachKey":I
    .restart local v18    # "$i$f$forEachKey":I
    :goto_3
    shr-long v9, v9, v17

    .line 1313
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v18

    const/16 v12, 0x8

    goto :goto_1

    .end local v18    # "$i$f$forEachKey":I
    .restart local v1    # "$i$f$forEachKey":I
    :cond_2
    move/from16 v18, v1

    const/16 v17, 0x8

    .line 1321
    .end local v1    # "$i$f$forEachKey":I
    .end local v13    # "j$iv":I
    .restart local v18    # "$i$f$forEachKey":I
    const/16 v1, 0x8

    if-ne v11, v1, :cond_6

    goto :goto_4

    .line 1310
    .end local v11    # "bitCount$iv":I
    .end local v18    # "$i$f$forEachKey":I
    .restart local v1    # "$i$f$forEachKey":I
    :cond_3
    move/from16 v18, v1

    .line 1308
    .end local v1    # "$i$f$forEachKey":I
    .end local v9    # "slot$iv":J
    .restart local v18    # "$i$f$forEachKey":I
    :goto_4
    if-eq v8, v7, :cond_5

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    goto :goto_0

    .end local v18    # "$i$f$forEachKey":I
    .restart local v1    # "$i$f$forEachKey":I
    :cond_4
    move/from16 v18, v1

    .line 1324
    .end local v1    # "$i$f$forEachKey":I
    .end local v8    # "i$iv":I
    .restart local v18    # "$i$f$forEachKey":I
    :cond_5
    nop

    .line 564
    .end local v4    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv":[J
    .end local v7    # "lastIndex$iv":I
    :cond_6
    return-void
.end method

.method public final forEachValue(Lkotlin/jvm/functions/Function1;)V
    .locals 20
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "block"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 573
    .local v1, "$i$f$forEachValue":I
    move-object/from16 v2, p0

    iget-object v3, v2, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 575
    .local v3, "v":[Ljava/lang/Object;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v5, 0x0

    .line 1325
    .local v5, "$i$f$forEachIndexed":I
    iget-object v6, v4, Landroidx/collection/SieveCache;->metadata:[J

    .line 1326
    .local v6, "m$iv":[J
    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    .line 1328
    .local v7, "lastIndex$iv":I
    const/4 v8, 0x0

    .local v8, "i$iv":I
    if-gt v8, v7, :cond_4

    .line 1329
    :goto_0
    aget-wide v9, v6, v8

    .line 1330
    .local v9, "slot$iv":J
    move-wide v11, v9

    .local v11, "$this$maskEmptyOrDeleted$iv$iv":J
    const/4 v13, 0x0

    .line 1331
    .local v13, "$i$f$maskEmptyOrDeleted":I
    not-long v14, v11

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v11

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v11, v14, v16

    .line 1330
    .end local v11    # "$this$maskEmptyOrDeleted$iv$iv":J
    .end local v13    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v13, v11, v16

    if-eqz v13, :cond_3

    .line 1332
    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    .line 1333
    .local v11, "bitCount$iv":I
    const/4 v13, 0x0

    .local v13, "j$iv":I
    :goto_1
    if-ge v13, v11, :cond_2

    .line 1334
    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    .local v14, "value$iv$iv":J
    const/16 v16, 0x0

    .line 1335
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v19, v14, v17

    if-gez v19, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1334
    .end local v14    # "value$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_1

    .line 1336
    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    .line 1337
    .local v14, "index$iv":I
    move v15, v14

    .local v15, "index":I
    const/16 v16, 0x0

    .line 575
    .local v16, "$i$a$-forEachIndexed-SieveCache$forEachValue$1":I
    const/16 v17, 0x8

    aget-object v12, v3, v15

    move/from16 v18, v1

    .end local v1    # "$i$f$forEachValue":I
    .local v18, "$i$f$forEachValue":I
    const-string v1, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .end local v15    # "index":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$forEachValue$1":I
    goto :goto_3

    .line 1334
    .end local v14    # "index$iv":I
    .end local v18    # "$i$f$forEachValue":I
    .restart local v1    # "$i$f$forEachValue":I
    :cond_1
    move/from16 v18, v1

    const/16 v17, 0x8

    .line 1339
    .end local v1    # "$i$f$forEachValue":I
    .restart local v18    # "$i$f$forEachValue":I
    :goto_3
    shr-long v9, v9, v17

    .line 1333
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v18

    const/16 v12, 0x8

    goto :goto_1

    .end local v18    # "$i$f$forEachValue":I
    .restart local v1    # "$i$f$forEachValue":I
    :cond_2
    move/from16 v18, v1

    const/16 v17, 0x8

    .line 1341
    .end local v1    # "$i$f$forEachValue":I
    .end local v13    # "j$iv":I
    .restart local v18    # "$i$f$forEachValue":I
    const/16 v1, 0x8

    if-ne v11, v1, :cond_6

    goto :goto_4

    .line 1330
    .end local v11    # "bitCount$iv":I
    .end local v18    # "$i$f$forEachValue":I
    .restart local v1    # "$i$f$forEachValue":I
    :cond_3
    move/from16 v18, v1

    .line 1328
    .end local v1    # "$i$f$forEachValue":I
    .end local v9    # "slot$iv":J
    .restart local v18    # "$i$f$forEachValue":I
    :goto_4
    if-eq v8, v7, :cond_5

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    goto :goto_0

    .end local v18    # "$i$f$forEachValue":I
    .restart local v1    # "$i$f$forEachValue":I
    :cond_4
    move/from16 v18, v1

    .line 1344
    .end local v1    # "$i$f$forEachValue":I
    .end local v8    # "i$iv":I
    .restart local v18    # "$i$f$forEachValue":I
    :cond_5
    nop

    .line 576
    .end local v4    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "m$iv":[J
    .end local v7    # "lastIndex$iv":I
    :cond_6
    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    .line 228
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 229
    move-object v1, p0

    .local v1, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v2, 0x0

    .line 1160
    .local v2, "$i$f$markNodeVisited":I
    iget-object v3, v1, Landroidx/collection/SieveCache;->nodes:[J

    iget-object v4, v1, Landroidx/collection/SieveCache;->nodes:[J

    aget-wide v5, v4, v0

    const-wide v7, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr v5, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    or-long/2addr v5, v7

    aput-wide v5, v3, v0

    .line 1161
    nop

    .line 230
    .end local v1    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v2    # "$i$f$markNodeVisited":I
    iget-object v1, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 233
    :cond_0
    iget-object v1, p0, Landroidx/collection/SieveCache;->createValueFromKey:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 234
    .local v1, "createdValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-object v1
.end method

.method public final getCapacity()I
    .locals 1

    .line 171
    iget v0, p0, Landroidx/collection/SieveCache;->_capacity:I

    return v0
.end method

.method public final getCount()I
    .locals 1

    .line 162
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    .line 153
    iget v0, p0, Landroidx/collection/SieveCache;->_maxSize:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    .line 143
    iget v0, p0, Landroidx/collection/SieveCache;->_size:I

    return v0
.end method

.method public hashCode()I
    .locals 23

    .line 1053
    const/4 v0, 0x0

    .line 1055
    .local v0, "hash":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v2, 0x0

    .line 1634
    .local v2, "$i$f$forEach":I
    iget-object v3, v1, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1635
    .local v3, "k$iv":[Ljava/lang/Object;
    iget-object v4, v1, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1637
    .local v4, "v$iv":[Ljava/lang/Object;
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v6, 0x0

    .line 1638
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/SieveCache;->metadata:[J

    .line 1639
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1641
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_4

    .line 1642
    :goto_0
    aget-wide v10, v7, v9

    .line 1643
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1644
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move/from16 v16, v0

    move-object v15, v1

    .end local v0    # "hash":I
    .end local v1    # "this_$iv":Landroidx/collection/SieveCache;
    .local v15, "this_$iv":Landroidx/collection/SieveCache;
    .local v16, "hash":I
    not-long v0, v12

    const/16 v17, 0x7

    shl-long v0, v0, v17

    and-long/2addr v0, v12

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v17

    .line 1643
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v0, v17

    if-eqz v12, :cond_3

    .line 1645
    sub-int v0, v9, v8

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1646
    .local v0, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_1
    if-ge v12, v0, :cond_2

    .line 1647
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v17, 0x0

    .line 1648
    .local v17, "$i$f$isFull":I
    const-wide/16 v18, 0x80

    cmp-long v20, v13, v18

    if-gez v20, :cond_0

    const/16 v18, 0x1

    goto :goto_2

    :cond_0
    const/16 v18, 0x0

    .line 1647
    .end local v13    # "value$iv$iv$iv":J
    .end local v17    # "$i$f$isFull":I
    :goto_2
    if-eqz v18, :cond_1

    .line 1649
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1650
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v17, 0x0

    .line 1637
    .local v17, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v18, 0x8

    aget-object v1, v3, v14

    move/from16 v19, v2

    .end local v2    # "$i$f$forEach":I
    .local v19, "$i$f$forEach":I
    const-string v2, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v2, v4, v14

    move-object/from16 v20, v1

    const-string v1, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .local v2, "value":Ljava/lang/Object;
    .local v20, "key":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1055
    .local v1, "$i$a$-forEach-SieveCache$hashCode$1":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->hashCode()I

    move-result v21

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v22

    xor-int v21, v21, v22

    add-int v16, v16, v21

    .line 1637
    .end local v1    # "$i$a$-forEach-SieveCache$hashCode$1":I
    .end local v2    # "value":Ljava/lang/Object;
    .end local v20    # "key":Ljava/lang/Object;
    nop

    .line 1650
    .end local v14    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1647
    .end local v13    # "index$iv$iv":I
    .end local v19    # "$i$f$forEach":I
    .local v2, "$i$f$forEach":I
    :cond_1
    move/from16 v19, v2

    const/16 v18, 0x8

    .line 1652
    .end local v2    # "$i$f$forEach":I
    .restart local v19    # "$i$f$forEach":I
    :goto_3
    shr-long v10, v10, v18

    .line 1646
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v19

    const/16 v1, 0x8

    goto :goto_1

    .end local v19    # "$i$f$forEach":I
    .restart local v2    # "$i$f$forEach":I
    :cond_2
    move/from16 v19, v2

    const/16 v18, 0x8

    .line 1654
    .end local v2    # "$i$f$forEach":I
    .end local v12    # "j$iv$iv":I
    .restart local v19    # "$i$f$forEach":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    move/from16 v0, v16

    goto :goto_4

    .line 1643
    .end local v0    # "bitCount$iv$iv":I
    .end local v19    # "$i$f$forEach":I
    .restart local v2    # "$i$f$forEach":I
    :cond_3
    move/from16 v19, v2

    .end local v2    # "$i$f$forEach":I
    .restart local v19    # "$i$f$forEach":I
    move/from16 v0, v16

    .line 1641
    .end local v10    # "slot$iv$iv":J
    .end local v16    # "hash":I
    .local v0, "hash":I
    :goto_4
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object v1, v15

    move/from16 v2, v19

    goto/16 :goto_0

    .end local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v19    # "$i$f$forEach":I
    .local v1, "this_$iv":Landroidx/collection/SieveCache;
    .restart local v2    # "$i$f$forEach":I
    :cond_4
    move-object v15, v1

    move/from16 v19, v2

    .line 1657
    .end local v1    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v2    # "$i$f$forEach":I
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v19    # "$i$f$forEach":I
    :cond_5
    move/from16 v16, v0

    .line 1658
    .end local v0    # "hash":I
    .end local v5    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    .restart local v16    # "hash":I
    :cond_6
    nop

    .line 1057
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v4    # "v$iv":[Ljava/lang/Object;
    .end local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v19    # "$i$f$forEach":I
    return v16
.end method

.method public final isEmpty()Z
    .locals 1

    .line 180
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 183
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final minusAssign(Landroidx/collection/ObjectList;)V
    .locals 8
    .param p1, "keys"    # Landroidx/collection/ObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ObjectList<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 491
    .local v0, "$i$f$minusAssign":I
    move-object v1, p1

    .local v1, "this_$iv":Landroidx/collection/ObjectList;
    const/4 v2, 0x0

    .line 1280
    .local v2, "$i$f$forEach":I
    iget-object v3, v1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 1281
    .local v3, "content$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i$iv":I
    iget v5, v1, Landroidx/collection/ObjectList;->_size:I

    :goto_0
    if-ge v4, v5, :cond_0

    .line 1282
    aget-object v6, v3, v4

    .local v6, "key":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 491
    .local v7, "$i$a$-forEach-SieveCache$minusAssign$2":I
    invoke-virtual {p0, v6}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "$i$a$-forEach-SieveCache$minusAssign$2":I
    nop

    .line 1281
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1284
    .end local v4    # "i$iv":I
    :cond_0
    nop

    .line 492
    .end local v1    # "this_$iv":Landroidx/collection/ObjectList;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "content$iv":[Ljava/lang/Object;
    return-void
.end method

.method public final minusAssign(Landroidx/collection/ScatterSet;)V
    .locals 20
    .param p1, "keys"    # Landroidx/collection/ScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterSet<",
            "TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 486
    .local v0, "$i$f$minusAssign":I
    move-object/from16 v2, p1

    .local v2, "this_$iv":Landroidx/collection/ScatterSet;
    const/4 v3, 0x0

    .line 1257
    .local v3, "$i$f$forEach":I
    iget-object v4, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 1258
    .local v4, "elements$iv":[Ljava/lang/Object;
    move-object v5, v2

    .local v5, "this_$iv$iv":Landroidx/collection/ScatterSet;
    const/4 v6, 0x0

    .line 1259
    .local v6, "$i$f$forEachIndex":I
    iget-object v7, v5, Landroidx/collection/ScatterSet;->metadata:[J

    .line 1260
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1262
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_4

    .line 1263
    :goto_0
    aget-wide v10, v7, v9

    .line 1264
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1265
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move v15, v0

    .end local v0    # "$i$f$minusAssign":I
    .local v15, "$i$f$minusAssign":I
    not-long v0, v12

    const/16 v16, 0x7

    shl-long v0, v0, v16

    and-long/2addr v0, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v16

    .line 1264
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v0, v16

    if-eqz v12, :cond_3

    .line 1266
    sub-int v0, v9, v8

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1267
    .local v0, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_1
    if-ge v12, v0, :cond_2

    .line 1268
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1269
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v19, v13, v17

    if-gez v19, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1268
    .end local v13    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_1

    .line 1270
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1271
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v16, 0x0

    .line 1258
    .local v16, "$i$a$-forEachIndex-ScatterSet$forEach$1$iv":I
    const/16 v17, 0x8

    aget-object v1, v4, v14

    .local v1, "key":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 486
    .local v18, "$i$a$-forEach-SieveCache$minusAssign$1":I
    move-object/from16 v19, v2

    move-object/from16 v2, p0

    .end local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v19, "this_$iv":Landroidx/collection/ScatterSet;
    invoke-virtual {v2, v1}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    .end local v1    # "key":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-SieveCache$minusAssign$1":I
    nop

    .line 1271
    .end local v14    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndex-ScatterSet$forEach$1$iv":I
    goto :goto_3

    .line 1268
    .end local v13    # "index$iv$iv":I
    .end local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_1
    const/16 v17, 0x8

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    .line 1273
    .end local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    :goto_3
    shr-long v10, v10, v17

    .line 1267
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v19

    const/16 v1, 0x8

    goto :goto_1

    .end local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_2
    const/16 v17, 0x8

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    .line 1275
    .end local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v12    # "j$iv$iv":I
    .restart local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    goto :goto_4

    .line 1264
    .end local v0    # "bitCount$iv$iv":I
    .end local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    .restart local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v2, p0

    .line 1262
    .end local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v10    # "slot$iv$iv":J
    .restart local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    :goto_4
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move v0, v15

    move-object/from16 v2, v19

    goto :goto_0

    .end local v15    # "$i$f$minusAssign":I
    .end local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    .local v0, "$i$f$minusAssign":I
    .restart local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_4
    move v15, v0

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    .line 1278
    .end local v0    # "$i$f$minusAssign":I
    .end local v2    # "this_$iv":Landroidx/collection/ScatterSet;
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "$i$f$minusAssign":I
    .restart local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    :cond_5
    nop

    .line 1279
    .end local v5    # "this_$iv$iv":Landroidx/collection/ScatterSet;
    .end local v6    # "$i$f$forEachIndex":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 487
    .end local v3    # "$i$f$forEach":I
    .end local v4    # "elements$iv":[Ljava/lang/Object;
    .end local v19    # "this_$iv":Landroidx/collection/ScatterSet;
    return-void
.end method

.method public final minusAssign(Ljava/lang/Iterable;)V
    .locals 3
    .param p1, "keys"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 472
    .local v0, "$i$f$minusAssign":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 473
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final minusAssign(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 460
    .local v0, "$i$f$minusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public final minusAssign(Lkotlin/sequences/Sequence;)V
    .locals 3
    .param p1, "keys"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TK;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 479
    .local v0, "$i$f$minusAssign":I
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 480
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public final minusAssign([Ljava/lang/Object;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 465
    .local v0, "$i$f$minusAssign":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 466
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Landroidx/collection/SieveCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v3    # "key":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method

.method public final none()Z
    .locals 1

    .line 177
    iget v0, p0, Landroidx/collection/SieveCache;->_count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final plusAssign(Landroidx/collection/ScatterMap;)V
    .locals 1
    .param p1, "from"    # Landroidx/collection/ScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 396
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll(Landroidx/collection/ScatterMap;)V

    return-void
.end method

.method public final plusAssign(Landroidx/collection/SieveCache;)V
    .locals 1
    .param p1, "from"    # Landroidx/collection/SieveCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SieveCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 403
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll(Landroidx/collection/SieveCache;)V

    return-void
.end method

.method public final plusAssign(Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "pairs"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 375
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method public final plusAssign(Ljava/util/Map;)V
    .locals 1
    .param p1, "from"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 389
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final plusAssign(Lkotlin/Pair;)V
    .locals 5
    .param p1, "pair"    # Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pair"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 358
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    .local v1, "key$iv":Ljava/lang/Object;
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    .local v2, "value$iv":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1235
    .local v4, "$i$f$set":I
    invoke-virtual {v3, v1, v2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    nop

    .line 359
    .end local v1    # "key$iv":Ljava/lang/Object;
    .end local v2    # "value$iv":Ljava/lang/Object;
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v4    # "$i$f$set":I
    return-void
.end method

.method public final plusAssign(Lkotlin/sequences/Sequence;)V
    .locals 1
    .param p1, "pairs"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 382
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll(Lkotlin/sequences/Sequence;)V

    return-void
.end method

.method public final plusAssign([Lkotlin/Pair;)V
    .locals 1
    .param p1, "pairs"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 368
    .local v0, "$i$f$plusAssign":I
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->putAll([Lkotlin/Pair;)V

    return-void
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "key"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-direct/range {p0 .. p1}, Landroidx/collection/SieveCache;->findInsertIndex(Ljava/lang/Object;)I

    move-result v3

    .line 1153
    .local v3, "index":I
    const/4 v4, 0x0

    .line 269
    .local v4, "$i$a$-let-SieveCache$put$index$1":I
    if-gez v3, :cond_0

    not-int v5, v3

    move v3, v5

    .line 270
    .end local v4    # "$i$a$-let-SieveCache$put$index$1":I
    :cond_0
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    .line 272
    .local v4, "previousValue":Ljava/lang/Object;
    iget-object v5, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aput-object v2, v5, v3

    .line 273
    iget-object v5, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aput-object v1, v5, v3

    .line 275
    iget v5, v0, Landroidx/collection/SieveCache;->_size:I

    iget-object v6, v0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroidx/collection/SieveCache;->_size:I

    .line 277
    if-eqz v4, :cond_1

    .line 278
    iget v5, v0, Landroidx/collection/SieveCache;->_size:I

    iget-object v6, v0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v6, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Landroidx/collection/SieveCache;->_size:I

    .line 279
    iget-object v5, v0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v4, v2, v6}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget v5, v0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {v0, v5}, Landroidx/collection/SieveCache;->trimToSize(I)V

    .line 281
    return-object v4

    .line 286
    :cond_1
    iget v5, v0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {v0, v5}, Landroidx/collection/SieveCache;->trimToSize(I)V

    .line 288
    move-object/from16 v5, p0

    .local v5, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v6, 0x0

    .line 1162
    .local v6, "$i$f$moveNodeToHead":I
    iget-object v7, v5, Landroidx/collection/SieveCache;->nodes:[J

    iget v8, v5, Landroidx/collection/SieveCache;->head:I

    .local v8, "next$iv$iv":I
    const/4 v9, 0x0

    .line 1163
    .local v9, "$i$f$createLinkToNext":I
    int-to-long v10, v8

    const-wide/32 v12, 0x7fffffff

    and-long/2addr v10, v12

    const-wide v14, 0x3fffffff80000000L    # 1.9999995231628418

    or-long v8, v10, v14

    .end local v8    # "next$iv$iv":I
    .end local v9    # "$i$f$createLinkToNext":I
    aput-wide v8, v7, v3

    .line 1164
    iget v7, v5, Landroidx/collection/SieveCache;->head:I

    const v8, 0x7fffffff

    if-eq v7, v8, :cond_2

    .line 1165
    iget-object v7, v5, Landroidx/collection/SieveCache;->nodes:[J

    iget v9, v5, Landroidx/collection/SieveCache;->head:I

    iget-object v10, v5, Landroidx/collection/SieveCache;->nodes:[J

    iget v11, v5, Landroidx/collection/SieveCache;->head:I

    aget-wide v14, v10, v11

    .local v14, "node$iv$iv":J
    const/4 v10, 0x0

    .line 1166
    .local v10, "$i$f$setLinkToPrevious":I
    const-wide v16, -0x3fffffff80000001L    # -2.000000953674316

    and-long v16, v14, v16

    move-wide/from16 v18, v12

    int-to-long v12, v3

    and-long v12, v12, v18

    const/16 v11, 0x1f

    shl-long v11, v12, v11

    or-long v11, v16, v11

    .end local v10    # "$i$f$setLinkToPrevious":I
    .end local v14    # "node$iv$iv":J
    aput-wide v11, v7, v9

    .line 1167
    :cond_2
    iput v3, v5, Landroidx/collection/SieveCache;->head:I

    .line 1169
    iget v7, v5, Landroidx/collection/SieveCache;->tail:I

    if-ne v7, v8, :cond_3

    .line 1170
    iput v3, v5, Landroidx/collection/SieveCache;->tail:I

    .line 1172
    :cond_3
    nop

    .line 290
    .end local v5    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v6    # "$i$f$moveNodeToHead":I
    return-object v4
.end method

.method public final putAll(Landroidx/collection/ScatterMap;)V
    .locals 23
    .param p1, "from"    # Landroidx/collection/ScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ScatterMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p1

    .local v0, "this_$iv":Landroidx/collection/ScatterMap;
    const/4 v2, 0x0

    .line 1183
    .local v2, "$i$f$forEach":I
    iget-object v3, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 1184
    .local v3, "k$iv":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 1186
    .local v4, "v$iv":[Ljava/lang/Object;
    move-object v5, v0

    .local v5, "this_$iv$iv":Landroidx/collection/ScatterMap;
    const/4 v6, 0x0

    .line 1187
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/ScatterMap;->metadata:[J

    .line 1188
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1190
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_4

    .line 1191
    :goto_0
    aget-wide v10, v7, v9

    .line 1192
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1193
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move-object v15, v0

    .end local v0    # "this_$iv":Landroidx/collection/ScatterMap;
    .local v15, "this_$iv":Landroidx/collection/ScatterMap;
    not-long v0, v12

    const/16 v16, 0x7

    shl-long v0, v0, v16

    and-long/2addr v0, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v16

    .line 1192
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v0, v16

    if-eqz v12, :cond_3

    .line 1194
    sub-int v0, v9, v8

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1195
    .local v0, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_1
    if-ge v12, v0, :cond_2

    .line 1196
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1197
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v19, v13, v17

    if-gez v19, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1196
    .end local v13    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_1

    .line 1198
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1199
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v16, 0x0

    .line 1186
    .local v16, "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    const/16 v17, 0x8

    aget-object v1, v3, v14

    move/from16 v18, v2

    .end local v2    # "$i$f$forEach":I
    .local v1, "key":Ljava/lang/Object;
    .local v18, "$i$f$forEach":I
    aget-object v2, v4, v14

    .local v2, "value":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 341
    .local v19, "$i$a$-forEach-SieveCache$putAll$2":I
    move-object/from16 v20, p0

    .local v20, "this_$iv":Landroidx/collection/SieveCache;
    const/16 v21, 0x0

    .line 1200
    .local v21, "$i$f$set":I
    move-object/from16 v22, v3

    move-object/from16 v3, v20

    .end local v20    # "this_$iv":Landroidx/collection/SieveCache;
    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    .local v22, "k$iv":[Ljava/lang/Object;
    invoke-virtual {v3, v1, v2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    nop

    .line 341
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v21    # "$i$f$set":I
    nop

    .line 1186
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v19    # "$i$a$-forEach-SieveCache$putAll$2":I
    nop

    .line 1199
    .end local v14    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-ScatterMap$forEach$1$iv":I
    goto :goto_3

    .line 1196
    .end local v13    # "index$iv$iv":I
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .local v2, "$i$f$forEach":I
    .local v3, "k$iv":[Ljava/lang/Object;
    :cond_1
    move/from16 v18, v2

    move-object/from16 v22, v3

    const/16 v17, 0x8

    .line 1202
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :goto_3
    shr-long v10, v10, v17

    .line 1195
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move-object/from16 v3, v22

    const/16 v1, 0x8

    goto :goto_1

    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_2
    move/from16 v18, v2

    move-object/from16 v22, v3

    const/16 v17, 0x8

    .line 1204
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v12    # "j$iv$iv":I
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    goto :goto_4

    .line 1192
    .end local v0    # "bitCount$iv$iv":I
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_3
    move/from16 v18, v2

    move-object/from16 v22, v3

    .line 1190
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "slot$iv$iv":J
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :goto_4
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object v0, v15

    move/from16 v2, v18

    move-object/from16 v3, v22

    goto :goto_0

    .end local v15    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .local v0, "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_4
    move-object v15, v0

    move/from16 v18, v2

    move-object/from16 v22, v3

    .line 1207
    .end local v0    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/ScatterMap;
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 1208
    .end local v5    # "this_$iv$iv":Landroidx/collection/ScatterMap;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 342
    .end local v4    # "v$iv":[Ljava/lang/Object;
    .end local v15    # "this_$iv":Landroidx/collection/ScatterMap;
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    return-void
.end method

.method public final putAll(Landroidx/collection/SieveCache;)V
    .locals 23
    .param p1, "from"    # Landroidx/collection/SieveCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SieveCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p1

    .local v0, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v2, 0x0

    .line 1209
    .local v2, "$i$f$forEach":I
    iget-object v3, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 1210
    .local v3, "k$iv":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 1212
    .local v4, "v$iv":[Ljava/lang/Object;
    move-object v5, v0

    .local v5, "this_$iv$iv":Landroidx/collection/SieveCache;
    const/4 v6, 0x0

    .line 1213
    .local v6, "$i$f$forEachIndexed":I
    iget-object v7, v5, Landroidx/collection/SieveCache;->metadata:[J

    .line 1214
    .local v7, "m$iv$iv":[J
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    .line 1216
    .local v8, "lastIndex$iv$iv":I
    const/4 v9, 0x0

    .local v9, "i$iv$iv":I
    if-gt v9, v8, :cond_4

    .line 1217
    :goto_0
    aget-wide v10, v7, v9

    .line 1218
    .local v10, "slot$iv$iv":J
    move-wide v12, v10

    .local v12, "$this$maskEmptyOrDeleted$iv$iv$iv":J
    const/4 v14, 0x0

    .line 1219
    .local v14, "$i$f$maskEmptyOrDeleted":I
    move-object v15, v0

    .end local v0    # "this_$iv":Landroidx/collection/SieveCache;
    .local v15, "this_$iv":Landroidx/collection/SieveCache;
    not-long v0, v12

    const/16 v16, 0x7

    shl-long v0, v0, v16

    and-long/2addr v0, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v16

    .line 1218
    .end local v12    # "$this$maskEmptyOrDeleted$iv$iv$iv":J
    .end local v14    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v12, v0, v16

    if-eqz v12, :cond_3

    .line 1220
    sub-int v0, v9, v8

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    .line 1221
    .local v0, "bitCount$iv$iv":I
    const/4 v12, 0x0

    .local v12, "j$iv$iv":I
    :goto_1
    if-ge v12, v0, :cond_2

    .line 1222
    const-wide/16 v13, 0xff

    and-long/2addr v13, v10

    .local v13, "value$iv$iv$iv":J
    const/16 v16, 0x0

    .line 1223
    .local v16, "$i$f$isFull":I
    const-wide/16 v17, 0x80

    cmp-long v19, v13, v17

    if-gez v19, :cond_0

    const/16 v17, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x0

    .line 1222
    .end local v13    # "value$iv$iv$iv":J
    .end local v16    # "$i$f$isFull":I
    :goto_2
    if-eqz v17, :cond_1

    .line 1224
    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v12

    .line 1225
    .local v13, "index$iv$iv":I
    move v14, v13

    .local v14, "index$iv":I
    const/16 v16, 0x0

    .line 1212
    .local v16, "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    const/16 v17, 0x8

    aget-object v1, v3, v14

    move/from16 v18, v2

    .end local v2    # "$i$f$forEach":I
    .local v18, "$i$f$forEach":I
    const-string v2, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object v2, v4, v14

    move-object/from16 v19, v1

    const-string v1, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v19

    .local v1, "key":Ljava/lang/Object;
    .local v2, "value":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 350
    .local v19, "$i$a$-forEach-SieveCache$putAll$3":I
    move-object/from16 v20, p0

    .local v20, "this_$iv":Landroidx/collection/SieveCache;
    const/16 v21, 0x0

    .line 1226
    .local v21, "$i$f$set":I
    move-object/from16 v22, v3

    move-object/from16 v3, v20

    .end local v20    # "this_$iv":Landroidx/collection/SieveCache;
    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    .local v22, "k$iv":[Ljava/lang/Object;
    invoke-virtual {v3, v1, v2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    nop

    .line 350
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v21    # "$i$f$set":I
    nop

    .line 1212
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v19    # "$i$a$-forEach-SieveCache$putAll$3":I
    nop

    .line 1225
    .end local v14    # "index$iv":I
    .end local v16    # "$i$a$-forEachIndexed-SieveCache$forEach$1$iv":I
    goto :goto_3

    .line 1222
    .end local v13    # "index$iv$iv":I
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .local v2, "$i$f$forEach":I
    .local v3, "k$iv":[Ljava/lang/Object;
    :cond_1
    move/from16 v18, v2

    move-object/from16 v22, v3

    const/16 v17, 0x8

    .line 1228
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :goto_3
    shr-long v10, v10, v17

    .line 1221
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move-object/from16 v3, v22

    const/16 v1, 0x8

    goto :goto_1

    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_2
    move/from16 v18, v2

    move-object/from16 v22, v3

    const/16 v17, 0x8

    .line 1230
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v12    # "j$iv$iv":I
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    goto :goto_4

    .line 1218
    .end local v0    # "bitCount$iv$iv":I
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_3
    move/from16 v18, v2

    move-object/from16 v22, v3

    .line 1216
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v10    # "slot$iv$iv":J
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :goto_4
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object v0, v15

    move/from16 v2, v18

    move-object/from16 v3, v22

    goto/16 :goto_0

    .end local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    .local v0, "this_$iv":Landroidx/collection/SieveCache;
    .restart local v2    # "$i$f$forEach":I
    .restart local v3    # "k$iv":[Ljava/lang/Object;
    :cond_4
    move-object v15, v0

    move/from16 v18, v2

    move-object/from16 v22, v3

    .line 1233
    .end local v0    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "k$iv":[Ljava/lang/Object;
    .end local v9    # "i$iv$iv":I
    .restart local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v18    # "$i$f$forEach":I
    .restart local v22    # "k$iv":[Ljava/lang/Object;
    :cond_5
    nop

    .line 1234
    .end local v5    # "this_$iv$iv":Landroidx/collection/SieveCache;
    .end local v6    # "$i$f$forEachIndexed":I
    .end local v7    # "m$iv$iv":[J
    .end local v8    # "lastIndex$iv$iv":I
    :cond_6
    nop

    .line 351
    .end local v4    # "v$iv":[Ljava/lang/Object;
    .end local v15    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v18    # "$i$f$forEach":I
    .end local v22    # "k$iv":[Ljava/lang/Object;
    return-void
.end method

.method public final putAll(Ljava/lang/Iterable;)V
    .locals 5
    .param p1, "pairs"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, "value":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1175
    .local v4, "$i$f$set":I
    invoke-virtual {v3, v2, v1}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    nop

    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v4    # "$i$f$set":I
    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 9
    .param p1, "from"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    move-object v0, p1

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 1179
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    const/4 v4, 0x0

    .local v4, "$i$a$-forEach-SieveCache$putAll$1":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .local v5, "key":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 332
    .local v6, "value":Ljava/lang/Object;
    move-object v7, p0

    .local v7, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v8, 0x0

    .line 1180
    .local v8, "$i$f$set":I
    invoke-virtual {v7, v5, v6}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    nop

    .line 332
    .end local v7    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v8    # "$i$f$set":I
    nop

    .line 1179
    .end local v4    # "$i$a$-forEach-SieveCache$putAll$1":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 1182
    :cond_0
    nop

    .line 333
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final putAll(Lkotlin/sequences/Sequence;)V
    .locals 5
    .param p1, "pairs"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "value":Ljava/lang/Object;
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v4, 0x0

    .line 1177
    .local v4, "$i$f$set":I
    invoke-virtual {v3, v2, v1}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    nop

    .end local v1    # "value":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v4    # "$i$f$set":I
    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public final putAll([Lkotlin/Pair;)V
    .locals 6
    .param p1, "pairs"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    .line 300
    .local v2, "value":Ljava/lang/Object;
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v5, 0x0

    .line 1173
    .local v5, "$i$f$set":I
    invoke-virtual {v4, v3, v2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    nop

    .line 299
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v5    # "$i$f$set":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    .line 414
    .local v0, "index":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 416
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 417
    .local v2, "previousValue":Ljava/lang/Object;
    :cond_0
    iget v3, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v4, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/SieveCache;->_size:I

    .line 418
    iget-object v3, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, p1, v2, v1, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-object v2

    .line 422
    .end local v2    # "previousValue":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, p1}, Landroidx/collection/SieveCache;->findKeyIndex(Ljava/lang/Object;)I

    move-result v0

    .line 434
    .local v0, "index":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 435
    iget-object v2, p0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    .line 437
    .local v2, "previousValue":Ljava/lang/Object;
    :cond_0
    iget v3, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v4, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, p1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/SieveCache;->_size:I

    .line 438
    iget-object v3, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, p1, v2, v4, v1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/4 v1, 0x1

    return v1

    .line 442
    .end local v2    # "previousValue":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function2;)V
    .locals 19
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "predicate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    move-object/from16 v2, p0

    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    const/4 v3, 0x0

    .line 1237
    .local v3, "$i$f$forEachIndexed":I
    iget-object v4, v2, Landroidx/collection/SieveCache;->metadata:[J

    .line 1238
    .local v4, "m$iv":[J
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    .line 1240
    .local v5, "lastIndex$iv":I
    const/4 v6, 0x0

    .local v6, "i$iv":I
    if-gt v6, v5, :cond_6

    .line 1241
    :goto_0
    aget-wide v7, v4, v6

    .line 1242
    .local v7, "slot$iv":J
    move-wide v9, v7

    .local v9, "$this$maskEmptyOrDeleted$iv$iv":J
    const/4 v11, 0x0

    .line 1243
    .local v11, "$i$f$maskEmptyOrDeleted":I
    not-long v12, v9

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v9

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v9, v12, v14

    .line 1242
    .end local v9    # "$this$maskEmptyOrDeleted$iv$iv":J
    .end local v11    # "$i$f$maskEmptyOrDeleted":I
    cmp-long v11, v9, v14

    if-eqz v11, :cond_5

    .line 1244
    sub-int v9, v6, v5

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    .line 1245
    .local v9, "bitCount$iv":I
    const/4 v11, 0x0

    .local v11, "j$iv":I
    :goto_1
    if-ge v11, v9, :cond_4

    .line 1246
    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    .local v12, "value$iv$iv":J
    const/4 v14, 0x0

    .line 1247
    .local v14, "$i$f$isFull":I
    const-wide/16 v15, 0x80

    const/16 v17, 0x0

    cmp-long v18, v12, v15

    if-gez v18, :cond_0

    const/4 v15, 0x1

    goto :goto_2

    :cond_0
    const/4 v15, 0x0

    .line 1246
    .end local v12    # "value$iv$iv":J
    .end local v14    # "$i$f$isFull":I
    :goto_2
    if-eqz v15, :cond_3

    .line 1248
    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    .line 1249
    .local v12, "index$iv":I
    move v13, v12

    .local v13, "index":I
    const/4 v14, 0x0

    .line 448
    .local v14, "$i$a$-forEachIndexed-SieveCache$removeIf$1":I
    iget-object v15, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v13

    .line 450
    .local v15, "key":Ljava/lang/Object;
    const/16 v16, 0x8

    const-string v10, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    aget-object v10, v10, v13

    move-object/from16 v18, v2

    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .local v18, "this_$iv":Landroidx/collection/SieveCache;
    const-string v2, "null cannot be cast to non-null type V of androidx.collection.SieveCache"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v15, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    invoke-direct {v0, v13}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 452
    .local v2, "previousValue":Ljava/lang/Object;
    :cond_1
    iget v10, v0, Landroidx/collection/SieveCache;->_size:I

    iget-object v1, v0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v15, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v10, v1

    iput v10, v0, Landroidx/collection/SieveCache;->_size:I

    .line 453
    iget-object v1, v0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    const/4 v10, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v15, v2, v10, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v2    # "previousValue":Ljava/lang/Object;
    :cond_2
    nop

    .line 1249
    .end local v13    # "index":I
    .end local v14    # "$i$a$-forEachIndexed-SieveCache$removeIf$1":I
    .end local v15    # "key":Ljava/lang/Object;
    goto :goto_3

    .line 1246
    .end local v12    # "index$iv":I
    .end local v18    # "this_$iv":Landroidx/collection/SieveCache;
    .local v2, "this_$iv":Landroidx/collection/SieveCache;
    :cond_3
    move-object/from16 v18, v2

    const/16 v16, 0x8

    .line 1251
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v18    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_3
    shr-long v7, v7, v16

    .line 1245
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    const/16 v10, 0x8

    goto :goto_1

    .end local v18    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_4
    move-object/from16 v18, v2

    const/16 v16, 0x8

    .line 1253
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v11    # "j$iv":I
    .restart local v18    # "this_$iv":Landroidx/collection/SieveCache;
    const/16 v0, 0x8

    if-ne v9, v0, :cond_8

    goto :goto_4

    .line 1242
    .end local v9    # "bitCount$iv":I
    .end local v18    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_5
    move-object/from16 v18, v2

    .line 1240
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v7    # "slot$iv":J
    .restart local v18    # "this_$iv":Landroidx/collection/SieveCache;
    :goto_4
    if-eq v6, v5, :cond_7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    goto/16 :goto_0

    .end local v18    # "this_$iv":Landroidx/collection/SieveCache;
    .restart local v2    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_6
    move-object/from16 v18, v2

    .line 1256
    .end local v2    # "this_$iv":Landroidx/collection/SieveCache;
    .end local v6    # "i$iv":I
    .restart local v18    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_7
    nop

    .line 456
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "m$iv":[J
    .end local v5    # "lastIndex$iv":I
    .end local v18    # "this_$iv":Landroidx/collection/SieveCache;
    :cond_8
    return-void
.end method

.method public final resize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .line 510
    iput p1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    .line 511
    invoke-virtual {p0, p1}, Landroidx/collection/SieveCache;->trimToSize(I)V

    .line 512
    return-void
.end method

.method public final resizeStorage$collection(I)V
    .locals 28
    .param p1, "newCapacity"    # I

    .line 960
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 961
    .local v1, "previousMetadata":[J
    iget-object v2, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 962
    .local v2, "previousKeys":[Ljava/lang/Object;
    iget-object v3, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 963
    .local v3, "previousValues":[Ljava/lang/Object;
    iget-object v4, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 964
    .local v4, "previousNodes":[J
    iget v5, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 969
    .local v5, "previousCapacity":I
    new-array v6, v5, [I

    .line 971
    .local v6, "indexMapping":[I
    invoke-direct/range {p0 .. p1}, Landroidx/collection/SieveCache;->initializeStorage(I)V

    .line 973
    iget-object v7, v0, Landroidx/collection/SieveCache;->metadata:[J

    .line 974
    .local v7, "newMetadata":[J
    iget-object v8, v0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    .line 975
    .local v8, "newKeys":[Ljava/lang/Object;
    iget-object v9, v0, Landroidx/collection/SieveCache;->values:[Ljava/lang/Object;

    .line 976
    .local v9, "newValues":[Ljava/lang/Object;
    iget-object v10, v0, Landroidx/collection/SieveCache;->nodes:[J

    .line 977
    .local v10, "newNodes":[J
    iget v11, v0, Landroidx/collection/SieveCache;->_capacity:I

    .line 979
    .local v11, "capacity":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v5, :cond_3

    .line 980
    const/4 v13, 0x0

    .line 1596
    .local v13, "$i$f$isFull":I
    const/4 v14, 0x0

    .line 1597
    .local v14, "$i$f$readRawMetadata":I
    shr-int/lit8 v15, v12, 0x3

    aget-wide v15, v1, v15

    and-int/lit8 v17, v12, 0x7

    shl-int/lit8 v17, v17, 0x3

    shr-long v15, v15, v17

    const-wide/16 v17, 0xff

    and-long v15, v15, v17

    .line 1596
    .end local v14    # "$i$f$readRawMetadata":I
    const-wide/16 v19, 0x80

    const/4 v14, 0x0

    cmp-long v21, v15, v19

    if-gez v21, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 980
    .end local v13    # "$i$f$isFull":I
    :goto_1
    if-eqz v15, :cond_2

    .line 981
    aget-object v13, v2, v12

    .line 982
    .local v13, "previousKey":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 1598
    .local v15, "$i$f$hash":I
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    :cond_1
    const v16, -0x3361d2af    # -8.2930312E7f

    mul-int v14, v14, v16

    .line 1600
    .local v14, "hash$iv":I
    shl-int/lit8 v16, v14, 0x10

    xor-int v14, v14, v16

    .line 982
    .end local v14    # "hash$iv":I
    .end local v15    # "$i$f$hash":I
    nop

    .line 983
    .local v14, "hash":I
    const/4 v15, 0x0

    .line 1601
    .local v15, "$i$f$h1":I
    ushr-int/lit8 v15, v14, 0x7

    .line 983
    .end local v15    # "$i$f$h1":I
    invoke-direct {v0, v15}, Landroidx/collection/SieveCache;->findFirstAvailableSlot(I)I

    move-result v15

    .line 985
    .local v15, "index":I
    const/16 v16, 0x0

    .line 1602
    .local v16, "$i$f$h2":I
    move-object/from16 v19, v1

    .end local v1    # "previousMetadata":[J
    .local v19, "previousMetadata":[J
    and-int/lit8 v1, v14, 0x7f

    .line 985
    .end local v16    # "$i$f$h2":I
    move-object/from16 v16, v2

    .end local v2    # "previousKeys":[Ljava/lang/Object;
    .local v16, "previousKeys":[Ljava/lang/Object;
    int-to-long v1, v1

    .local v1, "value$iv":J
    const/16 v20, 0x0

    .line 1603
    .local v20, "$i$f$writeMetadata":I
    const/16 v21, 0x0

    .line 1604
    .local v21, "$i$f$writeRawMetadata":I
    shr-int/lit8 v22, v15, 0x3

    .line 1605
    .local v22, "i$iv$iv":I
    and-int/lit8 v23, v15, 0x7

    shl-int/lit8 v23, v23, 0x3

    .line 1608
    .local v23, "b$iv$iv":I
    aget-wide v24, v7, v22

    move-wide/from16 v26, v1

    .end local v1    # "value$iv":J
    .local v26, "value$iv":J
    shl-long v1, v17, v23

    not-long v1, v1

    and-long v1, v24, v1

    shl-long v17, v26, v23

    or-long v1, v1, v17

    aput-wide v1, v7, v22

    .line 1609
    nop

    .line 1610
    .end local v21    # "$i$f$writeRawMetadata":I
    .end local v22    # "i$iv$iv":I
    .end local v23    # "b$iv$iv":I
    add-int/lit8 v1, v15, -0x7

    and-int/2addr v1, v11

    and-int/lit8 v2, v11, 0x7

    add-int/2addr v1, v2

    .line 1611
    nop

    .line 1613
    .local v1, "cloneIndex$iv":I
    shr-int/lit8 v2, v1, 0x3

    shr-int/lit8 v17, v15, 0x3

    aget-wide v17, v7, v17

    aput-wide v17, v7, v2

    .line 1614
    nop

    .line 986
    .end local v1    # "cloneIndex$iv":I
    .end local v20    # "$i$f$writeMetadata":I
    .end local v26    # "value$iv":J
    aput-object v13, v8, v15

    .line 987
    aget-object v1, v3, v12

    aput-object v1, v9, v15

    .line 988
    aget-wide v1, v4, v12

    aput-wide v1, v10, v15

    .line 990
    aput v15, v6, v12

    goto :goto_2

    .line 980
    .end local v13    # "previousKey":Ljava/lang/Object;
    .end local v14    # "hash":I
    .end local v15    # "index":I
    .end local v16    # "previousKeys":[Ljava/lang/Object;
    .end local v19    # "previousMetadata":[J
    .local v1, "previousMetadata":[J
    .restart local v2    # "previousKeys":[Ljava/lang/Object;
    :cond_2
    move-object/from16 v19, v1

    move-object/from16 v16, v2

    .line 979
    .end local v1    # "previousMetadata":[J
    .end local v2    # "previousKeys":[Ljava/lang/Object;
    .restart local v16    # "previousKeys":[Ljava/lang/Object;
    .restart local v19    # "previousMetadata":[J
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, v16

    move-object/from16 v1, v19

    goto/16 :goto_0

    .line 994
    .end local v12    # "i":I
    .end local v16    # "previousKeys":[Ljava/lang/Object;
    .end local v19    # "previousMetadata":[J
    .restart local v1    # "previousMetadata":[J
    .restart local v2    # "previousKeys":[Ljava/lang/Object;
    :cond_3
    invoke-direct {v0, v6}, Landroidx/collection/SieveCache;->fixupNodes([I)V

    .line 995
    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 251
    .local v0, "$i$f$set":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SieveCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SieveCache[maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/collection/SieveCache;->_maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/collection/SieveCache;->_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/collection/SieveCache;->_capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/collection/SieveCache;->_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    .line 522
    nop

    :goto_0
    nop

    .line 523
    iget v0, p0, Landroidx/collection/SieveCache;->_size:I

    if-le v0, p1, :cond_3

    invoke-virtual {p0}, Landroidx/collection/SieveCache;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    invoke-direct {p0}, Landroidx/collection/SieveCache;->findEvictionCandidate()I

    move-result v0

    .line 528
    .local v0, "candidate":I
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    return-void

    .line 530
    :cond_1
    iget-object v1, p0, Landroidx/collection/SieveCache;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    const-string v2, "null cannot be cast to non-null type K of androidx.collection.SieveCache"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    .local v1, "key":Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroidx/collection/SieveCache;->removeValueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 535
    .local v2, "value":Ljava/lang/Object;
    :cond_2
    iget v3, p0, Landroidx/collection/SieveCache;->_size:I

    iget-object v4, p0, Landroidx/collection/SieveCache;->sizeOf:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/SieveCache;->_size:I

    .line 536
    iget-object v3, p0, Landroidx/collection/SieveCache;->onEntryRemoved:Lkotlin/jvm/functions/Function4;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v1, v2, v5, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 524
    .end local v0    # "candidate":I
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void
.end method
