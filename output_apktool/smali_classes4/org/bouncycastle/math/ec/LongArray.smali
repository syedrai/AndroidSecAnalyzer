.class Lorg/bouncycastle/math/ec/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final INTERLEAVE2_TABLE:[S

.field private static final INTERLEAVE3_TABLE:[I

.field private static final INTERLEAVE4_TABLE:[I

.field private static final INTERLEAVE5_TABLE:[I

.field private static final INTERLEAVE7_TABLE:[J

.field private static final ZEROES:Ljava/lang/String; = "0000000000000000000000000000000000000000000000000000000000000000"

.field static final bitLengths:[B


# instance fields
.field private m_ints:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/16 v0, 0x100

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    .line 56
    const/16 v1, 0x80

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    .line 79
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    .line 118
    const/16 v1, 0x80

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    .line 140
    const/16 v1, 0x200

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    .line 275
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x4s
        0x5s
        0x10s
        0x11s
        0x14s
        0x15s
        0x40s
        0x41s
        0x44s
        0x45s
        0x50s
        0x51s
        0x54s
        0x55s
        0x100s
        0x101s
        0x104s
        0x105s
        0x110s
        0x111s
        0x114s
        0x115s
        0x140s
        0x141s
        0x144s
        0x145s
        0x150s
        0x151s
        0x154s
        0x155s
        0x400s
        0x401s
        0x404s
        0x405s
        0x410s
        0x411s
        0x414s
        0x415s
        0x440s
        0x441s
        0x444s
        0x445s
        0x450s
        0x451s
        0x454s
        0x455s
        0x500s
        0x501s
        0x504s
        0x505s
        0x510s
        0x511s
        0x514s
        0x515s
        0x540s
        0x541s
        0x544s
        0x545s
        0x550s
        0x551s
        0x554s
        0x555s
        0x1000s
        0x1001s
        0x1004s
        0x1005s
        0x1010s
        0x1011s
        0x1014s
        0x1015s
        0x1040s
        0x1041s
        0x1044s
        0x1045s
        0x1050s
        0x1051s
        0x1054s
        0x1055s
        0x1100s
        0x1101s
        0x1104s
        0x1105s
        0x1110s
        0x1111s
        0x1114s
        0x1115s
        0x1140s
        0x1141s
        0x1144s
        0x1145s
        0x1150s
        0x1151s
        0x1154s
        0x1155s
        0x1400s
        0x1401s
        0x1404s
        0x1405s
        0x1410s
        0x1411s
        0x1414s
        0x1415s
        0x1440s
        0x1441s
        0x1444s
        0x1445s
        0x1450s
        0x1451s
        0x1454s
        0x1455s
        0x1500s
        0x1501s
        0x1504s
        0x1505s
        0x1510s
        0x1511s
        0x1514s
        0x1515s
        0x1540s
        0x1541s
        0x1544s
        0x1545s
        0x1550s
        0x1551s
        0x1554s
        0x1555s
        0x4000s
        0x4001s
        0x4004s
        0x4005s
        0x4010s
        0x4011s
        0x4014s
        0x4015s
        0x4040s
        0x4041s
        0x4044s
        0x4045s
        0x4050s
        0x4051s
        0x4054s
        0x4055s
        0x4100s
        0x4101s
        0x4104s
        0x4105s
        0x4110s
        0x4111s
        0x4114s
        0x4115s
        0x4140s
        0x4141s
        0x4144s
        0x4145s
        0x4150s
        0x4151s
        0x4154s
        0x4155s
        0x4400s
        0x4401s
        0x4404s
        0x4405s
        0x4410s
        0x4411s
        0x4414s
        0x4415s
        0x4440s
        0x4441s
        0x4444s
        0x4445s
        0x4450s
        0x4451s
        0x4454s
        0x4455s
        0x4500s
        0x4501s
        0x4504s
        0x4505s
        0x4510s
        0x4511s
        0x4514s
        0x4515s
        0x4540s
        0x4541s
        0x4544s
        0x4545s
        0x4550s
        0x4551s
        0x4554s
        0x4555s
        0x5000s
        0x5001s
        0x5004s
        0x5005s
        0x5010s
        0x5011s
        0x5014s
        0x5015s
        0x5040s
        0x5041s
        0x5044s
        0x5045s
        0x5050s
        0x5051s
        0x5054s
        0x5055s
        0x5100s
        0x5101s
        0x5104s
        0x5105s
        0x5110s
        0x5111s
        0x5114s
        0x5115s
        0x5140s
        0x5141s
        0x5144s
        0x5145s
        0x5150s
        0x5151s
        0x5154s
        0x5155s
        0x5400s
        0x5401s
        0x5404s
        0x5405s
        0x5410s
        0x5411s
        0x5414s
        0x5415s
        0x5440s
        0x5441s
        0x5444s
        0x5445s
        0x5450s
        0x5451s
        0x5454s
        0x5455s
        0x5500s
        0x5501s
        0x5504s
        0x5505s
        0x5510s
        0x5511s
        0x5514s
        0x5515s
        0x5540s
        0x5541s
        0x5544s
        0x5545s
        0x5550s
        0x5551s
        0x5554s
        0x5555s
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x8
        0x9
        0x40
        0x41
        0x48
        0x49
        0x200
        0x201
        0x208
        0x209
        0x240
        0x241
        0x248
        0x249
        0x1000
        0x1001
        0x1008
        0x1009
        0x1040
        0x1041
        0x1048
        0x1049
        0x1200
        0x1201
        0x1208
        0x1209
        0x1240
        0x1241
        0x1248
        0x1249
        0x8000
        0x8001
        0x8008
        0x8009
        0x8040
        0x8041
        0x8048
        0x8049
        0x8200
        0x8201
        0x8208
        0x8209
        0x8240
        0x8241
        0x8248
        0x8249
        0x9000
        0x9001
        0x9008
        0x9009
        0x9040
        0x9041
        0x9048
        0x9049
        0x9200
        0x9201
        0x9208
        0x9209
        0x9240
        0x9241
        0x9248
        0x9249
        0x40000
        0x40001
        0x40008
        0x40009
        0x40040
        0x40041
        0x40048
        0x40049
        0x40200
        0x40201
        0x40208
        0x40209
        0x40240
        0x40241
        0x40248
        0x40249
        0x41000
        0x41001
        0x41008
        0x41009
        0x41040
        0x41041
        0x41048
        0x41049
        0x41200
        0x41201
        0x41208
        0x41209
        0x41240
        0x41241
        0x41248
        0x41249
        0x48000
        0x48001
        0x48008
        0x48009
        0x48040
        0x48041
        0x48048
        0x48049
        0x48200
        0x48201
        0x48208
        0x48209
        0x48240
        0x48241
        0x48248
        0x48249
        0x49000    # 4.19E-40f
        0x49001    # 4.19001E-40f
        0x49008
        0x49009
        0x49040
        0x49041
        0x49048
        0x49049
        0x49200
        0x49201
        0x49208
        0x49209
        0x49240
        0x49241
        0x49248
        0x49249
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x10
        0x11
        0x100
        0x101
        0x110
        0x111
        0x1000
        0x1001
        0x1010
        0x1011
        0x1100
        0x1101
        0x1110
        0x1111
        0x10000
        0x10001
        0x10010
        0x10011
        0x10100
        0x10101
        0x10110
        0x10111
        0x11000
        0x11001
        0x11010
        0x11011
        0x11100
        0x11101
        0x11110
        0x11111
        0x100000
        0x100001
        0x100010
        0x100011
        0x100100
        0x100101
        0x100110
        0x100111
        0x101000
        0x101001
        0x101010
        0x101011
        0x101100
        0x101101
        0x101110
        0x101111
        0x110000
        0x110001
        0x110010
        0x110011
        0x110100
        0x110101
        0x110110
        0x110111
        0x111000
        0x111001
        0x111010
        0x111011
        0x111100
        0x111101
        0x111110
        0x111111
        0x1000000
        0x1000001
        0x1000010
        0x1000011
        0x1000100
        0x1000101
        0x1000110
        0x1000111
        0x1001000
        0x1001001
        0x1001010
        0x1001011
        0x1001100
        0x1001101
        0x1001110
        0x1001111
        0x1010000
        0x1010001
        0x1010010
        0x1010011
        0x1010100
        0x1010101
        0x1010110
        0x1010111
        0x1011000
        0x1011001
        0x1011010
        0x1011011
        0x1011100
        0x1011101
        0x1011110
        0x1011111
        0x1100000
        0x1100001
        0x1100010
        0x1100011
        0x1100100
        0x1100101
        0x1100110
        0x1100111
        0x1101000
        0x1101001
        0x1101010
        0x1101011
        0x1101100
        0x1101101
        0x1101110
        0x1101111
        0x1110000
        0x1110001
        0x1110010
        0x1110011
        0x1110100
        0x1110101
        0x1110110
        0x1110111
        0x1111000
        0x1111001
        0x1111010
        0x1111011
        0x1111100
        0x1111101
        0x1111110
        0x1111111
        0x10000000
        0x10000001
        0x10000010
        0x10000011
        0x10000100
        0x10000101
        0x10000110
        0x10000111
        0x10001000
        0x10001001
        0x10001010
        0x10001011
        0x10001100
        0x10001101
        0x10001110
        0x10001111
        0x10010000
        0x10010001
        0x10010010
        0x10010011
        0x10010100
        0x10010101
        0x10010110
        0x10010111
        0x10011000
        0x10011001
        0x10011010
        0x10011011
        0x10011100
        0x10011101
        0x10011110
        0x10011111
        0x10100000
        0x10100001
        0x10100010
        0x10100011
        0x10100100
        0x10100101
        0x10100110
        0x10100111
        0x10101000
        0x10101001
        0x10101010
        0x10101011
        0x10101100
        0x10101101
        0x10101110
        0x10101111
        0x10110000
        0x10110001
        0x10110010
        0x10110011
        0x10110100
        0x10110101
        0x10110110
        0x10110111
        0x10111000
        0x10111001
        0x10111010
        0x10111011
        0x10111100
        0x10111101
        0x10111110
        0x10111111
        0x11000000
        0x11000001
        0x11000010
        0x11000011
        0x11000100
        0x11000101
        0x11000110
        0x11000111
        0x11001000
        0x11001001
        0x11001010
        0x11001011
        0x11001100
        0x11001101
        0x11001110
        0x11001111
        0x11010000
        0x11010001
        0x11010010
        0x11010011
        0x11010100
        0x11010101
        0x11010110
        0x11010111
        0x11011000
        0x11011001
        0x11011010
        0x11011011
        0x11011100
        0x11011101
        0x11011110
        0x11011111
        0x11100000
        0x11100001
        0x11100010
        0x11100011
        0x11100100
        0x11100101
        0x11100110
        0x11100111
        0x11101000
        0x11101001
        0x11101010
        0x11101011
        0x11101100
        0x11101101
        0x11101110
        0x11101111
        0x11110000
        0x11110001
        0x11110010
        0x11110011
        0x11110100
        0x11110101
        0x11110110
        0x11110111
        0x11111000
        0x11111001
        0x11111010
        0x11111011
        0x11111100
        0x11111101
        0x11111110
        0x11111111
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x20
        0x21
        0x400
        0x401
        0x420
        0x421
        0x8000
        0x8001
        0x8020
        0x8021
        0x8400
        0x8401
        0x8420
        0x8421
        0x100000
        0x100001
        0x100020
        0x100021
        0x100400
        0x100401
        0x100420
        0x100421
        0x108000
        0x108001
        0x108020
        0x108021
        0x108400
        0x108401
        0x108420
        0x108421
        0x2000000
        0x2000001
        0x2000020
        0x2000021
        0x2000400
        0x2000401
        0x2000420
        0x2000421
        0x2008000
        0x2008001
        0x2008020
        0x2008021
        0x2008400
        0x2008401
        0x2008420
        0x2008421
        0x2100000
        0x2100001
        0x2100020
        0x2100021
        0x2100400
        0x2100401
        0x2100420
        0x2100421
        0x2108000
        0x2108001
        0x2108020
        0x2108021
        0x2108400
        0x2108401
        0x2108420
        0x2108421
        0x40000000    # 2.0f
        0x40000001    # 2.0000002f
        0x40000020    # 2.0000076f
        0x40000021    # 2.0000079f
        0x40000400    # 2.0002441f
        0x40000401    # 2.0002444f
        0x40000420    # 2.0002518f
        0x40000421    # 2.000252f
        0x40008000    # 2.0078125f
        0x40008001
        0x40008020
        0x40008021
        0x40008400
        0x40008401
        0x40008420
        0x40008421
        0x40100000    # 2.25f
        0x40100001    # 2.2500002f
        0x40100020    # 2.2500076f
        0x40100021    # 2.2500079f
        0x40100400
        0x40100401
        0x40100420
        0x40100421
        0x40108000    # 2.2578125f
        0x40108001
        0x40108020
        0x40108021
        0x40108400
        0x40108401
        0x40108420
        0x40108421
        0x42000000    # 32.0f
        0x42000001    # 32.000004f
        0x42000020    # 32.000122f
        0x42000021    # 32.000126f
        0x42000400
        0x42000401
        0x42000420
        0x42000421
        0x42008000    # 32.125f
        0x42008001
        0x42008020
        0x42008021
        0x42008400
        0x42008401
        0x42008420
        0x42008421
        0x42100000    # 36.0f
        0x42100001    # 36.000004f
        0x42100020    # 36.000122f
        0x42100021    # 36.000126f
        0x42100400
        0x42100401
        0x42100420
        0x42100421
        0x42108000    # 36.125f
        0x42108001
        0x42108020
        0x42108021
        0x42108400
        0x42108401
        0x42108420
        0x42108421
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x1
        0x80
        0x81
        0x4000
        0x4001
        0x4080
        0x4081
        0x200000
        0x200001
        0x200080
        0x200081
        0x204000
        0x204001
        0x204080
        0x204081
        0x10000000
        0x10000001
        0x10000080
        0x10000081
        0x10004000
        0x10004001
        0x10004080
        0x10004081
        0x10200000
        0x10200001
        0x10200080
        0x10200081
        0x10204000
        0x10204001
        0x10204080
        0x10204081
        0x800000000L
        0x800000001L
        0x800000080L
        0x800000081L
        0x800004000L
        0x800004001L
        0x800004080L
        0x800004081L
        0x800200000L
        0x800200001L
        0x800200080L
        0x800200081L
        0x800204000L
        0x800204001L
        0x800204080L
        0x800204081L
        0x810000000L
        0x810000001L
        0x810000080L
        0x810000081L
        0x810004000L
        0x810004001L
        0x810004080L
        0x810004081L
        0x810200000L
        0x810200001L
        0x810200080L
        0x810200081L
        0x810204000L
        0x810204001L
        0x810204080L
        0x810204081L
        0x40000000000L
        0x40000000001L
        0x40000000080L
        0x40000000081L
        0x40000004000L
        0x40000004001L
        0x40000004080L
        0x40000004081L
        0x40000200000L
        0x40000200001L
        0x40000200080L
        0x40000200081L
        0x40000204000L
        0x40000204001L
        0x40000204080L
        0x40000204081L
        0x40010000000L
        0x40010000001L
        0x40010000080L
        0x40010000081L
        0x40010004000L
        0x40010004001L
        0x40010004080L
        0x40010004081L
        0x40010200000L
        0x40010200001L
        0x40010200080L
        0x40010200081L
        0x40010204000L
        0x40010204001L
        0x40010204080L
        0x40010204081L
        0x40800000000L
        0x40800000001L
        0x40800000080L
        0x40800000081L
        0x40800004000L
        0x40800004001L
        0x40800004080L
        0x40800004081L
        0x40800200000L
        0x40800200001L
        0x40800200080L
        0x40800200081L
        0x40800204000L
        0x40800204001L
        0x40800204080L
        0x40800204081L
        0x40810000000L
        0x40810000001L
        0x40810000080L
        0x40810000081L
        0x40810004000L
        0x40810004001L
        0x40810004080L
        0x40810004081L
        0x40810200000L
        0x40810200001L
        0x40810200080L
        0x40810200081L
        0x40810204000L
        0x40810204001L
        0x40810204080L
        0x40810204081L
        0x2000000000000L
        0x2000000000001L
        0x2000000000080L
        0x2000000000081L
        0x2000000004000L
        0x2000000004001L
        0x2000000004080L
        0x2000000004081L
        0x2000000200000L
        0x2000000200001L
        0x2000000200080L
        0x2000000200081L
        0x2000000204000L
        0x2000000204001L
        0x2000000204080L
        0x2000000204081L
        0x2000010000000L
        0x2000010000001L
        0x2000010000080L
        0x2000010000081L
        0x2000010004000L
        0x2000010004001L
        0x2000010004080L
        0x2000010004081L
        0x2000010200000L
        0x2000010200001L
        0x2000010200080L
        0x2000010200081L
        0x2000010204000L
        0x2000010204001L
        0x2000010204080L
        0x2000010204081L
        0x2000800000000L
        0x2000800000001L
        0x2000800000080L
        0x2000800000081L
        0x2000800004000L
        0x2000800004001L
        0x2000800004080L
        0x2000800004081L
        0x2000800200000L
        0x2000800200001L
        0x2000800200080L
        0x2000800200081L
        0x2000800204000L
        0x2000800204001L
        0x2000800204080L
        0x2000800204081L
        0x2000810000000L
        0x2000810000001L
        0x2000810000080L
        0x2000810000081L
        0x2000810004000L
        0x2000810004001L
        0x2000810004080L
        0x2000810004081L
        0x2000810200000L
        0x2000810200001L
        0x2000810200080L
        0x2000810200081L
        0x2000810204000L
        0x2000810204001L
        0x2000810204080L
        0x2000810204081L
        0x2040000000000L
        0x2040000000001L
        0x2040000000080L
        0x2040000000081L
        0x2040000004000L
        0x2040000004001L
        0x2040000004080L
        0x2040000004081L
        0x2040000200000L
        0x2040000200001L
        0x2040000200080L
        0x2040000200081L
        0x2040000204000L
        0x2040000204001L
        0x2040000204080L
        0x2040000204081L
        0x2040010000000L
        0x2040010000001L
        0x2040010000080L
        0x2040010000081L
        0x2040010004000L
        0x2040010004001L
        0x2040010004080L
        0x2040010004081L
        0x2040010200000L
        0x2040010200001L
        0x2040010200080L
        0x2040010200081L
        0x2040010204000L
        0x2040010204001L
        0x2040010204080L
        0x2040010204081L
        0x2040800000000L
        0x2040800000001L
        0x2040800000080L
        0x2040800000081L
        0x2040800004000L
        0x2040800004001L
        0x2040800004080L
        0x2040800004081L
        0x2040800200000L
        0x2040800200001L
        0x2040800200080L
        0x2040800200081L
        0x2040800204000L
        0x2040800204001L
        0x2040800204080L
        0x2040800204081L
        0x2040810000000L
        0x2040810000001L
        0x2040810000080L
        0x2040810000081L
        0x2040810004000L
        0x2040810004001L
        0x2040810004080L
        0x2040810004081L
        0x2040810200000L
        0x2040810200001L
        0x2040810200080L
        0x2040810200081L
        0x2040810204000L
        0x2040810204001L
        0x2040810204080L
        0x2040810204081L
        0x100000000000000L
        0x100000000000001L
        0x100000000000080L
        0x100000000000081L
        0x100000000004000L
        0x100000000004001L
        0x100000000004080L
        0x100000000004081L
        0x100000000200000L
        0x100000000200001L
        0x100000000200080L
        0x100000000200081L    # 7.2911220229518E-304
        0x100000000204000L
        0x100000000204001L
        0x100000000204080L
        0x100000000204081L
        0x100000010000000L
        0x100000010000001L
        0x100000010000080L
        0x100000010000081L
        0x100000010004000L
        0x100000010004001L
        0x100000010004080L
        0x100000010004081L
        0x100000010200000L
        0x100000010200001L
        0x100000010200080L
        0x100000010200081L
        0x100000010204000L
        0x100000010204001L
        0x100000010204080L
        0x100000010204081L
        0x100000800000000L
        0x100000800000001L
        0x100000800000080L
        0x100000800000081L
        0x100000800004000L
        0x100000800004001L
        0x100000800004080L
        0x100000800004081L
        0x100000800200000L
        0x100000800200001L
        0x100000800200080L
        0x100000800200081L
        0x100000800204000L
        0x100000800204001L
        0x100000800204080L
        0x100000800204081L
        0x100000810000000L
        0x100000810000001L    # 7.2911780809876E-304
        0x100000810000080L
        0x100000810000081L
        0x100000810004000L
        0x100000810004001L
        0x100000810004080L
        0x100000810004081L
        0x100000810200000L
        0x100000810200001L
        0x100000810200080L    # 7.291178084382999E-304
        0x100000810200081L    # 7.291178084383E-304
        0x100000810204000L
        0x100000810204001L
        0x100000810204080L
        0x100000810204081L
        0x100040000000000L
        0x100040000000001L
        0x100040000000080L
        0x100040000000081L
        0x100040000004000L
        0x100040000004001L
        0x100040000004080L
        0x100040000004081L
        0x100040000200000L
        0x100040000200001L
        0x100040000200080L
        0x100040000200081L
        0x100040000204000L
        0x100040000204001L
        0x100040000204080L
        0x100040000204081L
        0x100040010000000L
        0x100040010000001L
        0x100040010000080L
        0x100040010000081L
        0x100040010004000L
        0x100040010004001L
        0x100040010004080L
        0x100040010004081L
        0x100040010200000L
        0x100040010200001L
        0x100040010200080L
        0x100040010200081L
        0x100040010204000L
        0x100040010204001L
        0x100040010204080L
        0x100040010204081L
        0x100040800000000L
        0x100040800000001L
        0x100040800000080L
        0x100040800000081L
        0x100040800004000L
        0x100040800004001L
        0x100040800004080L
        0x100040800004081L
        0x100040800200000L
        0x100040800200001L
        0x100040800200080L
        0x100040800200081L
        0x100040800204000L
        0x100040800204001L
        0x100040800204080L
        0x100040800204081L
        0x100040810000000L
        0x100040810000001L
        0x100040810000080L
        0x100040810000081L
        0x100040810004000L
        0x100040810004001L
        0x100040810004080L
        0x100040810004081L
        0x100040810200000L
        0x100040810200001L
        0x100040810200080L
        0x100040810200081L
        0x100040810204000L
        0x100040810204001L
        0x100040810204080L
        0x100040810204081L
        0x102000000000000L    # 8.202512272000947E-304
        0x102000000000001L    # 8.202512272000949E-304
        0x102000000000080L
        0x102000000000081L
        0x102000000004000L
        0x102000000004001L
        0x102000000004080L
        0x102000000004081L
        0x102000000200000L
        0x102000000200001L
        0x102000000200080L
        0x102000000200081L
        0x102000000204000L
        0x102000000204001L
        0x102000000204080L
        0x102000000204081L
        0x102000010000000L
        0x102000010000001L
        0x102000010000080L
        0x102000010000081L
        0x102000010004000L
        0x102000010004001L
        0x102000010004080L
        0x102000010004081L
        0x102000010200000L
        0x102000010200001L
        0x102000010200080L
        0x102000010200081L
        0x102000010204000L    # 8.202512710007403E-304
        0x102000010204001L    # 8.202512710007405E-304
        0x102000010204080L    # 8.20251271000761E-304
        0x102000010204081L    # 8.202512710007612E-304
        0x102000800000000L
        0x102000800000001L
        0x102000800000080L
        0x102000800000081L
        0x102000800004000L
        0x102000800004001L
        0x102000800004080L
        0x102000800004081L
        0x102000800200000L
        0x102000800200001L
        0x102000800200080L
        0x102000800200081L
        0x102000800204000L
        0x102000800204001L
        0x102000800204080L
        0x102000800204081L
        0x102000810000000L
        0x102000810000001L
        0x102000810000080L
        0x102000810000081L
        0x102000810004000L
        0x102000810004001L
        0x102000810004080L
        0x102000810004081L
        0x102000810200000L
        0x102000810200001L
        0x102000810200080L
        0x102000810200081L
        0x102000810204000L
        0x102000810204001L
        0x102000810204080L
        0x102000810204081L
        0x102040000000000L
        0x102040000000001L
        0x102040000000080L
        0x102040000000081L
        0x102040000004000L
        0x102040000004001L
        0x102040000004080L
        0x102040000004081L
        0x102040000200000L
        0x102040000200001L
        0x102040000200080L
        0x102040000200081L
        0x102040000204000L
        0x102040000204001L
        0x102040000204080L
        0x102040000204081L
        0x102040010000000L
        0x102040010000001L
        0x102040010000080L
        0x102040010000081L
        0x102040010004000L
        0x102040010004001L
        0x102040010004080L
        0x102040010004081L
        0x102040010200000L
        0x102040010200001L
        0x102040010200080L
        0x102040010200081L
        0x102040010204000L
        0x102040010204001L
        0x102040010204080L
        0x102040010204081L
        0x102040800000000L
        0x102040800000001L
        0x102040800000080L
        0x102040800000081L
        0x102040800004000L
        0x102040800004001L
        0x102040800004080L
        0x102040800004081L
        0x102040800200000L
        0x102040800200001L
        0x102040800200080L
        0x102040800200081L
        0x102040800204000L
        0x102040800204001L
        0x102040800204080L
        0x102040800204081L
        0x102040810000000L
        0x102040810000001L
        0x102040810000080L
        0x102040810000081L
        0x102040810004000L
        0x102040810004001L
        0x102040810004080L
        0x102040810004081L
        0x102040810200000L
        0x102040810200001L
        0x102040810200080L
        0x102040810200081L
        0x102040810204000L
        0x102040810204001L
        0x102040810204080L
        0x102040810204081L
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x2t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "intLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intLen"
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 14
    .param p1, "bigInt"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bigInt"
        }
    .end annotation

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_6

    .line 329
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 332
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 336
    .local v0, "barr":[B
    array-length v2, v0

    .line 337
    .local v2, "barrLen":I
    const/4 v3, 0x0

    .line 338
    .local v3, "barrStart":I
    aget-byte v1, v0, v1

    if-nez v1, :cond_1

    .line 342
    add-int/lit8 v2, v2, -0x1

    .line 343
    const/4 v3, 0x1

    .line 345
    :cond_1
    add-int/lit8 v1, v2, 0x7

    const/16 v4, 0x8

    div-int/2addr v1, v4

    .line 346
    .local v1, "intLen":I
    new-array v5, v1, [J

    iput-object v5, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 348
    add-int/lit8 v5, v1, -0x1

    .line 349
    .local v5, "iarrJ":I
    rem-int/lit8 v6, v2, 0x8

    add-int/2addr v6, v3

    .line 350
    .local v6, "rem":I
    const-wide/16 v7, 0x0

    .line 351
    .local v7, "temp":J
    move v9, v3

    .line 352
    .local v9, "barrI":I
    if-ge v3, v6, :cond_3

    .line 354
    :goto_0
    if-ge v9, v6, :cond_2

    .line 356
    shl-long/2addr v7, v4

    .line 357
    aget-byte v10, v0, v9

    and-int/lit16 v10, v10, 0xff

    .line 358
    .local v10, "barrBarrI":I
    int-to-long v11, v10

    or-long/2addr v7, v11

    .line 354
    .end local v10    # "barrBarrI":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 360
    :cond_2
    iget-object v10, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v11, v5, -0x1

    .end local v5    # "iarrJ":I
    .local v11, "iarrJ":I
    aput-wide v7, v10, v5

    move v5, v11

    .line 363
    .end local v11    # "iarrJ":I
    .restart local v5    # "iarrJ":I
    :cond_3
    :goto_1
    if-ltz v5, :cond_5

    .line 365
    const-wide/16 v7, 0x0

    .line 366
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_4

    .line 368
    shl-long/2addr v7, v4

    .line 369
    add-int/lit8 v11, v9, 0x1

    .end local v9    # "barrI":I
    .local v11, "barrI":I
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    .line 370
    .local v9, "barrBarrI":I
    int-to-long v12, v9

    or-long/2addr v7, v12

    .line 366
    .end local v9    # "barrBarrI":I
    add-int/lit8 v10, v10, 0x1

    move v9, v11

    goto :goto_2

    .line 372
    .end local v10    # "i":I
    .end local v11    # "barrI":I
    .local v9, "barrI":I
    :cond_4
    iget-object v10, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aput-wide v7, v10, v5

    .line 363
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 374
    :cond_5
    return-void

    .line 326
    .end local v0    # "barr":[B
    .end local v1    # "intLen":I
    .end local v2    # "barrLen":I
    .end local v3    # "barrStart":I
    .end local v5    # "iarrJ":I
    .end local v6    # "rem":I
    .end local v7    # "temp":J
    .end local v9    # "barrI":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid F2m field value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([J)V
    .locals 0
    .param p1, "ints"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ints"
        }
    .end annotation

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 307
    return-void
.end method

.method public constructor <init>([JII)V
    .locals 2
    .param p1, "ints"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ints",
            "off",
            "len"
        }
    .end annotation

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    if-nez p2, :cond_0

    array-length v0, p1

    if-ne p3, v0, :cond_0

    .line 313
    iput-object p1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    goto :goto_0

    .line 317
    :cond_0
    new-array v0, p3, [J

    iput-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 318
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    :goto_0
    return-void
.end method

.method private static add([JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "count"
        }
    .end annotation

    .line 725
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 727
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static add([JI[JI[JII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff",
            "count"
        }
    .end annotation

    .line 733
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 735
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static addBoth([JI[JI[JII)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y1"    # [J
    .param p3, "y1Off"    # I
    .param p4, "y2"    # [J
    .param p5, "y2Off"    # I
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y1",
            "y1Off",
            "y2",
            "y2Off",
            "count"
        }
    .end annotation

    .line 741
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 743
    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-int v6, p5, v0

    aget-wide v6, p4, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v1

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V
    .locals 9
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "otherDegree"    # I
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "otherDegree",
            "bits"
        }
    .end annotation

    .line 661
    add-int/lit8 v0, p2, 0x3f

    ushr-int/lit8 v5, v0, 0x6

    .line 663
    .local v5, "otherLen":I
    ushr-int/lit8 v2, p3, 0x6

    .line 664
    .local v2, "words":I
    and-int/lit8 v6, p3, 0x3f

    .line 666
    .local v6, "shift":I
    if-nez v6, :cond_0

    .line 668
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v1, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, v5}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 669
    return-void

    .line 672
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v3, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v0

    .line 673
    .local v0, "carry":J
    const-wide/16 v3, 0x0

    cmp-long v7, v0, v3

    if-eqz v7, :cond_1

    .line 675
    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int v4, v5, v2

    aget-wide v7, v3, v4

    xor-long/2addr v7, v0

    aput-wide v7, v3, v4

    .line 677
    :cond_1
    return-void
.end method

.method private static addShiftedDown([JI[JIII)J
    .locals 11
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "count",
            "shift"
        }
    .end annotation

    .line 694
    rsub-int/lit8 v0, p5, 0x40

    .line 695
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 696
    .local v1, "prev":J
    move v3, p4

    .line 697
    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 699
    add-int v4, p3, v3

    aget-wide v4, p2, v4

    .line 700
    .local v4, "next":J
    add-int v6, p1, v3

    aget-wide v7, p0, v6

    ushr-long v9, v4, p5

    or-long/2addr v9, v1

    xor-long/2addr v7, v9

    aput-wide v7, p0, v6

    .line 701
    shl-long v1, v4, v0

    .line 702
    .end local v4    # "next":J
    goto :goto_0

    .line 703
    :cond_0
    return-wide v1
.end method

.method private static addShiftedUp([JI[JIII)J
    .locals 12
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "count",
            "shift"
        }
    .end annotation

    .line 681
    rsub-int/lit8 v0, p5, 0x40

    .line 682
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 683
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move/from16 v4, p4

    if-ge v3, v4, :cond_0

    .line 685
    add-int v5, p3, v3

    aget-wide v5, p2, v5

    .line 686
    .local v5, "next":J
    add-int v7, p1, v3

    aget-wide v8, p0, v7

    shl-long v10, v5, p5

    or-long/2addr v10, v1

    xor-long/2addr v8, v10

    aput-wide v8, p0, v7

    .line 687
    ushr-long v1, v5, v0

    .line 683
    .end local v5    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static bitLength(J)I
    .locals 5
    .param p0, "w"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "w"
        }
    .end annotation

    .line 507
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    .line 508
    .local v1, "u":I
    if-nez v1, :cond_0

    .line 510
    long-to-int v1, p0

    .line 511
    const/4 v0, 0x0

    .local v0, "b":I
    goto :goto_0

    .line 515
    .end local v0    # "b":I
    :cond_0
    const/16 v0, 0x20

    .line 518
    .restart local v0    # "b":I
    :goto_0
    ushr-int/lit8 v2, v1, 0x10

    .line 519
    .local v2, "t":I
    if-nez v2, :cond_2

    .line 521
    ushr-int/lit8 v2, v1, 0x8

    .line 522
    sget-object v3, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    if-nez v2, :cond_1

    aget-byte v3, v3, v1

    goto :goto_1

    :cond_1
    aget-byte v3, v3, v2

    add-int/lit8 v3, v3, 0x8

    .local v3, "k":I
    :goto_1
    goto :goto_3

    .line 526
    .end local v3    # "k":I
    :cond_2
    ushr-int/lit8 v3, v2, 0x8

    .line 527
    .local v3, "v":I
    sget-object v4, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    if-nez v3, :cond_3

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x10

    goto :goto_2

    :cond_3
    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x18

    :goto_2
    move v3, v4

    .line 530
    .local v3, "k":I
    :goto_3
    add-int v4, v0, v3

    return v4
.end method

.method private degreeFrom(I)I
    .locals 6
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "limit"
        }
    .end annotation

    .line 466
    add-int/lit8 v0, p1, 0x3e

    ushr-int/lit8 v0, v0, 0x6

    .line 470
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 472
    const/4 v1, 0x0

    return v1

    .line 474
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    .line 476
    .local v2, "w":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 478
    shl-int/lit8 v1, v0, 0x6

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1
.end method

.method private static distribute([JIIII)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "src"    # I
    .param p2, "dst1"    # I
    .param p3, "dst2"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "src",
            "dst1",
            "dst2",
            "count"
        }
    .end annotation

    .line 749
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 751
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    .line 752
    .local v1, "v":J
    add-int v3, p2, v0

    aget-wide v4, p0, v3

    xor-long/2addr v4, v1

    aput-wide v4, p0, v3

    .line 753
    add-int v3, p3, v0

    aget-wide v4, p0, v3

    xor-long/2addr v4, v1

    aput-wide v4, p0, v3

    .line 749
    .end local v1    # "v":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 755
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static flipBit([JII)V
    .locals 7
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "n"
        }
    .end annotation

    .line 815
    ushr-int/lit8 v0, p2, 0x6

    .line 817
    .local v0, "theInt":I
    and-int/lit8 v1, p2, 0x3f

    .line 818
    .local v1, "theBit":I
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    .line 819
    .local v2, "flipper":J
    add-int v4, p1, v0

    aget-wide v5, p0, v4

    xor-long/2addr v5, v2

    aput-wide v5, p0, v4

    .line 820
    return-void
.end method

.method private static flipVector([JI[JIII)V
    .locals 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "yLen"    # I
    .param p5, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "yLen",
            "bits"
        }
    .end annotation

    .line 1650
    ushr-int/lit8 v0, p5, 0x6

    add-int/2addr p1, v0

    .line 1651
    and-int/lit8 p5, p5, 0x3f

    .line 1653
    if-nez p5, :cond_0

    .line 1655
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    goto :goto_0

    .line 1659
    :cond_0
    add-int/lit8 v1, p1, 0x1

    rsub-int/lit8 v5, p5, 0x40

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "x":[J
    .end local p2    # "y":[J
    .end local p3    # "yOff":I
    .end local p4    # "yLen":I
    .local v0, "x":[J
    .local v2, "y":[J
    .local v3, "yOff":I
    .local v4, "yLen":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedDown([JI[JIII)J

    move-result-wide p2

    .line 1660
    .local p2, "carry":J
    aget-wide v5, v0, p1

    xor-long/2addr v5, p2

    aput-wide v5, v0, p1

    .line 1662
    .end local p2    # "carry":J
    :goto_0
    return-void
.end method

.method private static flipWord([JIIJ)V
    .locals 6
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "bit",
            "word"
        }
    .end annotation

    .line 764
    ushr-int/lit8 v0, p2, 0x6

    add-int/2addr v0, p1

    .line 765
    .local v0, "n":I
    and-int/lit8 v1, p2, 0x3f

    .line 766
    .local v1, "shift":I
    if-nez v1, :cond_0

    .line 768
    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    goto :goto_0

    .line 772
    :cond_0
    aget-wide v2, p0, v0

    shl-long v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 773
    rsub-int/lit8 v2, v1, 0x40

    ushr-long/2addr p3, v2

    .line 774
    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-eqz v4, :cond_1

    .line 776
    add-int/lit8 v0, v0, 0x1

    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v0

    .line 779
    :cond_1
    :goto_0
    return-void
.end method

.method private static interleave([JI[JIII)V
    .locals 7
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count",
            "width"
        }
    .end annotation

    .line 1742
    packed-switch p5, :pswitch_data_0

    .line 1754
    :pswitch_0
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v0, v0, p5

    add-int/lit8 v6, v0, -0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p0    # "x":[J
    .end local p1    # "xOff":I
    .end local p2    # "z":[J
    .end local p3    # "zOff":I
    .end local p4    # "count":I
    .local v1, "x":[J
    .local v2, "xOff":I
    .local v3, "z":[J
    .local v4, "zOff":I
    .local v5, "count":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_n([JI[JIII)V

    goto :goto_0

    .line 1751
    .end local v1    # "x":[J
    .end local v2    # "xOff":I
    .end local v3    # "z":[J
    .end local v4    # "zOff":I
    .end local v5    # "count":I
    .restart local p0    # "x":[J
    .restart local p1    # "xOff":I
    .restart local p2    # "z":[J
    .restart local p3    # "zOff":I
    .restart local p4    # "count":I
    :pswitch_1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave7([JI[JII)V

    .line 1752
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    goto :goto_0

    .line 1748
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave5([JI[JII)V

    .line 1749
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    goto :goto_0

    .line 1745
    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->interleave3([JI[JII)V

    .line 1746
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1757
    .end local p0    # "x":[J
    .end local p1    # "xOff":I
    .end local p2    # "z":[J
    .end local p3    # "zOff":I
    .end local p4    # "count":I
    .restart local v1    # "x":[J
    .restart local v2    # "xOff":I
    .restart local v3    # "z":[J
    .restart local v4    # "zOff":I
    .restart local v5    # "count":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static interleave2_32to64(I)J
    .locals 8
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1907
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    and-int/lit16 v1, p0, 0xff

    aget-short v0, v0, v1

    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 1908
    .local v0, "r00":I
    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-short v1, v1, v2

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE2_TABLE:[S

    ushr-int/lit8 v3, p0, 0x18

    aget-short v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 1909
    .local v1, "r32":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static interleave2_n(JI)J
    .locals 8
    .param p0, "x"    # J
    .param p2, "rounds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "rounds"
        }
    .end annotation

    .line 1883
    nop

    :goto_0
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 1885
    add-int/lit8 p2, p2, -0x2

    .line 1886
    long-to-int v2, p0

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/16 v2, 0x10

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1887
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v6

    shl-long v1, v6, v1

    or-long/2addr v1, v4

    ushr-long v4, p0, v0

    long-to-int v0, v4

    and-int/2addr v0, v3

    .line 1888
    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v4

    const/4 v0, 0x2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    const/16 v0, 0x30

    ushr-long v4, p0, v0

    long-to-int v0, v4

    and-int/2addr v0, v3

    .line 1889
    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave4_16to64(I)J

    move-result-wide v3

    const/4 v0, 0x3

    shl-long/2addr v3, v0

    or-long p0, v1, v3

    goto :goto_0

    .line 1891
    :cond_0
    if-lez p2, :cond_1

    .line 1893
    long-to-int v2, p0

    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v2

    ushr-long v4, p0, v0

    long-to-int v0, v4

    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v4

    shl-long v0, v4, v1

    or-long p0, v2, v0

    .line 1895
    :cond_1
    return-wide p0
.end method

.method private static interleave2_n([JI[JIII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "rounds"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count",
            "rounds"
        }
    .end annotation

    .line 1875
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1877
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3, p5}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_n(JI)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1879
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static interleave3(J)J
    .locals 8
    .param p0, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1769
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1770
    .local v0, "z":J
    long-to-int v2, p0

    const v3, 0x1fffff

    and-int/2addr v2, v3

    .line 1771
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v4

    or-long/2addr v4, v0

    const/16 v2, 0x15

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1772
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v6

    const/4 v2, 0x1

    shl-long/2addr v6, v2

    or-long/2addr v4, v6

    const/16 v2, 0x2a

    ushr-long v6, p0, v2

    long-to-int v2, v6

    and-int/2addr v2, v3

    .line 1773
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_21to63(I)J

    move-result-wide v2

    const/4 v6, 0x2

    shl-long/2addr v2, v6

    or-long/2addr v2, v4

    .line 1770
    return-wide v2
.end method

.method private static interleave3([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count"
        }
    .end annotation

    .line 1761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1763
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave3(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1765
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static interleave3_13to65(I)J
    .locals 8
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1833
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    .line 1834
    .local v0, "r00":I
    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE5_TABLE:[I

    ushr-int/lit8 v2, p0, 0x7

    aget v1, v1, v2

    .line 1835
    .local v1, "r35":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x23

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static interleave3_21to63(I)J
    .locals 10
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1793
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    and-int/lit8 v1, p0, 0x7f

    aget v0, v0, v1

    .line 1794
    .local v0, "r00":I
    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 v2, p0, 0x7

    and-int/lit8 v2, v2, 0x7f

    aget v1, v1, v2

    .line 1795
    .local v1, "r21":I
    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE3_TABLE:[I

    ushr-int/lit8 v3, p0, 0xe

    aget v2, v2, v3

    .line 1796
    .local v2, "r42":I
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v7, 0x2a

    shl-long/2addr v3, v7

    int-to-long v7, v1

    and-long/2addr v7, v5

    const/16 v9, 0x15

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    int-to-long v7, v0

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private static interleave4_16to64(I)J
    .locals 8
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1900
    sget-object v0, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    and-int/lit16 v1, p0, 0xff

    aget v0, v0, v1

    .line 1901
    .local v0, "r00":I
    sget-object v1, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE4_TABLE:[I

    ushr-int/lit8 v2, p0, 0x8

    aget v1, v1, v2

    .line 1902
    .local v1, "r32":I
    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    int-to-long v6, v0

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method private static interleave5(J)J
    .locals 5
    .param p0, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1809
    long-to-int v0, p0

    and-int/lit16 v0, v0, 0x1fff

    invoke-static {v0}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v0

    const/16 v2, 0xd

    ushr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x1fff

    .line 1810
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x1a

    ushr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x1fff

    .line 1811
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x27

    ushr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x1fff

    .line 1812
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/16 v2, 0x34

    ushr-long v2, p0, v2

    long-to-int v3, v2

    and-int/lit16 v2, v3, 0x1fff

    .line 1813
    invoke-static {v2}, Lorg/bouncycastle/math/ec/LongArray;->interleave3_13to65(I)J

    move-result-wide v2

    const/4 v4, 0x4

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1809
    return-wide v0
.end method

.method private static interleave5([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count"
        }
    .end annotation

    .line 1801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1803
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave5(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1801
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1805
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static interleave7(J)J
    .locals 7
    .param p0, "x"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 1848
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    .line 1849
    .local v0, "z":J
    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    long-to-int v3, p0

    and-int/lit16 v3, v3, 0x1ff

    aget-wide v3, v2, v3

    or-long/2addr v3, v0

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x9

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x1

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x12

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x2

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x1b

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x3

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x24

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x4

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x2d

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x5

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    sget-object v2, Lorg/bouncycastle/math/ec/LongArray;->INTERLEAVE7_TABLE:[J

    const/16 v5, 0x36

    ushr-long v5, p0, v5

    long-to-int v6, v5

    and-int/lit16 v5, v6, 0x1ff

    aget-wide v5, v2, v5

    const/4 v2, 0x6

    shl-long/2addr v5, v2

    or-long/2addr v3, v5

    return-wide v3
.end method

.method private static interleave7([JI[JII)V
    .locals 4
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count"
        }
    .end annotation

    .line 1840
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1842
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave7(J)J

    move-result-wide v2

    aput-wide v2, p2, v1

    .line 1840
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1844
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static multiplyWord(J[JI[JI)V
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # [J
    .param p3, "bLen"    # I
    .param p4, "c"    # [J
    .param p5, "cOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "bLen",
            "c",
            "cOff"
        }
    .end annotation

    .line 844
    move-object/from16 v0, p4

    move/from16 v1, p5

    const-wide/16 v6, 0x1

    and-long v2, p0, v6

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 846
    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p3}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 848
    :cond_0
    const/4 v2, 0x1

    move v5, v2

    .line 849
    .local v5, "k":I
    :goto_0
    const/4 v2, 0x1

    ushr-long v10, p0, v2

    move-wide p0, v10

    cmp-long v2, v10, v8

    if-eqz v2, :cond_2

    .line 851
    and-long v10, p0, v6

    cmp-long v2, v10, v8

    if-eqz v2, :cond_1

    .line 853
    const/4 v3, 0x0

    move-object v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-result-wide v10

    .line 854
    .local v10, "carry":J
    cmp-long v0, v10, v8

    if-eqz v0, :cond_1

    .line 856
    add-int v0, p5, p3

    aget-wide v1, p4, v0

    xor-long/2addr v1, v10

    aput-wide v1, p4, v0

    .line 859
    .end local v10    # "carry":J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p4

    move/from16 v1, p5

    goto :goto_0

    .line 861
    :cond_2
    return-void
.end method

.method private static reduceBit([JIII[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "bit",
            "m",
            "ks"
        }
    .end annotation

    .line 1586
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1587
    sub-int v0, p2, p3

    .line 1588
    .local v0, "n":I
    array-length v1, p4

    .line 1589
    .local v1, "j":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1591
    aget v2, p4, v1

    add-int/2addr v2, v0

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    goto :goto_0

    .line 1593
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/LongArray;->flipBit([JII)V

    .line 1594
    return-void
.end method

.method private static reduceBitWise([JIII[I)V
    .locals 1
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bitlength"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "bitlength",
            "m",
            "ks"
        }
    .end annotation

    .line 1575
    nop

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p3, :cond_1

    .line 1577
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->testBit([JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    goto :goto_0

    .line 1582
    :cond_1
    return-void
.end method

.method private static reduceInPlace([JIII[I)I
    .locals 14
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len",
            "m",
            "ks"
        }
    .end annotation

    .line 1531
    move/from16 v0, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    add-int/lit8 v1, v4, 0x3f

    ushr-int/lit8 v6, v1, 0x6

    .line 1532
    .local v6, "mLen":I
    if-ge v0, v6, :cond_0

    .line 1534
    return v0

    .line 1537
    :cond_0
    shl-int/lit8 v1, v0, 0x6

    shl-int/lit8 v2, v4, 0x1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1538
    .local v7, "numBits":I
    shl-int/lit8 v1, v0, 0x6

    sub-int/2addr v1, v7

    move v2, v0

    move v8, v1

    .line 1539
    .end local p2    # "len":I
    .local v2, "len":I
    .local v8, "excessBits":I
    :goto_0
    const/16 v0, 0x40

    if-lt v8, v0, :cond_1

    .line 1541
    add-int/lit8 v2, v2, -0x1

    .line 1542
    add-int/lit8 v8, v8, -0x40

    goto :goto_0

    .line 1545
    :cond_1
    array-length v9, v5

    .local v9, "kLen":I
    add-int/lit8 v0, v9, -0x1

    aget v10, v5, v0

    .local v10, "kMax":I
    if-le v9, v3, :cond_2

    add-int/lit8 v0, v9, -0x2

    aget v0, v5, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 1546
    .local v11, "kNext":I
    add-int/lit8 v0, v10, 0x40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1547
    .local v12, "wordWiseLimit":I
    sub-int v0, v7, v12

    sub-int v1, v4, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v8

    shr-int/lit8 v13, v0, 0x6

    .line 1548
    .local v13, "vectorableWords":I
    if-le v13, v3, :cond_4

    .line 1550
    sub-int v3, v2, v13

    .line 1551
    .local v3, "vectorWiseWords":I
    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->reduceVectorWise([JIIII[I)V

    .line 1552
    :goto_2
    if-le v2, v3, :cond_3

    .line 1554
    add-int/lit8 v2, v2, -0x1

    add-int v0, p1, v2

    const-wide/16 v4, 0x0

    aput-wide v4, p0, v0

    goto :goto_2

    .line 1556
    :cond_3
    shl-int/lit8 v7, v3, 0x6

    .line 1559
    .end local v3    # "vectorWiseWords":I
    :cond_4
    if-le v7, v12, :cond_5

    .line 1561
    move-object v0, p0

    move v1, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move v3, v12

    .end local v12    # "wordWiseLimit":I
    .local v3, "wordWiseLimit":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/LongArray;->reduceWordWise([JIIII[I)V

    .line 1562
    move v7, v3

    goto :goto_3

    .line 1559
    .end local v3    # "wordWiseLimit":I
    .restart local v12    # "wordWiseLimit":I
    :cond_5
    move/from16 v4, p3

    move-object/from16 v5, p4

    move v3, v12

    .line 1565
    .end local v12    # "wordWiseLimit":I
    .restart local v3    # "wordWiseLimit":I
    :goto_3
    if-le v7, v4, :cond_6

    .line 1567
    invoke-static {p0, p1, v7, v4, v5}, Lorg/bouncycastle/math/ec/LongArray;->reduceBitWise([JIII[I)V

    .line 1570
    :cond_6
    return v6
.end method

.method private static reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 2
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "m"    # I
    .param p4, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len",
            "m",
            "ks"
        }
    .end annotation

    .line 1498
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    .line 1499
    .local v0, "rLen":I
    new-instance v1, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, p0, p1, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v1
.end method

.method private static reduceVectorWise([JIIII[I)V
    .locals 14
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "words"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len",
            "words",
            "m",
            "ks"
        }
    .end annotation

    .line 1639
    move-object/from16 v0, p5

    shl-int/lit8 v1, p3, 0x6

    sub-int v7, v1, p4

    .line 1640
    .local v7, "baseBit":I
    array-length v1, v0

    .line 1641
    .local v1, "j":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1643
    add-int v11, p1, p3

    sub-int v12, p2, p3

    aget v2, v0, v1

    add-int v13, v7, v2

    move-object v10, p0

    move-object v8, p0

    move v9, p1

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    goto :goto_0

    .line 1645
    :cond_0
    add-int v5, p1, p3

    sub-int v6, p2, p3

    move-object v4, p0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/LongArray;->flipVector([JI[JIII)V

    .line 1646
    return-void
.end method

.method private static reduceWord([JIIJI[I)V
    .locals 3
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "bit"    # I
    .param p3, "word"    # J
    .param p5, "m"    # I
    .param p6, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "bit",
            "word",
            "m",
            "ks"
        }
    .end annotation

    .line 1623
    sub-int v0, p2, p5

    .line 1624
    .local v0, "offset":I
    array-length v1, p6

    .line 1625
    .local v1, "j":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 1627
    aget v2, p6, v1

    add-int/2addr v2, v0

    invoke-static {p0, p1, v2, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    goto :goto_0

    .line 1629
    :cond_0
    invoke-static {p0, p1, v0, p3, p4}, Lorg/bouncycastle/math/ec/LongArray;->flipWord([JIIJ)V

    .line 1630
    return-void
.end method

.method private static reduceWordWise([JIIII[I)V
    .locals 17
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "toBit"    # I
    .param p4, "m"    # I
    .param p5, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len",
            "toBit",
            "m",
            "ks"
        }
    .end annotation

    .line 1598
    ushr-int/lit8 v0, p3, 0x6

    move/from16 v1, p2

    .line 1600
    .end local p2    # "len":I
    .local v0, "toPos":I
    .local v1, "len":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x0

    if-le v1, v0, :cond_1

    .line 1602
    add-int v4, p1, v1

    aget-wide v8, p0, v4

    .line 1603
    .local v8, "word":J
    cmp-long v4, v8, v2

    if-eqz v4, :cond_0

    .line 1605
    add-int v4, p1, v1

    aput-wide v2, p0, v4

    .line 1606
    shl-int/lit8 v7, v1, 0x6

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1608
    .end local v8    # "word":J
    :cond_0
    goto :goto_0

    .line 1611
    :cond_1
    and-int/lit8 v4, p3, 0x3f

    .line 1612
    .local v4, "partial":I
    add-int v5, p1, v0

    aget-wide v5, p0, v5

    ushr-long v13, v5, v4

    .line 1613
    .local v13, "word":J
    cmp-long v5, v13, v2

    if-eqz v5, :cond_2

    .line 1615
    add-int v2, p1, v0

    aget-wide v5, p0, v2

    shl-long v7, v13, v4

    xor-long/2addr v5, v7

    aput-wide v5, p0, v2

    .line 1616
    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/math/ec/LongArray;->reduceWord([JIIJI[I)V

    .line 1619
    .end local v4    # "partial":I
    .end local v13    # "word":J
    :cond_2
    return-void
.end method

.method private resizedInts(I)[J
    .locals 4
    .param p1, "newLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newLen"
        }
    .end annotation

    .line 535
    new-array v0, p1, [J

    .line 536
    .local v0, "newInts":[J
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    return-object v0
.end method

.method private static shiftUp([JIII)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "count"    # I
    .param p3, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "count",
            "shift"
        }
    .end annotation

    .line 595
    rsub-int/lit8 v0, p3, 0x40

    .line 596
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 597
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 599
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    .line 600
    .local v4, "next":J
    add-int v6, p1, v3

    shl-long v7, v4, p3

    or-long/2addr v7, v1

    aput-wide v7, p0, v6

    .line 601
    ushr-long v1, v4, v0

    .line 597
    .end local v4    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 603
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static shiftUp([JI[JIII)J
    .locals 9
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "z"    # [J
    .param p3, "zOff"    # I
    .param p4, "count"    # I
    .param p5, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff",
            "count",
            "shift"
        }
    .end annotation

    .line 608
    rsub-int/lit8 v0, p5, 0x40

    .line 609
    .local v0, "shiftInv":I
    const-wide/16 v1, 0x0

    .line 610
    .local v1, "prev":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_0

    .line 612
    add-int v4, p1, v3

    aget-wide v4, p0, v4

    .line 613
    .local v4, "next":J
    add-int v6, p3, v3

    shl-long v7, v4, p5

    or-long/2addr v7, v1

    aput-wide v7, p2, v6

    .line 614
    ushr-long v1, v4, v0

    .line 610
    .end local v4    # "next":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method private static squareInPlace([JII[I)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "xLen"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xLen",
            "m",
            "ks"
        }
    .end annotation

    .line 1731
    shl-int/lit8 v0, p1, 0x1

    .line 1732
    .local v0, "pos":I
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    .line 1734
    aget-wide v1, p0, p1

    .line 1735
    .local v1, "xVal":J
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v4, v3

    invoke-static {v4}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v3

    aput-wide v3, p0, v0

    .line 1736
    add-int/lit8 v0, v0, -0x1

    long-to-int v3, v1

    invoke-static {v3}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v3

    aput-wide v3, p0, v0

    .line 1737
    .end local v1    # "xVal":J
    goto :goto_0

    .line 1738
    :cond_0
    return-void
.end method

.method private static testBit([JII)Z
    .locals 9
    .param p0, "buf"    # [J
    .param p1, "off"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "n"
        }
    .end annotation

    .line 805
    ushr-int/lit8 v0, p2, 0x6

    .line 807
    .local v0, "theInt":I
    and-int/lit8 v1, p2, 0x3f

    .line 808
    .local v1, "theBit":I
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    .line 809
    .local v2, "tester":J
    add-int v4, p1, v0

    aget-wide v4, p0, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method


# virtual methods
.method public addOne()Lorg/bouncycastle/math/ec/LongArray;
    .locals 7

    .line 621
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 623
    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    new-array v4, v4, [J

    aput-wide v1, v4, v3

    invoke-direct {v0, v4}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0

    .line 626
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 627
    .local v0, "resultLen":I
    invoke-direct {p0, v0}, Lorg/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v4

    .line 628
    .local v4, "ints":[J
    aget-wide v5, v4, v3

    xor-long/2addr v1, v5

    aput-wide v1, v4, v3

    .line 629
    new-instance v1, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v1, v4}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v1
.end method

.method public addShiftedByWords(Lorg/bouncycastle/math/ec/LongArray;I)V
    .locals 5
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "words"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "other",
            "words"
        }
    .end annotation

    .line 708
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 709
    .local v0, "otherUsedLen":I
    if-nez v0, :cond_0

    .line 711
    return-void

    .line 714
    :cond_0
    add-int v1, v0, p2

    .line 715
    .local v1, "minLen":I
    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 717
    invoke-direct {p0, v1}, Lorg/bouncycastle/math/ec/LongArray;->resizedInts(I)[J

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 720
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v3, p1, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v2, p2, v3, v4, v0}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    .line 721
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 2175
    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    return-object v0
.end method

.method copyTo([JI)V
    .locals 3
    .param p1, "z"    # [J
    .param p2, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "zOff"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    return-void
.end method

.method public degree()I
    .locals 6

    .line 449
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    .line 453
    .local v0, "i":I
    :cond_0
    if-nez v0, :cond_1

    .line 455
    const/4 v1, 0x0

    return v1

    .line 457
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    .line 459
    .local v2, "w":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 461
    shl-int/lit8 v1, v0, 0x6

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/LongArray;->bitLength(J)I

    move-result v4

    add-int/2addr v1, v4

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 2138
    instance-of v0, p1, Lorg/bouncycastle/math/ec/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2140
    return v1

    .line 2142
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/LongArray;

    .line 2143
    .local v0, "other":Lorg/bouncycastle/math/ec/LongArray;
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v2

    .line 2144
    .local v2, "usedLen":I
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 2146
    return v1

    .line 2148
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 2150
    iget-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v5, v4, v3

    iget-object v4, v0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v7, v4, v3

    cmp-long v4, v5, v7

    if-eqz v4, :cond_2

    .line 2152
    return v1

    .line 2148
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2155
    .end local v3    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public getLength()I
    .locals 1

    .line 759
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    return v0
.end method

.method public getUsedLength()I
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLengthFrom(I)I

    move-result v0

    return v0
.end method

.method public getUsedLengthFrom(I)I
    .locals 7
    .param p1, "from"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 419
    .local v0, "a":[J
    array-length v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 421
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v1, :cond_0

    .line 423
    return v2

    .line 427
    :cond_0
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 429
    :goto_0
    add-int/lit8 p1, p1, -0x1

    aget-wide v1, v0, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    goto :goto_0

    .line 432
    :cond_1
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 437
    :cond_2
    add-int/lit8 p1, p1, -0x1

    aget-wide v3, v0, p1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    .line 439
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 442
    :cond_3
    if-gtz p1, :cond_2

    .line 444
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 2160
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2161
    .local v0, "usedLen":I
    const/4 v1, 0x1

    .line 2162
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2164
    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v4, v3, v2

    .line 2165
    .local v4, "mi":J
    mul-int/lit8 v1, v1, 0x1f

    .line 2166
    long-to-int v3, v4

    xor-int/2addr v1, v3

    .line 2167
    mul-int/lit8 v1, v1, 0x1f

    .line 2168
    const/16 v3, 0x20

    ushr-long v6, v4, v3

    long-to-int v3, v6

    xor-int/2addr v1, v3

    .line 2162
    .end local v4    # "mi":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2170
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public isOne()Z
    .locals 8

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 384
    .local v0, "a":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 386
    return v1

    .line 388
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 390
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    .line 392
    return v1

    .line 388
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isZero()Z
    .locals 7

    .line 400
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 401
    .local v0, "a":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 403
    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 405
    const/4 v2, 0x0

    return v2

    .line 401
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public modInverse(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 20
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "ks"
        }
    .end annotation

    .line 2061
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    .line 2062
    .local v1, "uzDegree":I
    if-eqz v1, :cond_5

    .line 2066
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2068
    return-object p0

    .line 2072
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/LongArray;

    .line 2074
    .local v3, "uz":Lorg/bouncycastle/math/ec/LongArray;
    add-int/lit8 v4, v0, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    .line 2077
    .local v4, "t":I
    new-instance v5, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2078
    .local v5, "vz":Lorg/bouncycastle/math/ec/LongArray;
    iget-object v6, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v7, 0x0

    move-object/from16 v8, p2

    invoke-static {v6, v7, v0, v0, v8}, Lorg/bouncycastle/math/ec/LongArray;->reduceBit([JIII[I)V

    .line 2081
    new-instance v6, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v6, v4}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2082
    .local v6, "g1z":Lorg/bouncycastle/math/ec/LongArray;
    iget-object v9, v6, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const-wide/16 v10, 0x1

    aput-wide v10, v9, v7

    .line 2083
    new-instance v9, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v9, v4}, Lorg/bouncycastle/math/ec/LongArray;-><init>(I)V

    .line 2085
    .local v9, "g2z":Lorg/bouncycastle/math/ec/LongArray;
    add-int/lit8 v10, v0, 0x1

    filled-new-array {v1, v10}, [I

    move-result-object v10

    .line 2086
    .local v10, "uvDeg":[I
    const/4 v11, 0x2

    new-array v12, v11, [Lorg/bouncycastle/math/ec/LongArray;

    aput-object v3, v12, v7

    aput-object v5, v12, v2

    .line 2088
    .local v12, "uv":[Lorg/bouncycastle/math/ec/LongArray;
    filled-new-array {v2, v7}, [I

    move-result-object v13

    .line 2089
    .local v13, "ggDeg":[I
    new-array v11, v11, [Lorg/bouncycastle/math/ec/LongArray;

    aput-object v6, v11, v7

    aput-object v9, v11, v2

    .line 2091
    .local v11, "gg":[Lorg/bouncycastle/math/ec/LongArray;
    const/4 v2, 0x1

    .line 2092
    .local v2, "b":I
    aget v7, v10, v2

    .line 2093
    .local v7, "duv1":I
    aget v14, v13, v2

    .line 2094
    .local v14, "dgg1":I
    rsub-int/lit8 v15, v2, 0x1

    aget v15, v10, v15

    sub-int v15, v7, v15

    .line 2098
    .local v15, "j":I
    :goto_0
    if-gez v15, :cond_1

    .line 2100
    neg-int v15, v15

    .line 2101
    aput v7, v10, v2

    .line 2102
    aput v14, v13, v2

    .line 2103
    rsub-int/lit8 v2, v2, 0x1

    .line 2104
    aget v7, v10, v2

    .line 2105
    aget v14, v13, v2

    .line 2108
    :cond_1
    aget-object v0, v12, v2

    rsub-int/lit8 v16, v2, 0x1

    move/from16 v17, v1

    .end local v1    # "uzDegree":I
    .local v17, "uzDegree":I
    aget-object v1, v12, v16

    rsub-int/lit8 v16, v2, 0x1

    move/from16 v18, v2

    .end local v2    # "b":I
    .local v18, "b":I
    aget v2, v10, v16

    invoke-direct {v0, v1, v2, v15}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V

    .line 2110
    aget-object v0, v12, v18

    invoke-direct {v0, v7}, Lorg/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v0

    .line 2111
    .local v0, "duv2":I
    if-nez v0, :cond_2

    .line 2113
    rsub-int/lit8 v1, v18, 0x1

    aget-object v1, v11, v1

    return-object v1

    .line 2117
    :cond_2
    rsub-int/lit8 v1, v18, 0x1

    aget v1, v13, v1

    .line 2118
    .local v1, "dgg2":I
    aget-object v2, v11, v18

    rsub-int/lit8 v16, v18, 0x1

    move/from16 v19, v0

    .end local v0    # "duv2":I
    .local v19, "duv2":I
    aget-object v0, v11, v16

    invoke-direct {v2, v0, v1, v15}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedByBitsSafe(Lorg/bouncycastle/math/ec/LongArray;II)V

    .line 2119
    add-int/2addr v1, v15

    .line 2121
    if-le v1, v14, :cond_3

    .line 2123
    move v0, v1

    move v14, v0

    .end local v14    # "dgg1":I
    .local v0, "dgg1":I
    goto :goto_1

    .line 2125
    .end local v0    # "dgg1":I
    .restart local v14    # "dgg1":I
    :cond_3
    if-ne v1, v14, :cond_4

    .line 2127
    aget-object v0, v11, v18

    invoke-direct {v0, v14}, Lorg/bouncycastle/math/ec/LongArray;->degreeFrom(I)I

    move-result v0

    move v14, v0

    .line 2131
    .end local v1    # "dgg2":I
    :cond_4
    :goto_1
    sub-int v0, v19, v7

    add-int/2addr v15, v0

    .line 2132
    move/from16 v7, v19

    .line 2133
    .end local v19    # "duv2":I
    move/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_0

    .line 2064
    .end local v3    # "uz":Lorg/bouncycastle/math/ec/LongArray;
    .end local v4    # "t":I
    .end local v5    # "vz":Lorg/bouncycastle/math/ec/LongArray;
    .end local v6    # "g1z":Lorg/bouncycastle/math/ec/LongArray;
    .end local v7    # "duv1":I
    .end local v9    # "g2z":Lorg/bouncycastle/math/ec/LongArray;
    .end local v10    # "uvDeg":[I
    .end local v11    # "gg":[Lorg/bouncycastle/math/ec/LongArray;
    .end local v12    # "uv":[Lorg/bouncycastle/math/ec/LongArray;
    .end local v13    # "ggDeg":[I
    .end local v14    # "dgg1":I
    .end local v15    # "j":I
    .end local v17    # "uzDegree":I
    .end local v18    # "b":I
    .local v1, "uzDegree":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public modMultiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 30
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "m",
            "ks"
        }
    .end annotation

    .line 1000
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1001
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 1003
    return-object p0

    .line 1005
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1006
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 1008
    return-object p1

    .line 1014
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lorg/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 1015
    .local v5, "B":Lorg/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 1017
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 1018
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 1024
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 1025
    .local v6, "aLen":I
    add-int/lit8 v7, v3, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    .line 1026
    .local v11, "bLen":I
    add-int v7, v2, v3

    add-int/lit8 v7, v7, 0x3e

    ushr-int/lit8 v7, v7, 0x6

    .line 1028
    .local v7, "cLen":I
    const/4 v14, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 1030
    iget-object v8, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v9, v8, v14

    .line 1031
    .local v9, "a0":J
    const-wide/16 v12, 0x1

    cmp-long v8, v9, v12

    if-nez v8, :cond_3

    .line 1033
    return-object v5

    .line 1039
    :cond_3
    new-array v12, v7, [J

    .line 1040
    .local v12, "c0":[J
    move-wide v8, v9

    .end local v9    # "a0":J
    .local v8, "a0":J
    iget-object v10, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1045
    invoke-static {v12, v14, v7, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v10

    return-object v10

    .line 1051
    .end local v8    # "a0":J
    .end local v12    # "c0":[J
    :cond_4
    add-int/lit8 v9, v3, 0x7

    add-int/lit8 v9, v9, 0x3f

    ushr-int/lit8 v16, v9, 0x6

    .line 1056
    .local v16, "bMax":I
    const/16 v9, 0x10

    new-array v10, v9, [I

    .line 1061
    .local v10, "ti":[I
    shl-int/lit8 v12, v16, 0x4

    new-array v15, v12, [J

    .line 1062
    .local v15, "T0":[J
    move/from16 v12, v16

    .line 1063
    .local v12, "tOff":I
    aput v12, v10, v8

    .line 1064
    iget-object v8, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v8, v14, v15, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1065
    const/4 v8, 0x2

    move/from16 v23, v12

    .end local v12    # "tOff":I
    .local v8, "i":I
    .local v23, "tOff":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 1067
    add-int v18, v23, v16

    move/from16 v20, v18

    .end local v23    # "tOff":I
    .local v20, "tOff":I
    aput v18, v10, v8

    .line 1068
    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_5

    .line 1070
    move/from16 v19, v16

    .end local v16    # "bMax":I
    .local v19, "bMax":I
    ushr-int/lit8 v16, v20, 0x1

    move/from16 v18, v20

    .end local v20    # "tOff":I
    .local v18, "tOff":I
    const/16 v20, 0x1

    move-object/from16 v17, v15

    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v16, v19

    goto :goto_1

    .line 1074
    .end local v18    # "tOff":I
    .end local v19    # "bMax":I
    .restart local v16    # "bMax":I
    .restart local v20    # "tOff":I
    :cond_5
    move/from16 v19, v16

    move/from16 v18, v20

    .end local v16    # "bMax":I
    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    .restart local v19    # "bMax":I
    sub-int v20, v18, v19

    move-object/from16 v17, v15

    .end local v19    # "bMax":I
    .restart local v16    # "bMax":I
    move-object/from16 v19, v15

    move/from16 v21, v16

    move/from16 v29, v20

    move/from16 v20, v18

    move/from16 v18, v29

    .end local v18    # "tOff":I
    .restart local v20    # "tOff":I
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v18, v20

    .line 1065
    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v23, v18

    goto :goto_0

    .line 1081
    .end local v8    # "i":I
    .end local v18    # "tOff":I
    .restart local v23    # "tOff":I
    :cond_6
    array-length v8, v15

    new-array v8, v8, [J

    .line 1082
    .local v8, "T1":[J
    array-length v9, v15

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v8

    move/from16 v21, v9

    move-object/from16 v17, v15

    .end local v8    # "T1":[J
    .end local v15    # "T0":[J
    .local v17, "T0":[J
    .local v19, "T1":[J
    invoke-static/range {v17 .. v22}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1085
    .end local v17    # "T0":[J
    .restart local v15    # "T0":[J
    iget-object v8, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1086
    .local v8, "a":[J
    shl-int/lit8 v9, v7, 0x3

    new-array v12, v9, [J

    .line 1088
    .local v12, "c":[J
    const/16 v9, 0xf

    .line 1094
    .local v9, "MASK":I
    const/4 v13, 0x0

    .local v13, "aPos":I
    :goto_2
    if-ge v13, v6, :cond_8

    .line 1096
    aget-wide v17, v8, v13

    .line 1097
    .local v17, "aVal":J
    move/from16 v20, v13

    move-object/from16 v21, v15

    move-wide/from16 v14, v17

    .line 1100
    .end local v15    # "T0":[J
    .end local v17    # "aVal":J
    .local v14, "aVal":J
    .local v20, "cOff":I
    .local v21, "T0":[J
    :goto_3
    move/from16 v24, v2

    .end local v2    # "aDeg":I
    .local v24, "aDeg":I
    long-to-int v2, v14

    and-int/2addr v2, v9

    .line 1101
    .local v2, "u":I
    const/16 v25, 0x4

    ushr-long v14, v14, v25

    .line 1102
    move/from16 v26, v2

    .end local v2    # "u":I
    .local v26, "u":I
    long-to-int v2, v14

    and-int/2addr v2, v9

    .line 1103
    .local v2, "v":I
    aget v18, v10, v26

    move-object/from16 v17, v21

    move/from16 v21, v16

    move/from16 v16, v20

    .end local v20    # "cOff":I
    .local v16, "cOff":I
    .local v17, "T0":[J
    .local v21, "bMax":I
    aget v20, v10, v2

    move-wide/from16 v27, v14

    move-object v15, v12

    .end local v12    # "c":[J
    .end local v14    # "aVal":J
    .local v15, "c":[J
    .local v27, "aVal":J
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1104
    move-object/from16 v18, v19

    move/from16 v19, v21

    move-object/from16 v21, v17

    .end local v15    # "c":[J
    .end local v17    # "T0":[J
    .restart local v12    # "c":[J
    .local v18, "T1":[J
    .local v19, "bMax":I
    .local v21, "T0":[J
    ushr-long v14, v27, v25

    .line 1105
    .end local v27    # "aVal":J
    .restart local v14    # "aVal":J
    const-wide/16 v27, 0x0

    cmp-long v17, v14, v27

    if-nez v17, :cond_7

    .line 1107
    nop

    .line 1094
    .end local v2    # "v":I
    .end local v14    # "aVal":J
    .end local v16    # "cOff":I
    .end local v26    # "u":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v19

    move-object/from16 v15, v21

    move/from16 v2, v24

    const/4 v14, 0x0

    move-object/from16 v19, v18

    goto :goto_2

    .line 1109
    .restart local v2    # "v":I
    .restart local v14    # "aVal":J
    .restart local v16    # "cOff":I
    .restart local v26    # "u":I
    :cond_7
    add-int v20, v16, v7

    .line 1110
    .end local v2    # "v":I
    .end local v16    # "cOff":I
    .end local v26    # "u":I
    .restart local v20    # "cOff":I
    move/from16 v16, v19

    move/from16 v2, v24

    move-object/from16 v19, v18

    goto :goto_3

    .line 1094
    .end local v14    # "aVal":J
    .end local v18    # "T1":[J
    .end local v20    # "cOff":I
    .end local v21    # "T0":[J
    .end local v24    # "aDeg":I
    .local v2, "aDeg":I
    .local v15, "T0":[J
    .local v16, "bMax":I
    .local v19, "T1":[J
    :cond_8
    move/from16 v24, v2

    move-object/from16 v21, v15

    move-object/from16 v18, v19

    move/from16 v19, v16

    .line 1114
    .end local v2    # "aDeg":I
    .end local v13    # "aPos":I
    .end local v15    # "T0":[J
    .end local v16    # "bMax":I
    .restart local v18    # "T1":[J
    .local v19, "bMax":I
    .restart local v21    # "T0":[J
    .restart local v24    # "aDeg":I
    array-length v2, v12

    .line 1115
    .local v2, "cOff":I
    :goto_4
    sub-int v15, v2, v7

    move v2, v15

    if-eqz v15, :cond_9

    .line 1117
    sub-int v13, v2, v7

    const/16 v17, 0x8

    move-object v14, v12

    move v15, v2

    move/from16 v16, v7

    const/4 v2, 0x0

    .end local v2    # "cOff":I
    .end local v7    # "cLen":I
    .local v15, "cOff":I
    .local v16, "cLen":I
    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move v2, v15

    .end local v16    # "cLen":I
    .restart local v7    # "cLen":I
    goto :goto_4

    .line 1115
    .end local v15    # "cOff":I
    .restart local v2    # "cOff":I
    :cond_9
    move v15, v2

    const/4 v2, 0x0

    .line 1124
    .end local v2    # "cOff":I
    invoke-static {v12, v2, v7, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v2

    return-object v2
.end method

.method public modMultiplyAlt(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 36
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "m",
            "ks"
        }
    .end annotation

    .line 1132
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 1133
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 1135
    return-object p0

    .line 1137
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 1138
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 1140
    return-object p1

    .line 1146
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lorg/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 1147
    .local v5, "B":Lorg/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 1149
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 1150
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 1156
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v8, v6, 0x6

    .line 1157
    .local v8, "aLen":I
    add-int/lit8 v6, v3, 0x3f

    ushr-int/lit8 v12, v6, 0x6

    .line 1158
    .local v12, "bLen":I
    add-int v6, v2, v3

    add-int/lit8 v6, v6, 0x3e

    ushr-int/lit8 v6, v6, 0x6

    .line 1160
    .local v6, "cLen":I
    const-wide/16 v19, 0x1

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-ne v8, v13, :cond_4

    .line 1162
    iget-object v7, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v9, v7, v15

    .line 1163
    .local v9, "a0":J
    cmp-long v7, v9, v19

    if-nez v7, :cond_3

    .line 1165
    return-object v5

    .line 1171
    :cond_3
    new-array v13, v6, [J

    .line 1172
    .local v13, "c0":[J
    iget-object v11, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1177
    move v14, v12

    .end local v12    # "bLen":I
    .local v14, "bLen":I
    invoke-static {v13, v15, v6, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v7

    return-object v7

    .line 1213
    .end local v9    # "a0":J
    .end local v13    # "c0":[J
    .end local v14    # "bLen":I
    .restart local v12    # "bLen":I
    :cond_4
    move v14, v12

    .end local v12    # "bLen":I
    .restart local v14    # "bLen":I
    const/4 v12, 0x4

    .local v12, "width":I
    const/16 v18, 0x10

    .local v18, "positions":I
    const/16 v7, 0x40

    .local v7, "top":I
    const/16 v9, 0x8

    .line 1221
    .local v9, "banks":I
    const/16 v10, 0x40

    if-ge v7, v10, :cond_5

    move/from16 v11, v18

    goto :goto_0

    :cond_5
    add-int/lit8 v11, v18, -0x1

    :goto_0
    move/from16 v21, v11

    .line 1222
    .local v21, "shifts":I
    add-int v11, v3, v21

    add-int/lit8 v11, v11, 0x3f

    ushr-int/lit8 v16, v11, 0x6

    .line 1224
    .local v16, "bMax":I
    mul-int v11, v16, v9

    .local v11, "bTotal":I
    mul-int v22, v12, v9

    .line 1229
    .local v22, "stride":I
    shl-int v10, v13, v12

    new-array v10, v10, [I

    .line 1230
    .local v10, "ci":[I
    move/from16 v23, v8

    .line 1232
    .local v23, "cTotal":I
    aput v23, v10, v15

    .line 1233
    add-int v23, v23, v11

    .line 1234
    aput v23, v10, v13

    .line 1235
    const/16 v24, 0x2

    move/from16 v13, v24

    const/16 v24, 0x1

    .local v13, "i":I
    :goto_1
    array-length v15, v10

    if-ge v13, v15, :cond_6

    .line 1237
    add-int v23, v23, v6

    .line 1238
    aput v23, v10, v13

    .line 1235
    add-int/lit8 v13, v13, 0x1

    const/4 v15, 0x0

    goto :goto_1

    .line 1240
    .end local v13    # "i":I
    :cond_6
    add-int v23, v23, v6

    .line 1243
    add-int/lit8 v13, v23, 0x1

    .line 1245
    .end local v23    # "cTotal":I
    .local v13, "cTotal":I
    move v15, v9

    .end local v9    # "banks":I
    .local v15, "banks":I
    new-array v9, v13, [J

    .line 1248
    .local v9, "c":[J
    move/from16 v23, v7

    .end local v7    # "top":I
    .local v23, "top":I
    iget-object v7, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    move/from16 v26, v11

    move v11, v8

    .end local v8    # "aLen":I
    .local v11, "aLen":I
    .local v26, "bTotal":I
    const/4 v8, 0x0

    move-object/from16 v27, v10

    .end local v10    # "ci":[I
    .local v27, "ci":[I
    const/4 v10, 0x0

    move/from16 v17, v23

    move/from16 v23, v2

    move v2, v15

    move/from16 v15, v17

    move/from16 v17, v26

    move/from16 v26, v3

    move/from16 v3, v17

    move-object/from16 v17, v27

    move-object/from16 v27, v4

    move-object/from16 v4, v17

    move/from16 v17, v6

    const/16 v6, 0x40

    .end local v6    # "cLen":I
    .local v2, "banks":I
    .local v3, "bTotal":I
    .local v4, "ci":[I
    .local v15, "top":I
    .local v17, "cLen":I
    .local v23, "aDeg":I
    .local v26, "bDeg":I
    .local v27, "A":Lorg/bouncycastle/math/ec/LongArray;
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/LongArray;->interleave([JI[JIII)V

    .line 1252
    move-object v7, v9

    move/from16 v28, v12

    .end local v9    # "c":[J
    .end local v12    # "width":I
    .local v7, "c":[J
    .local v28, "width":I
    move v8, v11

    .line 1253
    .local v8, "bOff":I
    iget-object v9, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v10, 0x0

    invoke-static {v9, v10, v7, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1254
    const/4 v9, 0x1

    move v12, v9

    .local v12, "bank":I
    :goto_2
    if-ge v12, v2, :cond_7

    .line 1256
    add-int v10, v8, v16

    move/from16 v25, v10

    .end local v8    # "bOff":I
    .local v25, "bOff":I
    move-object v9, v7

    move v8, v11

    move/from16 v11, v16

    .end local v16    # "bMax":I
    .local v8, "aLen":I
    .local v11, "bMax":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1254
    move v7, v11

    move v11, v8

    .end local v8    # "aLen":I
    .local v7, "bMax":I
    .restart local v9    # "c":[J
    .local v11, "aLen":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v7

    move-object v7, v9

    move/from16 v8, v25

    goto :goto_2

    .end local v9    # "c":[J
    .end local v25    # "bOff":I
    .local v7, "c":[J
    .local v8, "bOff":I
    .restart local v16    # "bMax":I
    :cond_7
    move-object v9, v7

    move/from16 v7, v16

    .line 1266
    .end local v8    # "bOff":I
    .end local v12    # "bank":I
    .end local v16    # "bMax":I
    .local v7, "bMax":I
    .restart local v9    # "c":[J
    shl-int v8, v24, v28

    add-int/lit8 v8, v8, -0x1

    .line 1268
    .local v8, "MASK":I
    const/4 v10, 0x0

    .line 1271
    .local v10, "k":I
    :goto_3
    const/4 v12, 0x0

    .line 1274
    .local v12, "aPos":I
    :goto_4
    aget-wide v29, v9, v12

    ushr-long v29, v29, v10

    .line 1275
    .local v29, "aVal":J
    const/16 v16, 0x0

    .local v16, "bank":I
    move/from16 v25, v11

    move/from16 v6, v25

    move-wide/from16 v34, v29

    move/from16 v30, v12

    move/from16 v29, v13

    move-wide/from16 v12, v34

    .line 1278
    .end local v13    # "cTotal":I
    .local v6, "bOff":I
    .local v12, "aVal":J
    .local v29, "cTotal":I
    .local v30, "aPos":I
    :goto_5
    move-object/from16 v31, v5

    .end local v5    # "B":Lorg/bouncycastle/math/ec/LongArray;
    .local v31, "B":Lorg/bouncycastle/math/ec/LongArray;
    long-to-int v5, v12

    and-int/2addr v5, v8

    .line 1279
    .local v5, "index":I
    if-eqz v5, :cond_8

    .line 1286
    aget v32, v4, v5

    move/from16 v33, v5

    .end local v5    # "index":I
    .local v33, "index":I
    add-int v5, v30, v32

    invoke-static {v9, v5, v9, v6, v7}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JII)V

    goto :goto_6

    .line 1279
    .end local v33    # "index":I
    .restart local v5    # "index":I
    :cond_8
    move/from16 v33, v5

    .line 1288
    .end local v5    # "index":I
    .restart local v33    # "index":I
    :goto_6
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "bank":I
    .local v5, "bank":I
    if-ne v5, v2, :cond_e

    .line 1290
    nop

    .line 1296
    .end local v5    # "bank":I
    .end local v6    # "bOff":I
    .end local v12    # "aVal":J
    .end local v33    # "index":I
    add-int/lit8 v12, v30, 0x1

    .end local v30    # "aPos":I
    .local v12, "aPos":I
    if-lt v12, v11, :cond_d

    .line 1298
    add-int v5, v10, v22

    move v6, v5

    .end local v10    # "k":I
    .local v6, "k":I
    if-lt v5, v15, :cond_c

    .line 1300
    const/16 v5, 0x40

    if-lt v6, v5, :cond_b

    .line 1302
    nop

    .line 1319
    .end local v12    # "aPos":I
    array-length v5, v4

    .line 1320
    .local v5, "ciPos":I
    :goto_7
    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x1

    if-le v5, v10, :cond_a

    .line 1322
    int-to-long v12, v5

    and-long v12, v12, v19

    const-wide/16 v24, 0x0

    cmp-long v16, v12, v24

    if-nez v16, :cond_9

    .line 1327
    ushr-int/lit8 v12, v5, 0x1

    aget v12, v4, v12

    aget v16, v4, v5

    move v13, v15

    .end local v15    # "top":I
    .local v13, "top":I
    move-object v15, v9

    move/from16 v24, v13

    const/16 v25, 0x1

    move-object v13, v9

    move v9, v14

    move v14, v12

    .end local v14    # "bLen":I
    .local v9, "bLen":I
    .local v13, "c":[J
    .local v24, "top":I
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-object v15, v13

    move/from16 v14, v17

    .end local v13    # "c":[J
    .end local v17    # "cLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    goto :goto_8

    .line 1334
    .end local v24    # "top":I
    .local v9, "c":[J
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    :cond_9
    move/from16 v24, v15

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    aget v10, v4, v5

    add-int/lit8 v12, v5, -0x1

    aget v12, v4, v12

    aget v13, v4, v25

    invoke-static {v15, v10, v12, v13, v14}, Lorg/bouncycastle/math/ec/LongArray;->distribute([JIIII)V

    .line 1320
    :goto_8
    move/from16 v17, v14

    move v14, v9

    move-object v9, v15

    move/from16 v15, v24

    const/16 v24, 0x1

    goto :goto_7

    .line 1341
    .end local v24    # "top":I
    .local v9, "c":[J
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    :cond_a
    move/from16 v24, v15

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    aget v10, v4, v25

    invoke-static {v15, v10, v14, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v10

    return-object v10

    .line 1309
    .end local v5    # "ciPos":I
    .end local v24    # "top":I
    .local v9, "c":[J
    .restart local v12    # "aPos":I
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    :cond_b
    move/from16 v24, v15

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    rsub-int/lit8 v6, v28, 0x40

    .line 1310
    sub-int v10, v24, v6

    shl-int v10, v8, v10

    and-int/2addr v8, v10

    move v10, v6

    goto :goto_9

    .line 1298
    .end local v24    # "top":I
    .local v9, "c":[J
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    :cond_c
    move/from16 v24, v15

    const/16 v5, 0x40

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    move v10, v6

    .line 1316
    .end local v6    # "k":I
    .restart local v10    # "k":I
    :goto_9
    invoke-static {v15, v11, v3, v2}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 1317
    .end local v12    # "aPos":I
    move/from16 v17, v14

    move/from16 v13, v29

    move-object/from16 v5, v31

    const/16 v6, 0x40

    move v14, v9

    move-object v9, v15

    move/from16 v15, v24

    const/16 v24, 0x1

    goto/16 :goto_3

    .line 1296
    .end local v24    # "top":I
    .local v9, "c":[J
    .restart local v12    # "aPos":I
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    :cond_d
    move/from16 v24, v15

    const/16 v5, 0x40

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    move/from16 v13, v29

    move-object/from16 v5, v31

    const/16 v6, 0x40

    move v14, v9

    move-object v9, v15

    move/from16 v15, v24

    const/16 v24, 0x1

    goto/16 :goto_4

    .line 1292
    .end local v24    # "top":I
    .local v5, "bank":I
    .local v6, "bOff":I
    .local v9, "c":[J
    .local v12, "aVal":J
    .local v14, "bLen":I
    .local v15, "top":I
    .restart local v17    # "cLen":I
    .restart local v30    # "aPos":I
    .restart local v33    # "index":I
    :cond_e
    move/from16 v24, v15

    const/16 v25, 0x1

    move-object v15, v9

    move v9, v14

    move/from16 v14, v17

    const/16 v17, 0x40

    .end local v17    # "cLen":I
    .local v9, "bLen":I
    .local v14, "cLen":I
    .local v15, "c":[J
    .restart local v24    # "top":I
    add-int/2addr v6, v7

    .line 1293
    ushr-long v12, v12, v28

    .line 1294
    .end local v33    # "index":I
    move/from16 v16, v5

    move/from16 v17, v14

    move-object/from16 v5, v31

    move v14, v9

    move-object v9, v15

    move/from16 v15, v24

    const/16 v24, 0x1

    goto/16 :goto_5
.end method

.method public modMultiplyLD(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 27
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "m",
            "ks"
        }
    .end annotation

    .line 868
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v2

    .line 869
    .local v2, "aDeg":I
    if-nez v2, :cond_0

    .line 871
    return-object p0

    .line 873
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v3

    .line 874
    .local v3, "bDeg":I
    if-nez v3, :cond_1

    .line 876
    return-object p1

    .line 882
    :cond_1
    move-object/from16 v4, p0

    .local v4, "A":Lorg/bouncycastle/math/ec/LongArray;
    move-object/from16 v5, p1

    .line 883
    .local v5, "B":Lorg/bouncycastle/math/ec/LongArray;
    if-le v2, v3, :cond_2

    .line 885
    move-object/from16 v4, p1

    move-object/from16 v5, p0

    .line 886
    move v6, v2

    .local v6, "tmp":I
    move v2, v3

    move v3, v6

    .line 892
    .end local v6    # "tmp":I
    :cond_2
    add-int/lit8 v6, v2, 0x3f

    ushr-int/lit8 v6, v6, 0x6

    .line 893
    .local v6, "aLen":I
    add-int/lit8 v7, v3, 0x3f

    ushr-int/lit8 v11, v7, 0x6

    .line 894
    .local v11, "bLen":I
    add-int v7, v2, v3

    add-int/lit8 v7, v7, 0x3e

    ushr-int/lit8 v7, v7, 0x6

    .line 896
    .local v7, "cLen":I
    const/4 v14, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4

    .line 898
    iget-object v8, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v9, v8, v14

    .line 899
    .local v9, "a0":J
    const-wide/16 v12, 0x1

    cmp-long v8, v9, v12

    if-nez v8, :cond_3

    .line 901
    return-object v5

    .line 907
    :cond_3
    new-array v12, v7, [J

    .line 908
    .local v12, "c0":[J
    move-wide v8, v9

    .end local v9    # "a0":J
    .local v8, "a0":J
    iget-object v10, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 913
    invoke-static {v12, v14, v7, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v10

    return-object v10

    .line 919
    .end local v8    # "a0":J
    .end local v12    # "c0":[J
    :cond_4
    add-int/lit8 v9, v3, 0x7

    add-int/lit8 v9, v9, 0x3f

    ushr-int/lit8 v21, v9, 0x6

    .line 924
    .local v21, "bMax":I
    const/16 v9, 0x10

    new-array v10, v9, [I

    .line 929
    .local v10, "ti":[I
    shl-int/lit8 v12, v21, 0x4

    new-array v15, v12, [J

    .line 930
    .local v15, "T0":[J
    move/from16 v12, v21

    .line 931
    .local v12, "tOff":I
    aput v12, v10, v8

    .line 932
    iget-object v8, v5, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v8, v14, v15, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 933
    const/4 v8, 0x2

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_6

    .line 935
    add-int v18, v12, v21

    move/from16 v20, v18

    .end local v12    # "tOff":I
    .local v20, "tOff":I
    aput v18, v10, v8

    .line 936
    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_5

    .line 938
    ushr-int/lit8 v16, v20, 0x1

    move/from16 v18, v20

    .end local v20    # "tOff":I
    .local v18, "tOff":I
    const/16 v20, 0x1

    move-object/from16 v17, v15

    move/from16 v19, v21

    .end local v21    # "bMax":I
    .local v19, "bMax":I
    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .end local v19    # "bMax":I
    .restart local v21    # "bMax":I
    goto :goto_1

    .line 942
    .end local v18    # "tOff":I
    .restart local v20    # "tOff":I
    :cond_5
    move/from16 v18, v20

    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    sub-int v20, v18, v21

    move-object/from16 v17, v15

    move-object/from16 v19, v15

    move/from16 v16, v21

    .end local v21    # "bMax":I
    .local v16, "bMax":I
    move/from16 v26, v20

    move/from16 v20, v18

    move/from16 v18, v26

    .end local v18    # "tOff":I
    .restart local v20    # "tOff":I
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v18, v20

    .line 933
    .end local v16    # "bMax":I
    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    .restart local v21    # "bMax":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v18

    goto :goto_0

    .line 949
    .end local v8    # "i":I
    .end local v18    # "tOff":I
    .restart local v12    # "tOff":I
    :cond_6
    array-length v8, v15

    new-array v8, v8, [J

    .line 950
    .local v8, "T1":[J
    array-length v9, v15

    const/16 v20, 0x4

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v8

    move/from16 v19, v9

    .end local v8    # "T1":[J
    .local v17, "T1":[J
    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 953
    move-object/from16 v19, v17

    .end local v17    # "T1":[J
    .local v19, "T1":[J
    iget-object v8, v4, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 954
    .local v8, "a":[J
    move-object/from16 v17, v15

    .end local v15    # "T0":[J
    .local v17, "T0":[J
    new-array v15, v7, [J

    .line 956
    .local v15, "c":[J
    const/16 v9, 0xf

    .line 962
    .local v9, "MASK":I
    const/16 v13, 0x38

    .local v13, "k":I
    :goto_2
    if-ltz v13, :cond_8

    .line 964
    const/16 v16, 0x1

    move/from16 v14, v16

    .local v14, "j":I
    :goto_3
    if-ge v14, v6, :cond_7

    .line 966
    aget-wide v22, v8, v14

    move/from16 v24, v2

    move/from16 v25, v3

    .end local v2    # "aDeg":I
    .end local v3    # "bDeg":I
    .local v24, "aDeg":I
    .local v25, "bDeg":I
    ushr-long v2, v22, v13

    long-to-int v3, v2

    .line 967
    .local v3, "aVal":I
    and-int v2, v3, v9

    .line 968
    .local v2, "u":I
    ushr-int/lit8 v16, v3, 0x4

    and-int v22, v16, v9

    .line 969
    .local v22, "v":I
    add-int/lit8 v16, v14, -0x1

    aget v18, v10, v2

    aget v20, v10, v22

    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 964
    move-object v2, v15

    move-object/from16 v15, v17

    .end local v3    # "aVal":I
    .end local v17    # "T0":[J
    .end local v22    # "v":I
    .local v2, "c":[J
    .local v15, "T0":[J
    add-int/lit8 v14, v14, 0x2

    move/from16 v3, v25

    move-object v15, v2

    move/from16 v2, v24

    goto :goto_3

    .end local v24    # "aDeg":I
    .end local v25    # "bDeg":I
    .local v2, "aDeg":I
    .local v3, "bDeg":I
    .local v15, "c":[J
    .restart local v17    # "T0":[J
    :cond_7
    move/from16 v24, v2

    move/from16 v25, v3

    move-object v2, v15

    move-object/from16 v15, v17

    .line 971
    .end local v3    # "bDeg":I
    .end local v14    # "j":I
    .end local v17    # "T0":[J
    .local v2, "c":[J
    .local v15, "T0":[J
    .restart local v24    # "aDeg":I
    .restart local v25    # "bDeg":I
    const/16 v3, 0x8

    const/4 v14, 0x0

    invoke-static {v2, v14, v7, v3}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    .line 962
    add-int/lit8 v13, v13, -0x8

    move/from16 v3, v25

    const/4 v14, 0x0

    move-object v15, v2

    move/from16 v2, v24

    goto :goto_2

    .end local v24    # "aDeg":I
    .end local v25    # "bDeg":I
    .local v2, "aDeg":I
    .restart local v3    # "bDeg":I
    .local v15, "c":[J
    .restart local v17    # "T0":[J
    :cond_8
    move/from16 v24, v2

    move/from16 v25, v3

    move-object v2, v15

    move-object/from16 v15, v17

    .line 974
    .end local v3    # "bDeg":I
    .end local v13    # "k":I
    .end local v17    # "T0":[J
    .local v2, "c":[J
    .local v15, "T0":[J
    .restart local v24    # "aDeg":I
    .restart local v25    # "bDeg":I
    const/16 v3, 0x38

    .local v3, "k":I
    :goto_4
    if-ltz v3, :cond_b

    .line 976
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    if-ge v13, v6, :cond_9

    .line 978
    aget-wide v16, v8, v13

    move-object v14, v2

    move/from16 v22, v3

    .end local v2    # "c":[J
    .end local v3    # "k":I
    .local v14, "c":[J
    .local v22, "k":I
    ushr-long v2, v16, v22

    long-to-int v3, v2

    .line 979
    .local v3, "aVal":I
    and-int v2, v3, v9

    .line 980
    .local v2, "u":I
    ushr-int/lit8 v16, v3, 0x4

    and-int v23, v16, v9

    .line 981
    .local v23, "v":I
    aget v18, v10, v2

    aget v20, v10, v23

    move/from16 v16, v13

    move-object/from16 v17, v15

    move-object v15, v14

    .end local v13    # "j":I
    .end local v14    # "c":[J
    .local v15, "c":[J
    .local v16, "j":I
    .restart local v17    # "T0":[J
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 976
    move-object/from16 v15, v17

    .end local v2    # "u":I
    .end local v3    # "aVal":I
    .end local v17    # "T0":[J
    .end local v23    # "v":I
    .restart local v14    # "c":[J
    .local v15, "T0":[J
    add-int/lit8 v13, v16, 0x2

    move-object v2, v14

    move/from16 v3, v22

    .end local v16    # "j":I
    .restart local v13    # "j":I
    goto :goto_5

    .end local v14    # "c":[J
    .end local v22    # "k":I
    .local v2, "c":[J
    .local v3, "k":I
    :cond_9
    move-object v14, v2

    move/from16 v22, v3

    move/from16 v16, v13

    .line 983
    .end local v2    # "c":[J
    .end local v3    # "k":I
    .end local v13    # "j":I
    .restart local v14    # "c":[J
    .restart local v22    # "k":I
    if-lez v22, :cond_a

    .line 985
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v14, v2, v7, v3}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JIII)J

    goto :goto_6

    .line 983
    :cond_a
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 974
    :goto_6
    add-int/lit8 v13, v22, -0x8

    move v3, v13

    move-object v2, v14

    .end local v22    # "k":I
    .local v13, "k":I
    goto :goto_4

    .end local v13    # "k":I
    .end local v14    # "c":[J
    .restart local v2    # "c":[J
    .restart local v3    # "k":I
    :cond_b
    move-object v14, v2

    const/4 v2, 0x0

    .line 992
    .end local v2    # "c":[J
    .end local v3    # "k":I
    .restart local v14    # "c":[J
    invoke-static {v14, v2, v7, v0, v1}, Lorg/bouncycastle/math/ec/LongArray;->reduceResult([JIII[I)Lorg/bouncycastle/math/ec/LongArray;

    move-result-object v2

    return-object v2
.end method

.method public modReduce(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "ks"
        }
    .end annotation

    .line 1346
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v0

    .line 1347
    .local v0, "buf":[J
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    .line 1348
    .local v1, "rLen":I
    new-instance v3, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, v0, v2, v1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public modSquare(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 9
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "ks"
        }
    .end annotation

    .line 1666
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1667
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1669
    return-object p0

    .line 1672
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 1673
    .local v1, "_2len":I
    new-array v2, v1, [J

    .line 1675
    .local v2, "r":[J
    const/4 v3, 0x0

    .line 1676
    .local v3, "pos":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1678
    iget-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    .line 1679
    .local v5, "mi":J
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    long-to-int v7, v5

    invoke-static {v7}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 1680
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    const/16 v7, 0x20

    ushr-long v7, v5, v7

    long-to-int v8, v7

    invoke-static {v8}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v4

    .line 1681
    .end local v5    # "mi":J
    goto :goto_0

    .line 1683
    :cond_1
    new-instance v4, Lorg/bouncycastle/math/ec/LongArray;

    array-length v5, v2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v5

    invoke-direct {v4, v2, v6, v5}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v4
.end method

.method public modSquareN(II[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 5
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "m",
            "ks"
        }
    .end annotation

    .line 1688
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1689
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1691
    return-object p0

    .line 1694
    :cond_0
    add-int/lit8 v1, p2, 0x3f

    ushr-int/lit8 v1, v1, 0x6

    .line 1695
    .local v1, "mLen":I
    shl-int/lit8 v2, v1, 0x1

    new-array v2, v2, [J

    .line 1696
    .local v2, "r":[J
    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1698
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1700
    invoke-static {v2, v0, p2, p3}, Lorg/bouncycastle/math/ec/LongArray;->squareInPlace([JII[I)V

    .line 1701
    array-length v3, v2

    invoke-static {v2, v4, v3, p2, p3}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v0

    goto :goto_0

    .line 1704
    :cond_1
    new-instance v3, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v3
.end method

.method public multiply(Lorg/bouncycastle/math/ec/LongArray;I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 27
    .param p1, "other"    # Lorg/bouncycastle/math/ec/LongArray;
    .param p2, "m"    # I
    .param p3, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "m",
            "ks"
        }
    .end annotation

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v0

    .line 1357
    .local v0, "aDeg":I
    if-nez v0, :cond_0

    .line 1359
    return-object p0

    .line 1361
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/LongArray;->degree()I

    move-result v1

    .line 1362
    .local v1, "bDeg":I
    if-nez v1, :cond_1

    .line 1364
    return-object p1

    .line 1370
    :cond_1
    move-object/from16 v2, p0

    .local v2, "A":Lorg/bouncycastle/math/ec/LongArray;
    move-object/from16 v3, p1

    .line 1371
    .local v3, "B":Lorg/bouncycastle/math/ec/LongArray;
    if-le v0, v1, :cond_2

    .line 1373
    move-object/from16 v2, p1

    move-object/from16 v3, p0

    .line 1374
    move v4, v0

    .local v4, "tmp":I
    move v0, v1

    move v1, v4

    .line 1380
    .end local v4    # "tmp":I
    :cond_2
    add-int/lit8 v4, v0, 0x3f

    ushr-int/lit8 v4, v4, 0x6

    .line 1381
    .local v4, "aLen":I
    add-int/lit8 v5, v1, 0x3f

    ushr-int/lit8 v9, v5, 0x6

    .line 1382
    .local v9, "bLen":I
    add-int v5, v0, v1

    add-int/lit8 v5, v5, 0x3e

    ushr-int/lit8 v14, v5, 0x6

    .line 1384
    .local v14, "cLen":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 1386
    iget-object v6, v2, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v7, v6, v5

    .line 1387
    .local v7, "a0":J
    const-wide/16 v10, 0x1

    cmp-long v6, v7, v10

    if-nez v6, :cond_3

    .line 1389
    return-object v3

    .line 1395
    :cond_3
    new-array v10, v14, [J

    .line 1396
    .local v10, "c0":[J
    move-wide v6, v7

    .end local v7    # "a0":J
    .local v6, "a0":J
    iget-object v8, v3, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/math/ec/LongArray;->multiplyWord(J[JI[JI)V

    .line 1402
    new-instance v8, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v8, v10, v5, v14}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v8

    .line 1408
    .end local v6    # "a0":J
    .end local v10    # "c0":[J
    :cond_4
    add-int/lit8 v7, v1, 0x7

    add-int/lit8 v7, v7, 0x3f

    ushr-int/lit8 v16, v7, 0x6

    .line 1413
    .local v16, "bMax":I
    const/16 v7, 0x10

    new-array v8, v7, [I

    .line 1418
    .local v8, "ti":[I
    shl-int/lit8 v10, v16, 0x4

    new-array v15, v10, [J

    .line 1419
    .local v15, "T0":[J
    move/from16 v10, v16

    .line 1420
    .local v10, "tOff":I
    aput v10, v8, v6

    .line 1421
    iget-object v6, v3, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v6, v5, v15, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1422
    const/4 v6, 0x2

    move/from16 v23, v10

    .end local v10    # "tOff":I
    .local v6, "i":I
    .local v23, "tOff":I
    :goto_0
    if-ge v6, v7, :cond_6

    .line 1424
    add-int v18, v23, v16

    move/from16 v20, v18

    .end local v23    # "tOff":I
    .local v20, "tOff":I
    aput v18, v8, v6

    .line 1425
    and-int/lit8 v10, v6, 0x1

    if-nez v10, :cond_5

    .line 1427
    move/from16 v19, v16

    .end local v16    # "bMax":I
    .local v19, "bMax":I
    ushr-int/lit8 v16, v20, 0x1

    move/from16 v18, v20

    .end local v20    # "tOff":I
    .local v18, "tOff":I
    const/16 v20, 0x1

    move-object/from16 v17, v15

    invoke-static/range {v15 .. v20}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    move/from16 v16, v19

    goto :goto_1

    .line 1431
    .end local v18    # "tOff":I
    .end local v19    # "bMax":I
    .restart local v16    # "bMax":I
    .restart local v20    # "tOff":I
    :cond_5
    move/from16 v19, v16

    move/from16 v18, v20

    .end local v16    # "bMax":I
    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    .restart local v19    # "bMax":I
    sub-int v20, v18, v19

    move-object/from16 v17, v15

    .end local v19    # "bMax":I
    .restart local v16    # "bMax":I
    move-object/from16 v19, v15

    move/from16 v21, v16

    move/from16 v26, v20

    move/from16 v20, v18

    move/from16 v18, v26

    .end local v18    # "tOff":I
    .restart local v20    # "tOff":I
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->add([JI[JI[JII)V

    move/from16 v18, v20

    .line 1422
    .end local v20    # "tOff":I
    .restart local v18    # "tOff":I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move/from16 v23, v18

    goto :goto_0

    .line 1438
    .end local v6    # "i":I
    .end local v18    # "tOff":I
    .restart local v23    # "tOff":I
    :cond_6
    array-length v6, v15

    new-array v6, v6, [J

    .line 1439
    .local v6, "T1":[J
    array-length v7, v15

    const/16 v22, 0x4

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v6

    move/from16 v21, v7

    move-object/from16 v17, v15

    .end local v6    # "T1":[J
    .end local v15    # "T0":[J
    .local v17, "T0":[J
    .local v19, "T1":[J
    invoke-static/range {v17 .. v22}, Lorg/bouncycastle/math/ec/LongArray;->shiftUp([JI[JIII)J

    .line 1442
    .end local v17    # "T0":[J
    .restart local v15    # "T0":[J
    iget-object v6, v2, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1443
    .local v6, "a":[J
    shl-int/lit8 v7, v14, 0x3

    new-array v10, v7, [J

    .line 1445
    .local v10, "c":[J
    const/16 v7, 0xf

    .line 1451
    .local v7, "MASK":I
    const/4 v11, 0x0

    .local v11, "aPos":I
    :goto_2
    if-ge v11, v4, :cond_8

    .line 1453
    aget-wide v12, v6, v11

    .line 1454
    .local v12, "aVal":J
    move/from16 v17, v11

    .line 1457
    .local v17, "cOff":I
    :goto_3
    long-to-int v5, v12

    and-int/2addr v5, v7

    .line 1458
    .local v5, "u":I
    const/16 v24, 0x4

    ushr-long v12, v12, v24

    .line 1459
    move/from16 v25, v0

    .end local v0    # "aDeg":I
    .local v25, "aDeg":I
    long-to-int v0, v12

    and-int/2addr v0, v7

    .line 1460
    .local v0, "v":I
    aget v18, v8, v5

    aget v20, v8, v0

    move/from16 v21, v16

    move/from16 v16, v17

    move-object/from16 v17, v15

    move-object v15, v10

    .end local v10    # "c":[J
    .local v15, "c":[J
    .local v16, "cOff":I
    .local v17, "T0":[J
    .local v21, "bMax":I
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/LongArray;->addBoth([JI[JI[JII)V

    .line 1461
    move/from16 v10, v16

    move/from16 v16, v21

    .end local v21    # "bMax":I
    .local v10, "cOff":I
    .local v16, "bMax":I
    ushr-long v12, v12, v24

    .line 1462
    const-wide/16 v20, 0x0

    cmp-long v18, v12, v20

    if-nez v18, :cond_7

    .line 1464
    nop

    .line 1451
    .end local v0    # "v":I
    .end local v5    # "u":I
    .end local v10    # "cOff":I
    .end local v12    # "aVal":J
    add-int/lit8 v11, v11, 0x1

    move-object v10, v15

    move-object/from16 v15, v17

    move/from16 v0, v25

    const/4 v5, 0x0

    goto :goto_2

    .line 1466
    .restart local v0    # "v":I
    .restart local v5    # "u":I
    .restart local v10    # "cOff":I
    .restart local v12    # "aVal":J
    :cond_7
    add-int v0, v10, v14

    .line 1467
    .end local v5    # "u":I
    .end local v10    # "cOff":I
    .local v0, "cOff":I
    move-object v10, v15

    move-object/from16 v15, v17

    const/4 v5, 0x0

    move/from16 v17, v0

    move/from16 v0, v25

    goto :goto_3

    .line 1451
    .end local v12    # "aVal":J
    .end local v17    # "T0":[J
    .end local v25    # "aDeg":I
    .local v0, "aDeg":I
    .local v10, "c":[J
    .local v15, "T0":[J
    :cond_8
    move/from16 v25, v0

    move-object/from16 v17, v15

    move-object v15, v10

    .line 1471
    .end local v0    # "aDeg":I
    .end local v10    # "c":[J
    .end local v11    # "aPos":I
    .local v15, "c":[J
    .restart local v17    # "T0":[J
    .restart local v25    # "aDeg":I
    array-length v0, v15

    .line 1472
    .local v0, "cOff":I
    :goto_4
    sub-int v13, v0, v14

    move v0, v13

    if-eqz v13, :cond_9

    .line 1474
    sub-int v11, v0, v14

    move-object v10, v15

    .end local v15    # "c":[J
    .restart local v10    # "c":[J
    const/16 v15, 0x8

    move-object v12, v10

    move v13, v0

    .end local v0    # "cOff":I
    .local v13, "cOff":I
    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/math/ec/LongArray;->addShiftedUp([JI[JIII)J

    move-object v15, v10

    .end local v10    # "c":[J
    .restart local v15    # "c":[J
    goto :goto_4

    .line 1472
    .end local v13    # "cOff":I
    .restart local v0    # "cOff":I
    :cond_9
    move v13, v0

    .line 1482
    .end local v0    # "cOff":I
    new-instance v0, Lorg/bouncycastle/math/ec/LongArray;

    const/4 v5, 0x0

    invoke-direct {v0, v15, v5, v14}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v0
.end method

.method public reduce(I[I)V
    .locals 4
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "ks"
        }
    .end annotation

    .line 1487
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1488
    .local v0, "buf":[J
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, p2}, Lorg/bouncycastle/math/ec/LongArray;->reduceInPlace([JIII[I)I

    move-result v1

    .line 1489
    .local v1, "rLen":I
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 1491
    new-array v3, v1, [J

    iput-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    .line 1492
    iget-object v3, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1494
    :cond_0
    return-void
.end method

.method public square(I[I)Lorg/bouncycastle/math/ec/LongArray;
    .locals 9
    .param p1, "m"    # I
    .param p2, "ks"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "ks"
        }
    .end annotation

    .line 1709
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 1710
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 1712
    return-object p0

    .line 1715
    :cond_0
    shl-int/lit8 v1, v0, 0x1

    .line 1716
    .local v1, "_2len":I
    new-array v2, v1, [J

    .line 1718
    .local v2, "r":[J
    const/4 v3, 0x0

    .line 1719
    .local v3, "pos":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1721
    iget-object v4, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    ushr-int/lit8 v5, v3, 0x1

    aget-wide v5, v4, v5

    .line 1722
    .local v5, "mi":J
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    long-to-int v7, v5

    invoke-static {v7}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v3

    .line 1723
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    const/16 v7, 0x20

    ushr-long v7, v5, v7

    long-to-int v8, v7

    invoke-static {v8}, Lorg/bouncycastle/math/ec/LongArray;->interleave2_32to64(I)J

    move-result-wide v7

    aput-wide v7, v2, v4

    .line 1724
    .end local v5    # "mi":J
    goto :goto_0

    .line 1726
    :cond_1
    new-instance v4, Lorg/bouncycastle/math/ec/LongArray;

    const/4 v5, 0x0

    array-length v6, v2

    invoke-direct {v4, v2, v5, v6}, Lorg/bouncycastle/math/ec/LongArray;-><init>([JII)V

    return-object v4
.end method

.method public testBitZero()Z
    .locals 6

    .line 799
    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 15

    .line 542
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 543
    .local v0, "usedLen":I
    if-nez v0, :cond_0

    .line 545
    sget-object v1, Lorg/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 548
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v2, v1, v2

    .line 549
    .local v2, "highestInt":J
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 550
    .local v4, "temp":[B
    const/4 v5, 0x0

    .line 551
    .local v5, "barrI":I
    const/4 v6, 0x0

    .line 552
    .local v6, "trailingZeroBytesDone":Z
    const/4 v7, 0x7

    .local v7, "j":I
    :goto_0
    if-ltz v7, :cond_3

    .line 554
    mul-int/lit8 v8, v7, 0x8

    ushr-long v8, v2, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    .line 555
    .local v8, "thisByte":B
    if-nez v6, :cond_1

    if-eqz v8, :cond_2

    .line 557
    :cond_1
    const/4 v6, 0x1

    .line 558
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "barrI":I
    .local v9, "barrI":I
    aput-byte v8, v4, v5

    move v5, v9

    .line 552
    .end local v8    # "thisByte":B
    .end local v9    # "barrI":I
    .restart local v5    # "barrI":I
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 562
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v7, v0, -0x1

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v5

    .line 563
    .local v7, "barrLen":I
    new-array v1, v7, [B

    .line 564
    .local v1, "barr":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v5, :cond_4

    .line 566
    aget-byte v9, v4, v8

    aput-byte v9, v1, v8

    .line 564
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 570
    .end local v8    # "j":I
    :cond_4
    add-int/lit8 v8, v0, -0x2

    .local v8, "iarrJ":I
    :goto_2
    if-ltz v8, :cond_6

    .line 572
    iget-object v9, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v10, v9, v8

    .line 573
    .local v10, "mi":J
    const/4 v9, 0x7

    .local v9, "j":I
    :goto_3
    if-ltz v9, :cond_5

    .line 575
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "barrI":I
    .local v12, "barrI":I
    mul-int/lit8 v13, v9, 0x8

    ushr-long v13, v10, v13

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v1, v5

    .line 573
    add-int/lit8 v9, v9, -0x1

    move v5, v12

    goto :goto_3

    .line 570
    .end local v9    # "j":I
    .end local v10    # "mi":J
    .end local v12    # "barrI":I
    .restart local v5    # "barrI":I
    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 578
    .end local v8    # "iarrJ":I
    :cond_6
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2180
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/LongArray;->getUsedLength()I

    move-result v0

    .line 2181
    .local v0, "i":I
    if-nez v0, :cond_0

    .line 2183
    const-string v1, "0"

    return-object v1

    .line 2186
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2187
    .local v1, "sb":Ljava/lang/StringBuffer;
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 2189
    iget-object v2, p0, Lorg/bouncycastle/math/ec/LongArray;->m_ints:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v2

    .line 2192
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 2193
    .local v3, "len":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_1

    .line 2195
    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2198
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    goto :goto_0

    .line 2200
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
