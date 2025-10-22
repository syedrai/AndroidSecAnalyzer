.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0
    .param p1, "kw"    # [J
    .param p2, "t"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kw",
            "t"
        }
    .end annotation

    .line 984
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 985
    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 74
    .param p1, "block"    # [J
    .param p2, "state"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "state"
        }
    .end annotation

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 1207
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 1208
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD17()[I

    move-result-object v3

    .line 1209
    .local v3, "mod17":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 1212
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_2

    .line 1216
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1221
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 1222
    .local v7, "b0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 1223
    .local v10, "b1":J
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 1224
    .local v13, "b2":J
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    .line 1225
    .local v16, "b3":J
    const/16 v18, 0x0

    const/4 v5, 0x4

    aget-wide v19, p1, v5

    .line 1226
    .local v19, "b4":J
    aget-wide v21, p1, v6

    .line 1227
    .local v21, "b5":J
    const/16 v23, 0x6

    aget-wide v24, p1, v23

    .line 1228
    .local v24, "b6":J
    const/16 v26, 0x7

    aget-wide v27, p1, v26

    .line 1229
    .local v27, "b7":J
    const/16 v29, 0x2

    const/16 v12, 0x8

    aget-wide v30, p1, v12

    .line 1230
    .local v30, "b8":J
    const/16 v32, 0x3

    const/16 v15, 0x9

    aget-wide v33, p1, v15

    .line 1231
    .local v33, "b9":J
    const/16 v12, 0xa

    aget-wide v36, p1, v12

    .line 1232
    .local v36, "b10":J
    const/16 v38, 0xb

    aget-wide v39, p1, v38

    .line 1233
    .local v39, "b11":J
    const/16 v12, 0xc

    aget-wide v42, p1, v12

    .line 1234
    .local v42, "b12":J
    const/16 v6, 0xd

    aget-wide v45, p1, v6

    .line 1235
    .local v45, "b13":J
    const/16 v47, 0xe

    aget-wide v48, p1, v47

    .line 1236
    .local v48, "b14":J
    const/16 v50, 0xf

    aget-wide v51, p1, v50

    .line 1238
    .local v51, "b15":J
    const/16 v53, 0x13

    move/from16 v6, v53

    .local v6, "d":I
    :goto_0
    if-lt v6, v9, :cond_0

    .line 1240
    aget v54, v3, v6

    .line 1241
    .local v54, "dm17":I
    aget v55, v4, v6

    .line 1244
    .local v55, "dm3":I
    add-int/lit8 v56, v54, 0x1

    aget-wide v56, v1, v56

    sub-long v7, v7, v56

    .line 1245
    add-int/lit8 v56, v54, 0x2

    aget-wide v56, v1, v56

    sub-long v10, v10, v56

    .line 1246
    add-int/lit8 v56, v54, 0x3

    aget-wide v56, v1, v56

    sub-long v13, v13, v56

    .line 1247
    add-int/lit8 v56, v54, 0x4

    aget-wide v56, v1, v56

    move-wide/from16 v59, v10

    const/16 v58, 0x1

    .end local v10    # "b1":J
    .local v59, "b1":J
    sub-long v9, v16, v56

    .line 1248
    .end local v16    # "b3":J
    .local v9, "b3":J
    add-int/lit8 v11, v54, 0x5

    aget-wide v16, v1, v11

    move-wide/from16 v61, v13

    .end local v13    # "b2":J
    .local v61, "b2":J
    sub-long v12, v19, v16

    .line 1249
    .end local v19    # "b4":J
    .local v12, "b4":J
    add-int/lit8 v11, v54, 0x6

    aget-wide v16, v1, v11

    move/from16 v63, v6

    .end local v6    # "d":I
    .local v63, "d":I
    sub-long v5, v21, v16

    .line 1250
    .end local v21    # "b5":J
    .local v5, "b5":J
    add-int/lit8 v11, v54, 0x7

    aget-wide v16, v1, v11

    move-object/from16 v64, v1

    .end local v1    # "kw":[J
    .local v64, "kw":[J
    sub-long v0, v24, v16

    .line 1251
    .end local v24    # "b6":J
    .local v0, "b6":J
    add-int/lit8 v11, v54, 0x8

    aget-wide v16, v64, v11

    move-object/from16 v65, v2

    move-object/from16 v66, v3

    .end local v2    # "t":[J
    .end local v3    # "mod17":[I
    .local v65, "t":[J
    .local v66, "mod17":[I
    sub-long v2, v27, v16

    .line 1252
    .end local v27    # "b7":J
    .local v2, "b7":J
    add-int/lit8 v11, v54, 0x9

    aget-wide v16, v64, v11

    move-wide/from16 v19, v2

    .end local v2    # "b7":J
    .local v19, "b7":J
    sub-long v2, v30, v16

    .line 1253
    .end local v30    # "b8":J
    .local v2, "b8":J
    add-int/lit8 v11, v54, 0xa

    aget-wide v16, v64, v11

    move-wide/from16 v67, v9

    .end local v9    # "b3":J
    .local v67, "b3":J
    sub-long v9, v33, v16

    .line 1254
    .end local v33    # "b9":J
    .local v9, "b9":J
    add-int/lit8 v11, v54, 0xb

    aget-wide v16, v64, v11

    move-wide/from16 v21, v2

    .end local v2    # "b8":J
    .local v21, "b8":J
    sub-long v2, v36, v16

    .line 1255
    .end local v36    # "b10":J
    .local v2, "b10":J
    add-int/lit8 v11, v54, 0xc

    aget-wide v16, v64, v11

    move-wide/from16 v24, v2

    .end local v2    # "b10":J
    .local v24, "b10":J
    sub-long v2, v39, v16

    .line 1256
    .end local v39    # "b11":J
    .local v2, "b11":J
    add-int/lit8 v11, v54, 0xd

    aget-wide v16, v64, v11

    move-object/from16 v69, v4

    move-wide/from16 v70, v5

    .end local v4    # "mod3":[I
    .end local v5    # "b5":J
    .local v69, "mod3":[I
    .local v70, "b5":J
    sub-long v4, v42, v16

    .line 1257
    .end local v42    # "b12":J
    .local v4, "b12":J
    add-int/lit8 v6, v54, 0xe

    aget-wide v16, v64, v6

    add-int/lit8 v6, v55, 0x1

    aget-wide v27, v65, v6

    add-long v16, v16, v27

    move-wide/from16 v27, v4

    .end local v4    # "b12":J
    .local v27, "b12":J
    sub-long v4, v45, v16

    .line 1258
    .end local v45    # "b13":J
    .local v4, "b13":J
    add-int/lit8 v6, v54, 0xf

    aget-wide v16, v64, v6

    add-int/lit8 v6, v55, 0x2

    aget-wide v30, v65, v6

    add-long v16, v16, v30

    move-wide/from16 v30, v9

    .end local v9    # "b9":J
    .local v30, "b9":J
    sub-long v9, v48, v16

    .line 1259
    .end local v48    # "b14":J
    .local v9, "b14":J
    add-int/lit8 v6, v54, 0x10

    aget-wide v16, v64, v6

    move-wide/from16 v33, v9

    move/from16 v6, v63

    .end local v9    # "b14":J
    .end local v63    # "d":I
    .restart local v6    # "d":I
    .local v33, "b14":J
    int-to-long v9, v6

    add-long v16, v16, v9

    const-wide/16 v9, 0x1

    add-long v16, v16, v9

    sub-long v9, v51, v16

    .line 1262
    .end local v51    # "b15":J
    .local v9, "b15":J
    invoke-static {v9, v10, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1263
    sub-long/2addr v7, v9

    .line 1264
    const/16 v11, 0x30

    move-wide/from16 v14, v61

    .end local v61    # "b2":J
    .local v14, "b2":J
    invoke-static {v2, v3, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1265
    sub-long/2addr v14, v2

    .line 1266
    const/16 v11, 0x23

    invoke-static {v4, v5, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1267
    sub-long/2addr v0, v4

    .line 1268
    const/16 v11, 0x34

    move-wide/from16 v16, v2

    move-wide/from16 v2, v30

    .end local v30    # "b9":J
    .local v2, "b9":J
    .local v16, "b11":J
    invoke-static {v2, v3, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1269
    sub-long/2addr v12, v2

    .line 1270
    const/16 v11, 0x17

    move-wide/from16 v30, v33

    move-wide/from16 v33, v4

    move-wide/from16 v4, v30

    move-wide/from16 v30, v2

    move-wide/from16 v2, v59

    .end local v59    # "b1":J
    .local v2, "b1":J
    .local v4, "b14":J
    .restart local v30    # "b9":J
    .local v33, "b13":J
    invoke-static {v2, v3, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1271
    sub-long/2addr v4, v2

    .line 1272
    const/16 v11, 0x1f

    move-wide/from16 v36, v21

    move-wide/from16 v21, v9

    move-wide/from16 v9, v36

    move-wide/from16 v36, v4

    move-wide/from16 v4, v70

    .end local v70    # "b5":J
    .local v4, "b5":J
    .local v9, "b8":J
    .local v21, "b15":J
    .local v36, "b14":J
    invoke-static {v4, v5, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1273
    sub-long/2addr v9, v4

    .line 1274
    const/16 v11, 0x25

    move-wide/from16 v42, v24

    move-wide/from16 v24, v0

    move-wide/from16 v0, v42

    move-wide/from16 v42, v9

    move-wide/from16 v9, v67

    .end local v67    # "b3":J
    .local v0, "b10":J
    .local v9, "b3":J
    .local v24, "b6":J
    .local v42, "b8":J
    invoke-static {v9, v10, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1275
    sub-long/2addr v0, v9

    .line 1276
    const/16 v11, 0x14

    move-wide/from16 v45, v0

    move-wide/from16 v0, v19

    move-wide/from16 v19, v2

    move-wide/from16 v2, v27

    .end local v27    # "b12":J
    .local v0, "b7":J
    .local v2, "b12":J
    .local v19, "b1":J
    .local v45, "b10":J
    invoke-static {v0, v1, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1277
    sub-long/2addr v2, v0

    .line 1279
    const/16 v11, 0x1f

    invoke-static {v0, v1, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1280
    sub-long/2addr v7, v0

    .line 1281
    const/16 v11, 0x2c

    invoke-static {v4, v5, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1282
    sub-long/2addr v14, v4

    .line 1283
    const/16 v11, 0x2f

    invoke-static {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1284
    sub-long/2addr v12, v9

    .line 1285
    const/16 v11, 0x2e

    move-wide/from16 v48, v19

    move-wide/from16 v19, v9

    move-wide/from16 v9, v48

    move-wide/from16 v48, v4

    move-wide/from16 v4, v24

    .end local v24    # "b6":J
    .local v4, "b6":J
    .local v9, "b1":J
    .local v19, "b3":J
    .local v48, "b5":J
    invoke-static {v9, v10, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1286
    sub-long/2addr v4, v9

    .line 1287
    const/16 v11, 0x13

    move-wide/from16 v24, v9

    move-wide/from16 v9, v21

    .end local v21    # "b15":J
    .local v9, "b15":J
    .local v24, "b1":J
    invoke-static {v9, v10, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1288
    sub-long/2addr v2, v9

    .line 1289
    const/16 v11, 0x2a

    move-wide/from16 v21, v2

    move-wide/from16 v2, v33

    move-wide/from16 v33, v0

    move-wide/from16 v0, v36

    .end local v36    # "b14":J
    .local v0, "b14":J
    .local v2, "b13":J
    .local v21, "b12":J
    .local v33, "b7":J
    invoke-static {v2, v3, v11, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1290
    sub-long/2addr v0, v2

    .line 1291
    move-wide/from16 v36, v0

    move-wide/from16 v0, v16

    const/16 v11, 0x2c

    move-wide/from16 v16, v9

    move-wide/from16 v9, v42

    .end local v42    # "b8":J
    .local v0, "b11":J
    .local v9, "b8":J
    .local v16, "b15":J
    .restart local v36    # "b14":J
    invoke-static {v0, v1, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1292
    sub-long/2addr v9, v0

    .line 1293
    const/16 v11, 0x19

    move-wide/from16 v42, v9

    move-wide/from16 v9, v30

    move-wide/from16 v30, v12

    move-wide/from16 v12, v45

    .end local v45    # "b10":J
    .local v9, "b9":J
    .local v12, "b10":J
    .local v30, "b4":J
    .restart local v42    # "b8":J
    invoke-static {v9, v10, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1294
    sub-long/2addr v12, v9

    .line 1296
    const/16 v11, 0x10

    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1297
    sub-long/2addr v7, v9

    .line 1298
    const/16 v11, 0x22

    invoke-static {v2, v3, v11, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1299
    sub-long/2addr v14, v2

    .line 1300
    const/16 v11, 0x38

    invoke-static {v0, v1, v11, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1301
    sub-long/2addr v4, v0

    .line 1302
    const/16 v11, 0x33

    move-wide/from16 v51, v16

    move-wide/from16 v16, v0

    move-wide/from16 v0, v51

    move-wide/from16 v51, v2

    move-wide/from16 v2, v30

    .end local v30    # "b4":J
    .local v0, "b15":J
    .local v2, "b4":J
    .local v16, "b11":J
    .local v51, "b13":J
    invoke-static {v0, v1, v11, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1303
    sub-long/2addr v2, v0

    .line 1304
    move-wide/from16 v30, v0

    move-wide/from16 v0, v33

    const/4 v11, 0x4

    .end local v33    # "b7":J
    .local v0, "b7":J
    .local v30, "b15":J
    invoke-static {v0, v1, v11, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1305
    sub-long/2addr v12, v0

    .line 1306
    const/16 v11, 0x35

    move-wide/from16 v33, v12

    move-wide/from16 v12, v19

    move-wide/from16 v19, v9

    move-wide/from16 v9, v21

    .end local v21    # "b12":J
    .local v9, "b12":J
    .local v12, "b3":J
    .local v19, "b9":J
    .local v33, "b10":J
    invoke-static {v12, v13, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    .line 1307
    .end local v12    # "b3":J
    .local v11, "b3":J
    sub-long/2addr v9, v11

    .line 1308
    const/16 v13, 0x2a

    move-wide/from16 v21, v36

    move-wide/from16 v36, v0

    move-wide/from16 v0, v21

    move-wide/from16 v21, v9

    move-wide/from16 v9, v48

    .end local v48    # "b5":J
    .local v0, "b14":J
    .local v9, "b5":J
    .restart local v21    # "b12":J
    .local v36, "b7":J
    invoke-static {v9, v10, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1309
    sub-long/2addr v0, v9

    .line 1310
    const/16 v13, 0x29

    move-wide/from16 v48, v0

    move-wide/from16 v0, v24

    move-wide/from16 v24, v4

    move-wide/from16 v4, v42

    .end local v42    # "b8":J
    .local v0, "b1":J
    .local v4, "b8":J
    .local v24, "b6":J
    .local v48, "b14":J
    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1311
    sub-long/2addr v4, v0

    .line 1313
    invoke-static {v0, v1, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1314
    sub-long/2addr v7, v0

    .line 1315
    const/16 v13, 0x9

    invoke-static {v11, v12, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    .line 1316
    sub-long/2addr v14, v11

    .line 1317
    const/16 v13, 0x25

    invoke-static {v9, v10, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1318
    sub-long/2addr v2, v9

    .line 1319
    move-wide/from16 v59, v0

    move-wide/from16 v0, v24

    const/16 v13, 0x1f

    move-wide/from16 v24, v2

    move-wide/from16 v2, v36

    .end local v36    # "b7":J
    .local v0, "b6":J
    .local v2, "b7":J
    .local v24, "b4":J
    .restart local v59    # "b1":J
    invoke-static {v2, v3, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1320
    sub-long/2addr v0, v2

    .line 1321
    move-wide/from16 v36, v0

    move-wide/from16 v0, v19

    const/16 v13, 0xc

    .end local v19    # "b9":J
    .local v0, "b9":J
    .local v36, "b6":J
    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1322
    sub-long/2addr v4, v0

    .line 1323
    move-wide/from16 v19, v0

    move-wide/from16 v0, v16

    const/16 v13, 0x2f

    move-wide/from16 v16, v2

    move-wide/from16 v2, v33

    .end local v33    # "b10":J
    .local v0, "b11":J
    .local v2, "b10":J
    .local v16, "b7":J
    .restart local v19    # "b9":J
    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1324
    sub-long/2addr v2, v0

    .line 1325
    move-wide/from16 v33, v21

    move-wide/from16 v21, v2

    move-wide/from16 v2, v33

    move-wide/from16 v33, v0

    move-wide/from16 v0, v51

    const/16 v13, 0x2c

    .end local v51    # "b13":J
    .local v0, "b13":J
    .local v2, "b12":J
    .local v21, "b10":J
    .local v33, "b11":J
    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1326
    sub-long/2addr v2, v0

    .line 1327
    const/16 v13, 0x1e

    move-wide/from16 v51, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v2

    move-wide/from16 v2, v48

    .end local v48    # "b14":J
    .local v0, "b15":J
    .local v2, "b14":J
    .local v30, "b12":J
    .restart local v51    # "b13":J
    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1328
    sub-long/2addr v2, v0

    .line 1331
    aget-wide v48, v64, v54

    sub-long v7, v7, v48

    .line 1332
    add-int/lit8 v13, v54, 0x1

    aget-wide v48, v64, v13

    move-wide/from16 v61, v0

    .end local v0    # "b15":J
    .local v61, "b15":J
    sub-long v0, v59, v48

    .line 1333
    .end local v59    # "b1":J
    .local v0, "b1":J
    add-int/lit8 v13, v54, 0x2

    aget-wide v48, v64, v13

    sub-long v14, v14, v48

    .line 1334
    add-int/lit8 v13, v54, 0x3

    aget-wide v48, v64, v13

    sub-long v11, v11, v48

    .line 1335
    add-int/lit8 v13, v54, 0x4

    aget-wide v48, v64, v13

    move-wide/from16 v59, v2

    .end local v2    # "b14":J
    .local v59, "b14":J
    sub-long v2, v24, v48

    .line 1336
    .end local v24    # "b4":J
    .local v2, "b4":J
    add-int/lit8 v13, v54, 0x5

    aget-wide v24, v64, v13

    sub-long v9, v9, v24

    .line 1337
    add-int/lit8 v13, v54, 0x6

    aget-wide v24, v64, v13

    move-wide/from16 v48, v4

    .end local v4    # "b8":J
    .local v48, "b8":J
    sub-long v4, v36, v24

    .line 1338
    .end local v36    # "b6":J
    .local v4, "b6":J
    add-int/lit8 v13, v54, 0x7

    aget-wide v24, v64, v13

    move-wide/from16 v36, v11

    .end local v11    # "b3":J
    .local v36, "b3":J
    sub-long v11, v16, v24

    .line 1339
    .end local v16    # "b7":J
    .local v11, "b7":J
    add-int/lit8 v13, v54, 0x8

    aget-wide v16, v64, v13

    move-wide/from16 v24, v11

    .end local v11    # "b7":J
    .local v24, "b7":J
    sub-long v11, v48, v16

    .line 1340
    .end local v48    # "b8":J
    .local v11, "b8":J
    add-int/lit8 v13, v54, 0x9

    aget-wide v16, v64, v13

    move-wide/from16 v48, v9

    .end local v9    # "b5":J
    .local v48, "b5":J
    sub-long v9, v19, v16

    .line 1341
    .end local v19    # "b9":J
    .local v9, "b9":J
    add-int/lit8 v13, v54, 0xa

    aget-wide v16, v64, v13

    move-wide/from16 v19, v11

    .end local v11    # "b8":J
    .local v19, "b8":J
    sub-long v11, v21, v16

    .line 1342
    .end local v21    # "b10":J
    .local v11, "b10":J
    add-int/lit8 v13, v54, 0xb

    aget-wide v16, v64, v13

    move-wide/from16 v21, v11

    .end local v11    # "b10":J
    .restart local v21    # "b10":J
    sub-long v11, v33, v16

    .line 1343
    .end local v33    # "b11":J
    .local v11, "b11":J
    add-int/lit8 v13, v54, 0xc

    aget-wide v16, v64, v13

    move-wide/from16 v33, v0

    .end local v0    # "b1":J
    .local v33, "b1":J
    sub-long v0, v30, v16

    .line 1344
    .end local v30    # "b12":J
    .local v0, "b12":J
    add-int/lit8 v13, v54, 0xd

    aget-wide v16, v64, v13

    aget-wide v30, v65, v55

    add-long v16, v16, v30

    move-wide/from16 v30, v0

    .end local v0    # "b12":J
    .restart local v30    # "b12":J
    sub-long v0, v51, v16

    .line 1345
    .end local v51    # "b13":J
    .local v0, "b13":J
    add-int/lit8 v13, v54, 0xe

    aget-wide v16, v64, v13

    add-int/lit8 v13, v55, 0x1

    aget-wide v51, v65, v13

    add-long v16, v16, v51

    move-wide/from16 v51, v2

    .end local v2    # "b4":J
    .local v51, "b4":J
    sub-long v2, v59, v16

    .line 1346
    .end local v59    # "b14":J
    .local v2, "b14":J
    add-int/lit8 v13, v54, 0xf

    aget-wide v16, v64, v13

    move-wide/from16 v59, v2

    .end local v2    # "b14":J
    .restart local v59    # "b14":J
    int-to-long v2, v6

    add-long v16, v16, v2

    sub-long v2, v61, v16

    .line 1349
    .end local v61    # "b15":J
    .local v2, "b15":J
    const/4 v13, 0x5

    invoke-static {v2, v3, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1350
    sub-long/2addr v7, v2

    .line 1351
    const/16 v13, 0x14

    invoke-static {v11, v12, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    .line 1352
    sub-long/2addr v14, v11

    .line 1353
    const/16 v13, 0x30

    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1354
    sub-long/2addr v4, v0

    .line 1355
    move-wide/from16 v16, v11

    move-wide/from16 v11, v51

    const/16 v13, 0x29

    .end local v51    # "b4":J
    .local v11, "b4":J
    .local v16, "b11":J
    invoke-static {v9, v10, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1356
    sub-long/2addr v11, v9

    .line 1357
    move-wide/from16 v51, v9

    move-wide/from16 v9, v33

    const/16 v13, 0x2f

    move-wide/from16 v33, v0

    move-wide/from16 v0, v59

    .end local v59    # "b14":J
    .local v0, "b14":J
    .local v9, "b1":J
    .local v33, "b13":J
    .local v51, "b9":J
    invoke-static {v9, v10, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1358
    sub-long/2addr v0, v9

    .line 1359
    const/16 v13, 0x1c

    move-wide/from16 v59, v19

    move-wide/from16 v19, v2

    move-wide/from16 v2, v59

    move-wide/from16 v59, v0

    move-wide/from16 v0, v48

    .end local v48    # "b5":J
    .local v0, "b5":J
    .local v2, "b8":J
    .local v19, "b15":J
    .restart local v59    # "b14":J
    invoke-static {v0, v1, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1360
    sub-long/2addr v2, v0

    .line 1361
    move-wide/from16 v48, v21

    move-wide/from16 v21, v4

    move-wide/from16 v4, v48

    move-wide/from16 v48, v2

    move-wide/from16 v2, v36

    const/16 v13, 0x10

    .end local v36    # "b3":J
    .local v2, "b3":J
    .local v4, "b10":J
    .local v21, "b6":J
    .local v48, "b8":J
    invoke-static {v2, v3, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1362
    sub-long/2addr v4, v2

    .line 1363
    const/16 v13, 0x19

    move-wide/from16 v36, v4

    move-wide/from16 v4, v24

    move-wide/from16 v24, v9

    move-wide/from16 v9, v30

    .end local v30    # "b12":J
    .local v4, "b7":J
    .local v9, "b12":J
    .local v24, "b1":J
    .local v36, "b10":J
    invoke-static {v4, v5, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1364
    sub-long/2addr v9, v4

    .line 1366
    const/16 v13, 0x21

    invoke-static {v4, v5, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1367
    sub-long/2addr v7, v4

    .line 1368
    const/4 v13, 0x4

    invoke-static {v0, v1, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1369
    sub-long/2addr v14, v0

    .line 1370
    const/16 v13, 0x33

    invoke-static {v2, v3, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1371
    sub-long/2addr v11, v2

    .line 1372
    move-wide/from16 v30, v0

    move-wide/from16 v0, v21

    const/16 v13, 0xd

    move-wide/from16 v21, v2

    move-wide/from16 v2, v24

    .end local v24    # "b1":J
    .local v0, "b6":J
    .local v2, "b1":J
    .local v21, "b3":J
    .local v30, "b5":J
    invoke-static {v2, v3, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1373
    sub-long/2addr v0, v2

    .line 1374
    const/16 v13, 0x22

    move-wide/from16 v24, v2

    move-wide/from16 v2, v19

    .end local v19    # "b15":J
    .local v2, "b15":J
    .restart local v24    # "b1":J
    invoke-static {v2, v3, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1375
    sub-long/2addr v9, v2

    .line 1376
    move-wide/from16 v19, v9

    move-wide/from16 v9, v33

    const/16 v13, 0x29

    move-wide/from16 v33, v4

    move-wide/from16 v4, v59

    .end local v59    # "b14":J
    .local v4, "b14":J
    .local v9, "b13":J
    .local v19, "b12":J
    .local v33, "b7":J
    invoke-static {v9, v10, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1377
    sub-long/2addr v4, v9

    .line 1378
    const/16 v13, 0x3b

    move-wide/from16 v42, v4

    move-wide/from16 v4, v16

    move-wide/from16 v16, v2

    move-wide/from16 v2, v48

    .end local v48    # "b8":J
    .local v2, "b8":J
    .local v4, "b11":J
    .local v16, "b15":J
    .local v42, "b14":J
    invoke-static {v4, v5, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1379
    sub-long/2addr v2, v4

    .line 1380
    const/16 v13, 0x11

    move-wide/from16 v45, v36

    move-wide/from16 v36, v11

    move-wide/from16 v11, v45

    move-wide/from16 v45, v2

    move-wide/from16 v2, v51

    .end local v51    # "b9":J
    .local v2, "b9":J
    .local v11, "b10":J
    .local v36, "b4":J
    .local v45, "b8":J
    invoke-static {v2, v3, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1381
    sub-long/2addr v11, v2

    .line 1383
    const/16 v13, 0x26

    invoke-static {v2, v3, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1384
    sub-long/2addr v7, v2

    .line 1385
    const/16 v13, 0x13

    invoke-static {v9, v10, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    .line 1386
    sub-long/2addr v14, v9

    .line 1387
    const/16 v13, 0xa

    invoke-static {v4, v5, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1388
    sub-long/2addr v0, v4

    .line 1389
    const/16 v13, 0x37

    move-wide/from16 v48, v16

    move-wide/from16 v16, v4

    move-wide/from16 v4, v48

    move-wide/from16 v48, v9

    move-wide/from16 v9, v36

    .end local v36    # "b4":J
    .local v4, "b15":J
    .local v9, "b4":J
    .local v16, "b11":J
    .local v48, "b13":J
    invoke-static {v4, v5, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1390
    sub-long/2addr v9, v4

    .line 1391
    const/16 v13, 0x31

    move-wide/from16 v36, v4

    move-wide/from16 v4, v33

    .end local v33    # "b7":J
    .local v4, "b7":J
    .local v36, "b15":J
    invoke-static {v4, v5, v13, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    .line 1392
    sub-long/2addr v11, v4

    .line 1393
    const/16 v13, 0x12

    move-wide/from16 v33, v19

    move-wide/from16 v19, v2

    move-wide/from16 v2, v33

    move-wide/from16 v33, v11

    move-wide/from16 v11, v21

    .end local v21    # "b3":J
    .local v2, "b12":J
    .local v11, "b3":J
    .local v19, "b9":J
    .local v33, "b10":J
    invoke-static {v11, v12, v13, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    .line 1394
    sub-long/2addr v2, v11

    .line 1395
    const/16 v13, 0x17

    move-wide/from16 v21, v2

    move-wide/from16 v2, v30

    move-wide/from16 v30, v0

    move-wide/from16 v0, v42

    .end local v42    # "b14":J
    .local v0, "b14":J
    .local v2, "b5":J
    .local v21, "b12":J
    .local v30, "b6":J
    invoke-static {v2, v3, v13, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1396
    sub-long/2addr v0, v2

    .line 1397
    const/16 v13, 0x34

    move-wide/from16 v42, v0

    move-wide/from16 v0, v24

    move-wide/from16 v24, v4

    move-wide/from16 v4, v45

    .end local v45    # "b8":J
    .local v0, "b1":J
    .local v4, "b8":J
    .local v24, "b7":J
    .restart local v42    # "b14":J
    invoke-static {v0, v1, v13, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1398
    sub-long/2addr v4, v0

    .line 1400
    const/16 v13, 0x18

    invoke-static {v0, v1, v13, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1401
    sub-long/2addr v7, v0

    .line 1402
    const/16 v13, 0xd

    invoke-static {v11, v12, v13, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    .line 1403
    sub-long/2addr v14, v11

    .line 1404
    const/16 v13, 0x8

    invoke-static {v2, v3, v13, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    .line 1405
    sub-long/2addr v9, v2

    .line 1406
    move-wide/from16 v45, v24

    move-wide/from16 v24, v0

    move-wide/from16 v0, v45

    move-wide/from16 v45, v14

    move-wide/from16 v13, v30

    const/16 v15, 0x2f

    .end local v14    # "b2":J
    .end local v30    # "b6":J
    .local v0, "b7":J
    .local v13, "b6":J
    .local v24, "b1":J
    .local v45, "b2":J
    invoke-static {v0, v1, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v27

    .line 1407
    .end local v0    # "b7":J
    .local v27, "b7":J
    sub-long v0, v13, v27

    .line 1408
    .end local v13    # "b6":J
    .local v0, "b6":J
    move-wide/from16 v13, v19

    const/16 v15, 0x8

    .end local v19    # "b9":J
    .local v13, "b9":J
    invoke-static {v13, v14, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v13

    .line 1409
    sub-long v30, v4, v13

    .line 1410
    .end local v4    # "b8":J
    .local v30, "b8":J
    const/16 v4, 0x11

    move-wide/from16 v19, v0

    move-wide/from16 v0, v16

    move-wide v15, v2

    move-wide/from16 v2, v33

    .end local v16    # "b11":J
    .end local v33    # "b10":J
    .local v0, "b11":J
    .local v2, "b10":J
    .local v15, "b5":J
    .local v19, "b6":J
    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1411
    sub-long/2addr v2, v0

    .line 1412
    const/16 v4, 0x16

    move-wide/from16 v33, v21

    move-wide/from16 v21, v2

    move-wide/from16 v2, v33

    move-wide/from16 v33, v0

    move-wide/from16 v0, v48

    .end local v48    # "b13":J
    .local v0, "b13":J
    .local v2, "b12":J
    .local v21, "b10":J
    .local v33, "b11":J
    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    .line 1413
    sub-long/2addr v2, v0

    .line 1414
    move-wide/from16 v39, v2

    move-wide/from16 v4, v36

    const/16 v2, 0x25

    move-wide/from16 v36, v0

    move-wide/from16 v0, v42

    .end local v2    # "b12":J
    .end local v42    # "b14":J
    .local v0, "b14":J
    .local v4, "b15":J
    .local v36, "b13":J
    .local v39, "b12":J
    invoke-static {v4, v5, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v51

    .line 1415
    .end local v4    # "b15":J
    .local v51, "b15":J
    sub-long v48, v0, v51

    .line 1238
    .end local v0    # "b14":J
    .end local v54    # "dm17":I
    .end local v55    # "dm3":I
    .local v48, "b14":J
    add-int/lit8 v6, v6, -0x2

    move-object/from16 v0, p0

    move-wide/from16 v42, v39

    move-object/from16 v1, v64

    move-object/from16 v2, v65

    move-object/from16 v3, v66

    move-object/from16 v4, v69

    const/4 v5, 0x4

    move-wide/from16 v39, v33

    move-wide/from16 v33, v13

    move-wide/from16 v13, v45

    move-wide/from16 v45, v36

    move-wide/from16 v36, v21

    move-wide/from16 v21, v15

    const/16 v15, 0x9

    move-wide/from16 v16, v11

    const/16 v12, 0xc

    move-wide/from16 v72, v9

    const/4 v9, 0x1

    move-wide/from16 v10, v24

    move-wide/from16 v24, v19

    move-wide/from16 v19, v72

    goto/16 :goto_0

    .end local v9    # "b4":J
    .end local v11    # "b3":J
    .end local v15    # "b5":J
    .end local v64    # "kw":[J
    .end local v65    # "t":[J
    .end local v66    # "mod17":[I
    .end local v69    # "mod3":[I
    .restart local v1    # "kw":[J
    .local v2, "t":[J
    .restart local v3    # "mod17":[I
    .local v4, "mod3":[I
    .restart local v10    # "b1":J
    .local v13, "b2":J
    .local v16, "b3":J
    .local v19, "b4":J
    .local v21, "b5":J
    .local v24, "b6":J
    .local v33, "b9":J
    .local v36, "b10":J
    .local v39, "b11":J
    .local v42, "b12":J
    .local v45, "b13":J
    :cond_0
    move-object/from16 v64, v1

    move-object/from16 v65, v2

    const/16 v58, 0x1

    .line 1421
    .end local v1    # "kw":[J
    .end local v2    # "t":[J
    .end local v6    # "d":I
    .restart local v64    # "kw":[J
    .restart local v65    # "t":[J
    aget-wide v0, v64, v18

    sub-long/2addr v7, v0

    .line 1422
    aget-wide v0, v64, v58

    sub-long/2addr v10, v0

    .line 1423
    aget-wide v0, v64, v29

    sub-long/2addr v13, v0

    .line 1424
    aget-wide v0, v64, v32

    sub-long v16, v16, v0

    .line 1425
    const/16 v57, 0x4

    aget-wide v0, v64, v57

    sub-long v19, v19, v0

    .line 1426
    const/16 v44, 0x5

    aget-wide v0, v64, v44

    sub-long v21, v21, v0

    .line 1427
    aget-wide v0, v64, v23

    sub-long v24, v24, v0

    .line 1428
    aget-wide v0, v64, v26

    sub-long v27, v27, v0

    .line 1429
    const/16 v35, 0x8

    aget-wide v0, v64, v35

    sub-long v30, v30, v0

    .line 1430
    const/16 v63, 0x9

    aget-wide v0, v64, v63

    sub-long v33, v33, v0

    .line 1431
    const/16 v41, 0xa

    aget-wide v0, v64, v41

    sub-long v36, v36, v0

    .line 1432
    aget-wide v0, v64, v38

    sub-long v39, v39, v0

    .line 1433
    const/16 v56, 0xc

    aget-wide v0, v64, v56

    sub-long v42, v42, v0

    .line 1434
    const/16 v53, 0xd

    aget-wide v0, v64, v53

    aget-wide v2, v65, v18

    add-long/2addr v0, v2

    sub-long v45, v45, v0

    .line 1435
    aget-wide v0, v64, v47

    aget-wide v2, v65, v58

    add-long/2addr v0, v2

    sub-long v48, v48, v0

    .line 1436
    aget-wide v0, v64, v50

    sub-long v51, v51, v0

    .line 1441
    aput-wide v7, p2, v18

    .line 1442
    aput-wide v10, p2, v58

    .line 1443
    aput-wide v13, p2, v29

    .line 1444
    aput-wide v16, p2, v32

    .line 1445
    const/16 v57, 0x4

    aput-wide v19, p2, v57

    .line 1446
    const/16 v44, 0x5

    aput-wide v21, p2, v44

    .line 1447
    aput-wide v24, p2, v23

    .line 1448
    aput-wide v27, p2, v26

    .line 1449
    const/16 v35, 0x8

    aput-wide v30, p2, v35

    .line 1450
    const/16 v63, 0x9

    aput-wide v33, p2, v63

    .line 1451
    const/16 v41, 0xa

    aput-wide v36, p2, v41

    .line 1452
    aput-wide v39, p2, v38

    .line 1453
    const/16 v56, 0xc

    aput-wide v42, p2, v56

    .line 1454
    const/16 v53, 0xd

    aput-wide v45, p2, v53

    .line 1455
    aput-wide v48, p2, v47

    .line 1456
    aput-wide v51, p2, v50

    .line 1457
    return-void

    .line 1218
    .end local v7    # "b0":J
    .end local v10    # "b1":J
    .end local v13    # "b2":J
    .end local v16    # "b3":J
    .end local v19    # "b4":J
    .end local v21    # "b5":J
    .end local v24    # "b6":J
    .end local v27    # "b7":J
    .end local v30    # "b8":J
    .end local v33    # "b9":J
    .end local v36    # "b10":J
    .end local v39    # "b11":J
    .end local v42    # "b12":J
    .end local v45    # "b13":J
    .end local v48    # "b14":J
    .end local v51    # "b15":J
    .end local v64    # "kw":[J
    .end local v65    # "t":[J
    .restart local v1    # "kw":[J
    .restart local v2    # "t":[J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1214
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method encryptBlock([J[J)V
    .locals 69
    .param p1, "block"    # [J
    .param p2, "out"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "block",
            "out"
        }
    .end annotation

    .line 989
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->kw:[J

    .line 990
    .local v1, "kw":[J
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->t:[J

    .line 991
    .local v2, "t":[J
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD17()[I

    move-result-object v3

    .line 992
    .local v3, "mod17":[I
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->-$$Nest$sfgetMOD3()[I

    move-result-object v4

    .line 995
    .local v4, "mod3":[I
    array-length v5, v1

    const/16 v6, 0x21

    if-ne v5, v6, :cond_2

    .line 999
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 1007
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 1008
    .local v7, "b0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 1009
    .local v10, "b1":J
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 1010
    .local v13, "b2":J
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    .line 1011
    .local v16, "b3":J
    const/16 v18, 0x0

    const/4 v5, 0x4

    aget-wide v19, p1, v5

    .line 1012
    .local v19, "b4":J
    aget-wide v21, p1, v6

    .line 1013
    .local v21, "b5":J
    const/16 v23, 0x6

    aget-wide v24, p1, v23

    .line 1014
    .local v24, "b6":J
    const/16 v26, 0x7

    aget-wide v27, p1, v26

    .line 1015
    .local v27, "b7":J
    const/16 v29, 0x1

    const/16 v9, 0x8

    aget-wide v30, p1, v9

    .line 1016
    .local v30, "b8":J
    const/16 v32, 0x2

    const/16 v12, 0x9

    aget-wide v33, p1, v12

    .line 1017
    .local v33, "b9":J
    const/16 v35, 0x3

    const/16 v15, 0xa

    aget-wide v36, p1, v15

    .line 1018
    .local v36, "b10":J
    const/16 v38, 0xb

    aget-wide v39, p1, v38

    .line 1019
    .local v39, "b11":J
    const/16 v41, 0x9

    const/16 v12, 0xc

    aget-wide v42, p1, v12

    .line 1020
    .local v42, "b12":J
    const/16 v44, 0xc

    const/16 v12, 0xd

    aget-wide v45, p1, v12

    .line 1021
    .local v45, "b13":J
    const/16 v47, 0xe

    aget-wide v48, p1, v47

    .line 1022
    .local v48, "b14":J
    const/16 v50, 0xf

    aget-wide v51, p1, v50

    .line 1027
    .local v51, "b15":J
    aget-wide v53, v1, v18

    add-long v7, v7, v53

    .line 1028
    aget-wide v53, v1, v29

    add-long v10, v10, v53

    .line 1029
    aget-wide v53, v1, v32

    add-long v13, v13, v53

    .line 1030
    aget-wide v53, v1, v35

    add-long v16, v16, v53

    .line 1031
    aget-wide v53, v1, v5

    add-long v19, v19, v53

    .line 1032
    aget-wide v53, v1, v6

    add-long v21, v21, v53

    .line 1033
    aget-wide v53, v1, v23

    add-long v24, v24, v53

    .line 1034
    aget-wide v53, v1, v26

    add-long v27, v27, v53

    .line 1035
    aget-wide v53, v1, v9

    add-long v30, v30, v53

    .line 1036
    aget-wide v53, v1, v41

    add-long v33, v33, v53

    .line 1037
    aget-wide v53, v1, v15

    add-long v36, v36, v53

    .line 1038
    aget-wide v53, v1, v38

    add-long v39, v39, v53

    .line 1039
    aget-wide v53, v1, v44

    add-long v42, v42, v53

    .line 1040
    aget-wide v53, v1, v12

    aget-wide v55, v2, v18

    add-long v53, v53, v55

    add-long v45, v45, v53

    .line 1041
    aget-wide v53, v1, v47

    aget-wide v55, v2, v29

    add-long v53, v53, v55

    add-long v48, v48, v53

    .line 1042
    aget-wide v53, v1, v50

    add-long v51, v51, v53

    .line 1055
    const/16 v53, 0x1

    move-wide/from16 v57, v21

    move-wide/from16 v59, v27

    move-wide/from16 v61, v33

    move-wide/from16 v63, v39

    move-wide/from16 v65, v45

    move-wide/from16 v67, v51

    move-wide/from16 v21, v19

    move-wide/from16 v19, v7

    move-wide/from16 v6, v16

    move/from16 v8, v53

    .end local v7    # "b0":J
    .end local v16    # "b3":J
    .end local v27    # "b7":J
    .end local v33    # "b9":J
    .end local v39    # "b11":J
    .end local v45    # "b13":J
    .end local v51    # "b15":J
    .local v6, "b3":J
    .local v8, "d":I
    .local v19, "b0":J
    .local v21, "b4":J
    .local v57, "b5":J
    .local v59, "b7":J
    .local v61, "b9":J
    .local v63, "b11":J
    .local v65, "b13":J
    .local v67, "b15":J
    :goto_0
    const/16 v5, 0x14

    if-ge v8, v5, :cond_0

    .line 1057
    aget v27, v3, v8

    .line 1058
    .local v27, "dm17":I
    aget v28, v4, v8

    .line 1066
    .local v28, "dm3":I
    move-wide/from16 v33, v6

    .end local v6    # "b3":J
    .local v33, "b3":J
    add-long v5, v19, v10

    move-wide/from16 v19, v5

    const/16 v7, 0x18

    invoke-static {v10, v11, v7, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    .line 1067
    .end local v10    # "b1":J
    .local v5, "b1":J
    add-long v10, v13, v33

    move-wide v13, v10

    move-object/from16 v40, v1

    move-wide/from16 v0, v33

    .end local v1    # "kw":[J
    .end local v33    # "b3":J
    .local v0, "b3":J
    .local v40, "kw":[J
    invoke-static {v0, v1, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1068
    move-wide/from16 v45, v13

    move-wide/from16 v10, v57

    .end local v13    # "b2":J
    .end local v57    # "b5":J
    .local v10, "b5":J
    .local v45, "b2":J
    add-long v12, v21, v10

    move-wide/from16 v21, v12

    invoke-static {v10, v11, v9, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1069
    move-wide/from16 v51, v10

    move-wide/from16 v12, v59

    .end local v10    # "b5":J
    .end local v59    # "b7":J
    .local v12, "b7":J
    .local v51, "b5":J
    add-long v9, v24, v12

    move-wide/from16 v24, v9

    const/16 v11, 0x2f

    invoke-static {v12, v13, v11, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 1070
    .end local v12    # "b7":J
    .local v9, "b7":J
    move-object/from16 v53, v2

    move-object/from16 v54, v3

    move-wide/from16 v12, v61

    .end local v2    # "t":[J
    .end local v3    # "mod17":[I
    .end local v61    # "b9":J
    .local v12, "b9":J
    .local v53, "t":[J
    .local v54, "mod17":[I
    add-long v2, v30, v12

    move-wide/from16 v30, v2

    const/16 v7, 0x8

    invoke-static {v12, v13, v7, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1071
    .end local v12    # "b9":J
    .local v2, "b9":J
    move/from16 v55, v8

    move-wide/from16 v12, v63

    .end local v8    # "d":I
    .end local v63    # "b11":J
    .local v12, "b11":J
    .local v55, "d":I
    add-long v7, v36, v12

    move-wide/from16 v36, v7

    const/16 v14, 0x11

    invoke-static {v12, v13, v14, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 1072
    .end local v12    # "b11":J
    .local v7, "b11":J
    move-object/from16 v56, v4

    move-wide/from16 v57, v5

    move-wide/from16 v12, v65

    .end local v4    # "mod3":[I
    .end local v5    # "b1":J
    .end local v65    # "b13":J
    .local v12, "b13":J
    .local v56, "mod3":[I
    .local v57, "b1":J
    add-long v4, v42, v12

    move-wide/from16 v42, v4

    const/16 v6, 0x16

    invoke-static {v12, v13, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1073
    .end local v12    # "b13":J
    .local v4, "b13":J
    move-wide/from16 v59, v0

    move-wide/from16 v12, v67

    .end local v0    # "b3":J
    .end local v67    # "b15":J
    .local v12, "b15":J
    .local v59, "b3":J
    add-long v0, v48, v12

    move-wide/from16 v48, v0

    const/16 v6, 0x25

    invoke-static {v12, v13, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1075
    .end local v12    # "b15":J
    .local v0, "b15":J
    add-long v12, v19, v2

    move-wide/from16 v19, v12

    const/16 v14, 0x26

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1076
    add-long v13, v45, v4

    move-wide/from16 v45, v13

    const/16 v12, 0x13

    invoke-static {v4, v5, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1077
    add-long v12, v24, v7

    move-wide/from16 v24, v12

    invoke-static {v7, v8, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 1078
    add-long v12, v21, v0

    move-wide/from16 v21, v12

    const/16 v14, 0x37

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1079
    add-long v12, v36, v9

    move-wide/from16 v36, v12

    const/16 v14, 0x31

    invoke-static {v9, v10, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    .line 1080
    add-long v12, v42, v59

    move-wide/from16 v42, v12

    const/16 v14, 0x12

    move-wide/from16 v62, v7

    move-wide/from16 v6, v59

    .end local v7    # "b11":J
    .end local v59    # "b3":J
    .restart local v6    # "b3":J
    .local v62, "b11":J
    invoke-static {v6, v7, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1081
    add-long v12, v48, v51

    move-wide/from16 v48, v12

    const/16 v8, 0x17

    move-wide/from16 v14, v51

    const/16 v59, 0xa

    .end local v51    # "b5":J
    .local v14, "b5":J
    invoke-static {v14, v15, v8, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1082
    .end local v14    # "b5":J
    .local v12, "b5":J
    add-long v14, v30, v57

    move-wide/from16 v30, v14

    const/16 v8, 0x34

    move-wide/from16 v64, v12

    move-wide/from16 v11, v57

    .end local v12    # "b5":J
    .end local v57    # "b1":J
    .local v11, "b1":J
    .local v64, "b5":J
    invoke-static {v11, v12, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    .line 1084
    add-long v13, v19, v9

    move-wide/from16 v19, v13

    const/16 v8, 0x21

    invoke-static {v9, v10, v8, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1085
    .end local v9    # "b7":J
    .local v8, "b7":J
    add-long v13, v45, v64

    move-wide/from16 v45, v13

    move-wide/from16 v57, v8

    move-wide/from16 v8, v64

    const/4 v10, 0x4

    .end local v64    # "b5":J
    .local v8, "b5":J
    .local v57, "b7":J
    invoke-static {v8, v9, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1086
    add-long v13, v21, v6

    move-wide/from16 v21, v13

    const/16 v10, 0x33

    invoke-static {v6, v7, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    .line 1087
    .end local v6    # "b3":J
    .local v13, "b3":J
    add-long v6, v24, v11

    move-wide/from16 v24, v6

    const/16 v10, 0xd

    invoke-static {v11, v12, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    .line 1088
    add-long v6, v42, v0

    move-wide/from16 v42, v6

    const/16 v10, 0x22

    invoke-static {v0, v1, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1089
    add-long v6, v48, v4

    move-wide/from16 v48, v6

    const/16 v10, 0x29

    invoke-static {v4, v5, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1090
    add-long v6, v30, v62

    move-wide/from16 v30, v6

    const/16 v15, 0x3b

    move-wide/from16 v64, v11

    move-wide/from16 v10, v62

    .end local v11    # "b1":J
    .end local v62    # "b11":J
    .local v10, "b11":J
    .local v64, "b1":J
    invoke-static {v10, v11, v15, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1091
    .end local v10    # "b11":J
    .local v6, "b11":J
    add-long v10, v36, v2

    move-wide/from16 v36, v10

    const/16 v15, 0x11

    invoke-static {v2, v3, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1093
    add-long v10, v19, v0

    move-wide/from16 v19, v10

    const/4 v15, 0x5

    invoke-static {v0, v1, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1094
    add-long v10, v45, v6

    move-wide/from16 v45, v10

    const/16 v15, 0x14

    invoke-static {v6, v7, v15, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1095
    .end local v6    # "b11":J
    .restart local v10    # "b11":J
    move-wide/from16 v62, v13

    .end local v13    # "b3":J
    .local v62, "b3":J
    add-long v12, v24, v4

    move-wide v14, v12

    .end local v24    # "b6":J
    .local v14, "b6":J
    const/16 v6, 0x30

    invoke-static {v4, v5, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1096
    add-long v12, v21, v2

    move-wide/from16 v21, v12

    const/16 v6, 0x29

    invoke-static {v2, v3, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1097
    add-long v12, v48, v64

    move-wide/from16 v24, v12

    move-wide/from16 v6, v64

    move-wide/from16 v64, v0

    const/16 v0, 0x2f

    .end local v0    # "b15":J
    .end local v48    # "b14":J
    .local v6, "b1":J
    .local v24, "b14":J
    .local v64, "b15":J
    invoke-static {v6, v7, v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1098
    add-long v0, v30, v8

    move-wide v12, v0

    move-wide/from16 v30, v2

    .end local v2    # "b9":J
    .local v12, "b8":J
    .local v30, "b9":J
    const/16 v2, 0x1c

    invoke-static {v8, v9, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1099
    .end local v8    # "b5":J
    .local v0, "b5":J
    add-long v2, v36, v62

    move-wide v8, v2

    move-wide/from16 v36, v0

    .end local v0    # "b5":J
    .local v8, "b10":J
    .local v36, "b5":J
    const/16 v0, 0x10

    move-wide/from16 v66, v4

    move-wide/from16 v4, v62

    .end local v62    # "b3":J
    .local v4, "b3":J
    .local v66, "b13":J
    invoke-static {v4, v5, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v1

    .line 1100
    .end local v4    # "b3":J
    .local v1, "b3":J
    add-long v3, v42, v57

    move-wide/from16 v42, v3

    const/16 v5, 0x19

    move-wide/from16 v62, v1

    move-wide/from16 v0, v57

    .end local v1    # "b3":J
    .end local v57    # "b7":J
    .local v0, "b7":J
    .restart local v62    # "b3":J
    invoke-static {v0, v1, v5, v3, v4}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1105
    aget-wide v2, v40, v27

    add-long v19, v19, v2

    .line 1106
    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v40, v2

    add-long/2addr v6, v2

    .line 1107
    add-int/lit8 v2, v27, 0x2

    aget-wide v2, v40, v2

    add-long v45, v45, v2

    .line 1108
    add-int/lit8 v2, v27, 0x3

    aget-wide v2, v40, v2

    add-long v2, v62, v2

    .line 1109
    .end local v62    # "b3":J
    .local v2, "b3":J
    add-int/lit8 v4, v27, 0x4

    aget-wide v4, v40, v4

    add-long v21, v21, v4

    .line 1110
    add-int/lit8 v4, v27, 0x5

    aget-wide v4, v40, v4

    add-long v4, v36, v4

    .line 1111
    .end local v36    # "b5":J
    .local v4, "b5":J
    add-int/lit8 v36, v27, 0x6

    aget-wide v36, v40, v36

    add-long v14, v14, v36

    .line 1112
    add-int/lit8 v36, v27, 0x7

    aget-wide v36, v40, v36

    add-long v0, v0, v36

    .line 1113
    add-int/lit8 v36, v27, 0x8

    aget-wide v36, v40, v36

    add-long v36, v12, v36

    .line 1114
    .end local v12    # "b8":J
    .local v36, "b8":J
    add-int/lit8 v12, v27, 0x9

    aget-wide v12, v40, v12

    add-long v12, v30, v12

    .line 1115
    .end local v30    # "b9":J
    .local v12, "b9":J
    add-int/lit8 v30, v27, 0xa

    aget-wide v30, v40, v30

    add-long v8, v8, v30

    .line 1116
    add-int/lit8 v30, v27, 0xb

    aget-wide v30, v40, v30

    add-long v10, v10, v30

    .line 1117
    add-int/lit8 v30, v27, 0xc

    aget-wide v30, v40, v30

    add-long v42, v42, v30

    .line 1118
    add-int/lit8 v30, v27, 0xd

    aget-wide v30, v40, v30

    aget-wide v57, v53, v28

    add-long v30, v30, v57

    move-wide/from16 v57, v8

    .end local v8    # "b10":J
    .local v57, "b10":J
    add-long v8, v66, v30

    .line 1119
    .end local v66    # "b13":J
    .local v8, "b13":J
    add-int/lit8 v30, v27, 0xe

    aget-wide v30, v40, v30

    add-int/lit8 v52, v28, 0x1

    aget-wide v62, v53, v52

    add-long v30, v30, v62

    add-long v24, v24, v30

    .line 1120
    add-int/lit8 v30, v27, 0xf

    aget-wide v30, v40, v30

    move-wide/from16 v62, v12

    move-wide/from16 v66, v14

    move/from16 v12, v55

    .end local v14    # "b6":J
    .end local v55    # "d":I
    .local v12, "d":I
    .local v62, "b9":J
    .local v66, "b6":J
    int-to-long v13, v12

    add-long v30, v30, v13

    add-long v13, v64, v30

    .line 1125
    .end local v64    # "b15":J
    .local v13, "b15":J
    move-wide/from16 v30, v13

    .end local v12    # "d":I
    .end local v13    # "b15":J
    .local v30, "b15":J
    .restart local v55    # "d":I
    add-long v12, v19, v6

    move-wide v14, v12

    move-wide/from16 v19, v14

    const/16 v14, 0x29

    invoke-static {v6, v7, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1126
    move-wide/from16 v12, v62

    .end local v62    # "b9":J
    .local v12, "b9":J
    add-long v14, v45, v2

    move-wide/from16 v45, v14

    move-wide/from16 v62, v6

    const/16 v6, 0x9

    .end local v6    # "b1":J
    .local v62, "b1":J
    invoke-static {v2, v3, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1127
    add-long v6, v21, v4

    move-wide v14, v6

    move-wide/from16 v21, v14

    const/16 v14, 0x25

    invoke-static {v4, v5, v14, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1128
    add-long v14, v66, v0

    move-wide v6, v14

    move-wide/from16 v64, v6

    .end local v66    # "b6":J
    .local v64, "b6":J
    const/16 v6, 0x1f

    invoke-static {v0, v1, v6, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1129
    add-long v14, v36, v12

    move-wide/from16 v36, v14

    const/16 v7, 0xc

    invoke-static {v12, v13, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v12

    .line 1130
    add-long v14, v57, v10

    move-wide/from16 v57, v14

    const/16 v7, 0x2f

    invoke-static {v10, v11, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1131
    add-long v14, v42, v8

    move-wide/from16 v42, v14

    const/16 v7, 0x2c

    invoke-static {v8, v9, v7, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    .line 1132
    .end local v8    # "b13":J
    .local v7, "b13":J
    add-long v14, v24, v30

    move-wide/from16 v24, v14

    const/16 v9, 0x1e

    move-wide/from16 v66, v7

    move-wide/from16 v6, v30

    .end local v7    # "b13":J
    .end local v30    # "b15":J
    .local v6, "b15":J
    .local v66, "b13":J
    invoke-static {v6, v7, v9, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1134
    add-long v14, v19, v12

    move-wide v8, v14

    move-wide/from16 v19, v8

    const/16 v8, 0x10

    invoke-static {v12, v13, v8, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1135
    .end local v12    # "b9":J
    .local v8, "b9":J
    add-long v12, v45, v66

    move-wide v14, v12

    move-wide/from16 v30, v14

    .end local v45    # "b2":J
    .local v30, "b2":J
    const/16 v14, 0x22

    move-wide/from16 v45, v8

    move-wide/from16 v8, v66

    .end local v66    # "b13":J
    .local v8, "b13":J
    .local v45, "b9":J
    invoke-static {v8, v9, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1136
    add-long v12, v64, v10

    move-wide v14, v12

    move-wide/from16 v64, v14

    const/16 v14, 0x38

    invoke-static {v10, v11, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1137
    add-long v14, v21, v6

    move-wide v12, v14

    move-wide/from16 v21, v12

    const/16 v12, 0x33

    invoke-static {v6, v7, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1138
    add-long v12, v57, v0

    move-wide v14, v12

    move-wide/from16 v57, v14

    const/4 v14, 0x4

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1139
    add-long v12, v42, v2

    move-wide v14, v12

    move-wide/from16 v42, v14

    const/16 v14, 0x35

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1140
    add-long v12, v24, v4

    move-wide v14, v12

    move-wide/from16 v24, v14

    const/16 v14, 0x2a

    invoke-static {v4, v5, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1141
    add-long v12, v36, v62

    move-wide v14, v12

    move-wide/from16 v48, v10

    move-wide/from16 v36, v14

    move-wide/from16 v14, v62

    const/16 v10, 0x29

    .end local v10    # "b11":J
    .end local v62    # "b1":J
    .local v14, "b1":J
    .local v48, "b11":J
    invoke-static {v14, v15, v10, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1143
    .end local v14    # "b1":J
    .local v10, "b1":J
    add-long v12, v19, v0

    move-wide v14, v12

    move-wide/from16 v19, v14

    const/16 v14, 0x1f

    invoke-static {v0, v1, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1144
    add-long v14, v30, v4

    move-wide v12, v14

    move-wide/from16 v30, v12

    const/16 v12, 0x2c

    invoke-static {v4, v5, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 1145
    add-long v12, v21, v2

    move-wide v14, v12

    move-wide/from16 v21, v14

    const/16 v14, 0x2f

    invoke-static {v2, v3, v14, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1146
    add-long v14, v64, v10

    move-wide v12, v14

    move-wide/from16 v62, v12

    .end local v64    # "b6":J
    .local v62, "b6":J
    const/16 v12, 0x2e

    invoke-static {v10, v11, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 1147
    add-long v14, v42, v6

    move-wide v12, v14

    move-wide/from16 v42, v12

    const/16 v12, 0x13

    invoke-static {v6, v7, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1148
    add-long v14, v24, v8

    move-wide v12, v14

    move-wide/from16 v24, v12

    const/16 v12, 0x2a

    invoke-static {v8, v9, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    .line 1149
    add-long v14, v36, v48

    move-wide v12, v14

    move-wide/from16 v36, v12

    const/16 v12, 0x2c

    move-wide/from16 v64, v0

    move-wide/from16 v0, v48

    .end local v48    # "b11":J
    .local v0, "b11":J
    .local v64, "b7":J
    invoke-static {v0, v1, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1150
    add-long v14, v57, v45

    move-wide v12, v14

    move-wide/from16 v48, v12

    .end local v57    # "b10":J
    .local v48, "b10":J
    const/16 v12, 0x19

    move-wide/from16 v57, v2

    move-wide/from16 v2, v45

    .end local v45    # "b9":J
    .local v2, "b9":J
    .local v57, "b3":J
    invoke-static {v2, v3, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    .line 1152
    add-long v14, v19, v6

    move-wide v12, v14

    move-wide/from16 v19, v12

    const/16 v12, 0x9

    invoke-static {v6, v7, v12, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 1153
    add-long v12, v30, v0

    move-wide v14, v12

    move-wide/from16 v30, v6

    .end local v6    # "b15":J
    .local v14, "b2":J
    .local v30, "b15":J
    const/16 v6, 0x30

    invoke-static {v0, v1, v6, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1154
    add-long v12, v62, v8

    move-wide v6, v12

    move-wide/from16 v45, v0

    .end local v0    # "b11":J
    .end local v62    # "b6":J
    .local v6, "b6":J
    .local v45, "b11":J
    const/16 v0, 0x23

    invoke-static {v8, v9, v0, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1155
    .end local v8    # "b13":J
    .local v0, "b13":J
    add-long v8, v21, v2

    move-wide v12, v8

    move-wide/from16 v21, v0

    .end local v0    # "b13":J
    .local v12, "b4":J
    .local v21, "b13":J
    const/16 v0, 0x34

    invoke-static {v2, v3, v0, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1156
    .end local v2    # "b9":J
    .local v0, "b9":J
    add-long v2, v24, v10

    move-wide v8, v2

    move-wide/from16 v24, v0

    .end local v0    # "b9":J
    .local v8, "b14":J
    .local v24, "b9":J
    const/16 v0, 0x17

    invoke-static {v10, v11, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1157
    .end local v10    # "b1":J
    .local v0, "b1":J
    add-long v2, v36, v4

    move-wide v10, v2

    move-wide/from16 v36, v0

    const/16 v0, 0x1f

    .end local v0    # "b1":J
    .local v10, "b8":J
    .local v36, "b1":J
    invoke-static {v4, v5, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1158
    .end local v4    # "b5":J
    .local v0, "b5":J
    add-long v2, v48, v57

    move-wide v4, v2

    move-wide/from16 v48, v0

    move-wide/from16 v51, v4

    move-wide/from16 v0, v57

    const/16 v4, 0x25

    .end local v57    # "b3":J
    .local v0, "b3":J
    .local v48, "b5":J
    .local v51, "b10":J
    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1159
    add-long v2, v42, v64

    move-wide v4, v2

    move-wide/from16 v42, v0

    move-wide/from16 v57, v4

    move-wide/from16 v0, v64

    const/16 v4, 0x14

    .end local v64    # "b7":J
    .local v0, "b7":J
    .local v42, "b3":J
    .local v57, "b12":J
    invoke-static {v0, v1, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    .line 1164
    add-int/lit8 v2, v27, 0x1

    aget-wide v2, v40, v2

    add-long v19, v19, v2

    .line 1165
    add-int/lit8 v2, v27, 0x2

    aget-wide v2, v40, v2

    add-long v2, v36, v2

    .line 1166
    .end local v36    # "b1":J
    .local v2, "b1":J
    add-int/lit8 v4, v27, 0x3

    aget-wide v4, v40, v4

    add-long/2addr v4, v14

    .line 1167
    .end local v14    # "b2":J
    .local v4, "b2":J
    add-int/lit8 v14, v27, 0x4

    aget-wide v14, v40, v14

    add-long v14, v42, v14

    .line 1168
    .end local v42    # "b3":J
    .local v14, "b3":J
    add-int/lit8 v36, v27, 0x5

    aget-wide v36, v40, v36

    add-long v12, v12, v36

    .line 1169
    add-int/lit8 v36, v27, 0x6

    aget-wide v36, v40, v36

    add-long v36, v48, v36

    .line 1170
    .end local v48    # "b5":J
    .local v36, "b5":J
    add-int/lit8 v39, v27, 0x7

    aget-wide v42, v40, v39

    add-long v6, v6, v42

    .line 1171
    add-int/lit8 v39, v27, 0x8

    aget-wide v42, v40, v39

    add-long v0, v0, v42

    .line 1172
    add-int/lit8 v39, v27, 0x9

    aget-wide v42, v40, v39

    add-long v10, v10, v42

    .line 1173
    add-int/lit8 v39, v27, 0xa

    aget-wide v42, v40, v39

    add-long v61, v24, v42

    .line 1174
    .end local v24    # "b9":J
    .restart local v61    # "b9":J
    add-int/lit8 v24, v27, 0xb

    aget-wide v24, v40, v24

    add-long v24, v51, v24

    .line 1175
    .end local v51    # "b10":J
    .local v24, "b10":J
    add-int/lit8 v39, v27, 0xc

    aget-wide v42, v40, v39

    add-long v63, v45, v42

    .line 1176
    .end local v45    # "b11":J
    .restart local v63    # "b11":J
    add-int/lit8 v39, v27, 0xd

    aget-wide v42, v40, v39

    add-long v42, v57, v42

    .line 1177
    .end local v57    # "b12":J
    .local v42, "b12":J
    add-int/lit8 v39, v27, 0xe

    aget-wide v45, v40, v39

    add-int/lit8 v39, v28, 0x1

    aget-wide v48, v53, v39

    add-long v45, v45, v48

    add-long v65, v21, v45

    .line 1178
    .end local v21    # "b13":J
    .restart local v65    # "b13":J
    add-int/lit8 v21, v27, 0xf

    aget-wide v21, v40, v21

    add-int/lit8 v39, v28, 0x2

    aget-wide v45, v53, v39

    add-long v21, v21, v45

    add-long v48, v8, v21

    .line 1179
    .end local v8    # "b14":J
    .local v48, "b14":J
    add-int/lit8 v8, v27, 0x10

    aget-wide v8, v40, v8

    move-wide/from16 v21, v0

    move-wide/from16 v45, v2

    move/from16 v0, v55

    .end local v2    # "b1":J
    .end local v55    # "d":I
    .local v0, "d":I
    .local v21, "b7":J
    .local v45, "b1":J
    int-to-long v1, v0

    add-long/2addr v8, v1

    const-wide/16 v1, 0x1

    add-long/2addr v8, v1

    add-long v67, v30, v8

    .line 1055
    .end local v27    # "dm17":I
    .end local v28    # "dm3":I
    .end local v30    # "b15":J
    .restart local v67    # "b15":J
    add-int/lit8 v8, v0, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v30, v10

    move-wide/from16 v59, v21

    move-wide/from16 v57, v36

    move-object/from16 v1, v40

    move-wide/from16 v10, v45

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    const/16 v9, 0x8

    const/16 v41, 0x9

    const/16 v44, 0xc

    move-wide/from16 v21, v12

    move-wide/from16 v36, v24

    const/16 v12, 0xd

    move-wide/from16 v24, v6

    move-wide v6, v14

    const/16 v15, 0xa

    move-wide v13, v4

    move-object/from16 v4, v56

    const/4 v5, 0x4

    .end local v0    # "d":I
    .local v8, "d":I
    goto/16 :goto_0

    .end local v12    # "b4":J
    .end local v14    # "b3":J
    .end local v40    # "kw":[J
    .end local v45    # "b1":J
    .end local v53    # "t":[J
    .end local v54    # "mod17":[I
    .end local v56    # "mod3":[I
    .local v1, "kw":[J
    .local v2, "t":[J
    .restart local v3    # "mod17":[I
    .local v4, "mod3":[I
    .local v6, "b3":J
    .local v10, "b1":J
    .local v13, "b2":J
    .local v21, "b4":J
    .local v24, "b6":J
    .local v30, "b8":J
    .local v36, "b10":J
    .local v57, "b5":J
    .local v59, "b7":J
    :cond_0
    move-object/from16 v40, v1

    move-object/from16 v54, v3

    move-wide v1, v6

    move-wide/from16 v3, v57

    move-wide/from16 v27, v59

    move-wide/from16 v45, v65

    move-wide/from16 v51, v67

    const/16 v59, 0xa

    .line 1186
    .end local v6    # "b3":J
    .end local v8    # "d":I
    .end local v57    # "b5":J
    .end local v59    # "b7":J
    .end local v65    # "b13":J
    .end local v67    # "b15":J
    .local v1, "b3":J
    .local v3, "b5":J
    .local v27, "b7":J
    .restart local v40    # "kw":[J
    .local v45, "b13":J
    .local v51, "b15":J
    .restart local v54    # "mod17":[I
    aput-wide v19, p2, v18

    .line 1187
    aput-wide v10, p2, v29

    .line 1188
    aput-wide v13, p2, v32

    .line 1189
    aput-wide v1, p2, v35

    .line 1190
    const/16 v17, 0x4

    aput-wide v21, p2, v17

    .line 1191
    const/16 v16, 0x5

    aput-wide v3, p2, v16

    .line 1192
    aput-wide v24, p2, v23

    .line 1193
    aput-wide v27, p2, v26

    .line 1194
    const/16 v34, 0x8

    aput-wide v30, p2, v34

    .line 1195
    const/16 v41, 0x9

    aput-wide v61, p2, v41

    .line 1196
    aput-wide v36, p2, v59

    .line 1197
    aput-wide v63, p2, v38

    .line 1198
    const/16 v44, 0xc

    aput-wide v42, p2, v44

    .line 1199
    const/16 v33, 0xd

    aput-wide v45, p2, v33

    .line 1200
    aput-wide v48, p2, v47

    .line 1201
    aput-wide v51, p2, v50

    .line 1202
    return-void

    .line 1001
    .end local v10    # "b1":J
    .end local v13    # "b2":J
    .end local v19    # "b0":J
    .end local v21    # "b4":J
    .end local v24    # "b6":J
    .end local v27    # "b7":J
    .end local v30    # "b8":J
    .end local v36    # "b10":J
    .end local v40    # "kw":[J
    .end local v42    # "b12":J
    .end local v45    # "b13":J
    .end local v48    # "b14":J
    .end local v51    # "b15":J
    .end local v54    # "mod17":[I
    .end local v61    # "b9":J
    .end local v63    # "b11":J
    .local v1, "kw":[J
    .local v3, "mod17":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 997
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
