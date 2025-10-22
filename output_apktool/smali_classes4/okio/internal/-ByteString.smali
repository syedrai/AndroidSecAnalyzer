.class public final Lokio/internal/-ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,361:1\n129#1,2:367\n131#1,9:370\n67#2:362\n73#2:363\n73#2:365\n73#2:366\n67#2:394\n73#2:406\n1#3:364\n1#3:369\n212#4,7:379\n122#4:386\n219#4,5:387\n122#4:392\n226#4:393\n228#4:395\n397#4,2:396\n122#4:398\n400#4,6:399\n127#4:405\n406#4:407\n122#4:408\n407#4,13:409\n122#4:422\n422#4:423\n122#4:424\n425#4:425\n230#4,3:426\n440#4,3:429\n122#4:432\n443#4:433\n127#4:434\n446#4,10:435\n127#4:445\n456#4:446\n122#4:447\n457#4,4:448\n127#4:452\n461#4:453\n122#4:454\n462#4,14:455\n122#4:469\n477#4,2:470\n122#4:472\n481#4:473\n122#4:474\n484#4:475\n234#4,3:476\n500#4,3:479\n122#4:482\n503#4:483\n127#4:484\n506#4,2:485\n127#4:487\n510#4,10:488\n127#4:498\n520#4:499\n122#4:500\n521#4,4:501\n127#4:505\n525#4:506\n122#4:507\n526#4,4:508\n127#4:512\n530#4:513\n122#4:514\n531#4,15:515\n122#4:530\n547#4,2:531\n122#4:533\n550#4,2:534\n122#4:536\n554#4:537\n122#4:538\n557#4:539\n241#4:540\n122#4:541\n242#4,5:542\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n327#1:367,2\n327#1:370,9\n65#1:362\n66#1:363\n256#1:365\n257#1:366\n346#1:394\n346#1:406\n327#1:369\n346#1:379,7\n351#1:386\n346#1:387,5\n351#1:392\n346#1:393\n346#1:395\n346#1:396,2\n351#1:398\n346#1:399,6\n346#1:405\n346#1:407\n351#1:408\n346#1:409,13\n351#1:422\n346#1:423\n351#1:424\n346#1:425\n346#1:426,3\n346#1:429,3\n351#1:432\n346#1:433\n346#1:434\n346#1:435,10\n346#1:445\n346#1:446\n351#1:447\n346#1:448,4\n346#1:452\n346#1:453\n351#1:454\n346#1:455,14\n351#1:469\n346#1:470,2\n351#1:472\n346#1:473\n351#1:474\n346#1:475\n346#1:476,3\n346#1:479,3\n351#1:482\n346#1:483\n346#1:484\n346#1:485,2\n346#1:487\n346#1:488,10\n346#1:498\n346#1:499\n351#1:500\n346#1:501,4\n346#1:505\n346#1:506\n351#1:507\n346#1:508,4\n346#1:512\n346#1:513\n351#1:514\n346#1:515,15\n351#1:530\n346#1:531,2\n351#1:533\n346#1:534,2\n351#1:536\n346#1:537\n351#1:538\n346#1:539\n346#1:540\n351#1:541\n346#1:542,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0005\u001a\r\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\t\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\r\u0010\n\u001a\u00020\u0002*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u000b\u001a\u00020\u0002*\u00020\u0002H\u0080\u0008\u001a\u001d\u0010\u000c\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0080\u0008\u001a\u0015\u0010\u0010\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u000eH\u0080\u0008\u001a\r\u0010\u0013\u001a\u00020\u000e*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0014\u001a\u00020\u0015*\u00020\u0002H\u0080\u0008\u001a\r\u0010\u0016\u001a\u00020\u0015*\u00020\u0002H\u0080\u0008\u001a-\u0010\u0017\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0080\u0008\u001a-\u0010\u0017\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0080\u0008\u001a-\u0010\u001d\u001a\u00020\u001e*\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0080\u0008\u001a\u0015\u0010!\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\"\u001a\u00020\u0002H\u0080\u0008\u001a\u0015\u0010!\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\"\u001a\u00020\u0015H\u0080\u0008\u001a\u0015\u0010#\u001a\u00020\u0018*\u00020\u00022\u0006\u0010$\u001a\u00020\u0002H\u0080\u0008\u001a\u0015\u0010#\u001a\u00020\u0018*\u00020\u00022\u0006\u0010$\u001a\u00020\u0015H\u0080\u0008\u001a\u001d\u0010%\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u000eH\u0080\u0008\u001a\u001d\u0010\'\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010&\u001a\u00020\u000eH\u0080\u0008\u001a\u001d\u0010\'\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00152\u0006\u0010&\u001a\u00020\u000eH\u0080\u0008\u001a\u0017\u0010(\u001a\u00020\u0018*\u00020\u00022\u0008\u0010\u001a\u001a\u0004\u0018\u00010)H\u0080\u0008\u001a\r\u0010*\u001a\u00020\u000e*\u00020\u0002H\u0080\u0008\u001a\u0015\u0010+\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0002H\u0080\u0008\u001a\u0011\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0015H\u0080\u0008\u001a\u001d\u0010.\u001a\u00020\u0002*\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0080\u0008\u001a\r\u0010/\u001a\u00020\u0002*\u00020\u0001H\u0080\u0008\u001a\u000f\u00100\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0080\u0008\u001a\r\u00101\u001a\u00020\u0002*\u00020\u0001H\u0080\u0008\u001a$\u00102\u001a\u00020\u001e*\u00020\u00022\u0006\u00103\u001a\u0002042\u0006\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u000eH\u0000\u001a\u0010\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u000207H\u0002\u001a\r\u00108\u001a\u00020\u0001*\u00020\u0002H\u0080\u0008\u001a\u0018\u00109\u001a\u00020\u000e2\u0006\u0010:\u001a\u00020\u00152\u0006\u0010;\u001a\u00020\u000eH\u0002\"\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006<"
    }
    d2 = {
        "commonUtf8",
        "",
        "Lokio/ByteString;",
        "commonBase64",
        "commonBase64Url",
        "HEX_DIGIT_CHARS",
        "",
        "getHEX_DIGIT_CHARS",
        "()[C",
        "commonHex",
        "commonToAsciiLowercase",
        "commonToAsciiUppercase",
        "commonSubstring",
        "beginIndex",
        "",
        "endIndex",
        "commonGetByte",
        "",
        "pos",
        "commonGetSize",
        "commonToByteArray",
        "",
        "commonInternalArray",
        "commonRangeEquals",
        "",
        "offset",
        "other",
        "otherOffset",
        "byteCount",
        "commonCopyInto",
        "",
        "target",
        "targetOffset",
        "commonStartsWith",
        "prefix",
        "commonEndsWith",
        "suffix",
        "commonIndexOf",
        "fromIndex",
        "commonLastIndexOf",
        "commonEquals",
        "",
        "commonHashCode",
        "commonCompareTo",
        "commonOf",
        "data",
        "commonToByteString",
        "commonEncodeUtf8",
        "commonDecodeBase64",
        "commonDecodeHex",
        "commonWrite",
        "buffer",
        "Lokio/Buffer;",
        "decodeHexDigit",
        "c",
        "",
        "commonToString",
        "codePointIndexToCharIndex",
        "s",
        "codePointCount",
        "third_party.java_src.okio_okio-jvm"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 1
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-ByteString;->codePointIndexToCharIndex([BI)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 1
    invoke-static {p0}, Lokio/internal/-ByteString;->decodeHexDigit(C)I

    move-result v0

    return v0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 32
    .param p0, "s"    # [B
    .param p1, "codePointCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "codePointCount"
        }
    .end annotation

    .line 344
    move/from16 v0, p1

    const/4 v1, 0x0

    .line 345
    .local v1, "charCount":I
    const/4 v2, 0x0

    .line 346
    .local v2, "j":I
    const/4 v3, 0x0

    move-object/from16 v4, p0

    .local v3, "beginIndex$iv":I
    array-length v5, v4

    .local v5, "endIndex$iv":I
    move-object/from16 v6, p0

    .local v6, "$this$processUtf8CodePoints$iv":[B
    const/4 v7, 0x0

    .line 379
    .local v7, "$i$f$processUtf8CodePoints":I
    move v8, v3

    .line 380
    .local v8, "index$iv":I
    :goto_0
    if-ge v8, v5, :cond_f3

    .line 381
    aget-byte v9, v6, v8

    .line 382
    .local v9, "b0$iv":B
    nop

    .line 383
    const/16 v10, 0xa0

    const/16 v11, 0x7f

    const/16 v12, 0x20

    const/16 v14, 0xd

    const/16 v16, -0x1

    const/16 v13, 0xa

    const/high16 v15, 0x10000

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-ltz v9, :cond_13

    .line 385
    move/from16 v20, v9

    .local v20, "c":I
    const/16 v21, 0x0

    .line 347
    .local v21, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .local v22, "j":I
    if-ne v2, v0, :cond_0

    .line 348
    return v1

    .line 351
    :cond_0
    move/from16 v2, v20

    .end local v20    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_5

    if-eq v2, v14, :cond_5

    const/16 v20, 0x0

    .line 386
    .local v20, "$i$f$isIsoControl":I
    if-ltz v2, :cond_1

    if-ge v2, v12, :cond_1

    const/16 v23, 0x1

    goto :goto_1

    :cond_1
    const/16 v23, 0x0

    :goto_1
    if-nez v23, :cond_4

    if-gt v11, v2, :cond_2

    if-ge v2, v10, :cond_2

    const/16 v23, 0x1

    goto :goto_2

    :cond_2
    const/16 v23, 0x0

    :goto_2
    if-eqz v23, :cond_3

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v20, 0x1

    .line 351
    .end local v20    # "$i$f$isIsoControl":I
    :goto_4
    if-nez v20, :cond_6

    .line 352
    :cond_5
    const v10, 0xfffd

    if-ne v2, v10, :cond_7

    .line 354
    :cond_6
    return v16

    .line 357
    :cond_7
    if-ge v2, v15, :cond_8

    const/4 v10, 0x1

    goto :goto_5

    :cond_8
    const/4 v10, 0x2

    :goto_5
    add-int/2addr v1, v10

    .line 358
    nop

    .line 385
    .end local v2    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .line 387
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v22

    .line 390
    .end local v22    # "j":I
    .local v2, "j":I
    :goto_6
    if-ge v8, v5, :cond_12

    aget-byte v10, v6, v8

    if-ltz v10, :cond_12

    .line 391
    add-int/lit8 v10, v8, 0x1

    .end local v8    # "index$iv":I
    .local v10, "index$iv":I
    aget-byte v8, v6, v8

    .local v8, "c":I
    const/16 v21, 0x0

    .line 347
    .restart local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_9

    .line 348
    return v1

    .line 351
    :cond_9
    if-eq v8, v13, :cond_e

    if-eq v8, v14, :cond_e

    const/4 v2, 0x0

    .line 392
    .local v2, "$i$f$isIsoControl":I
    if-ltz v8, :cond_a

    if-ge v8, v12, :cond_a

    const/16 v23, 0x1

    goto :goto_7

    :cond_a
    const/16 v23, 0x0

    :goto_7
    if-nez v23, :cond_d

    if-gt v11, v8, :cond_b

    const/16 v11, 0xa0

    if-ge v8, v11, :cond_b

    const/4 v11, 0x1

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v2, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :goto_a
    if-nez v2, :cond_f

    .line 352
    :cond_e
    const v2, 0xfffd

    if-ne v8, v2, :cond_10

    .line 354
    :cond_f
    return v16

    .line 357
    :cond_10
    if-ge v8, v15, :cond_11

    const/4 v2, 0x1

    goto :goto_b

    :cond_11
    const/4 v2, 0x2

    :goto_b
    add-int/2addr v1, v2

    .line 358
    nop

    .line 391
    .end local v8    # "c":I
    .end local v21    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    move v8, v10

    const/16 v11, 0x7f

    move/from16 v2, v22

    goto :goto_6

    .end local v10    # "index$iv":I
    .end local v22    # "j":I
    .local v2, "j":I
    .local v8, "index$iv":I
    :cond_12
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_5a

    .line 393
    :cond_13
    const/4 v10, 0x5

    .local v10, "other$iv$iv":I
    move v11, v9

    .local v11, "$this$shr$iv$iv":B
    const/16 v21, 0x0

    .line 394
    .local v21, "$i$f$shr":I
    shr-int v10, v11, v10

    .line 393
    .end local v10    # "other$iv$iv":I
    .end local v11    # "$this$shr$iv$iv":B
    .end local v21    # "$i$f$shr":I
    const/4 v11, -0x2

    if-ne v10, v11, :cond_3f

    .line 395
    move-object v10, v6

    .local v10, "$this$process2Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 396
    .local v11, "$i$f$process2Utf8Bytes":I
    add-int/lit8 v15, v8, 0x1

    if-gt v5, v15, :cond_1d

    .line 397
    const v15, 0xfffd

    .local v15, "it$iv":I
    const/16 v22, 0x0

    .line 395
    .local v22, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v24, v15

    .local v24, "c":I
    const/16 v25, 0x0

    .line 347
    .local v25, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v26, v2, 0x1

    .end local v2    # "j":I
    .local v26, "j":I
    if-ne v2, v0, :cond_14

    .line 348
    return v1

    .line 351
    :cond_14
    move/from16 v2, v24

    .end local v24    # "c":I
    .local v2, "c":I
    if-eq v2, v13, :cond_19

    if-eq v2, v14, :cond_19

    const/4 v13, 0x0

    .line 398
    .local v13, "$i$f$isIsoControl":I
    if-ltz v2, :cond_15

    if-ge v2, v12, :cond_15

    const/4 v12, 0x1

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    if-nez v12, :cond_17

    const/16 v12, 0x7f

    if-gt v12, v2, :cond_16

    const/16 v12, 0xa0

    if-ge v2, v12, :cond_16

    const/4 v12, 0x1

    goto :goto_d

    :cond_16
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_18

    :cond_17
    const/16 v18, 0x1

    .line 351
    .end local v13    # "$i$f$isIsoControl":I
    :cond_18
    if-nez v18, :cond_1a

    .line 352
    :cond_19
    const v12, 0xfffd

    if-ne v2, v12, :cond_1b

    .line 354
    :cond_1a
    return v16

    .line 357
    :cond_1b
    const/high16 v12, 0x10000

    if-ge v2, v12, :cond_1c

    const/16 v17, 0x1

    :cond_1c
    add-int v1, v1, v17

    .line 358
    nop

    .line 395
    .end local v2    # "c":I
    .end local v25    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v15    # "it$iv":I
    .end local v22    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 397
    nop

    .line 399
    const/16 v17, 0x1

    goto/16 :goto_19

    .line 402
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_1d
    aget-byte v15, v10, v8

    .line 403
    .local v15, "b0$iv$iv":B
    add-int/lit8 v24, v8, 0x1

    aget-byte v12, v10, v24

    .line 404
    .local v12, "b1$iv$iv":B
    const/16 v24, 0x0

    .line 405
    .local v24, "$i$f$isUtf8Continuation":I
    const/16 v26, 0xc0

    .local v26, "other$iv$iv$iv$iv":I
    move/from16 v27, v12

    .local v27, "$this$and$iv$iv$iv$iv":B
    const/16 v28, 0x0

    .line 406
    .local v28, "$i$f$and":I
    and-int v14, v27, v26

    .line 405
    .end local v26    # "other$iv$iv$iv$iv":I
    .end local v27    # "$this$and$iv$iv$iv$iv":B
    .end local v28    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v14, v13, :cond_1e

    const/4 v13, 0x1

    goto :goto_e

    :cond_1e
    const/4 v13, 0x0

    .line 404
    .end local v24    # "$i$f$isUtf8Continuation":I
    :goto_e
    if-nez v13, :cond_29

    .line 407
    const v13, 0xfffd

    .local v13, "it$iv":I
    const/4 v14, 0x0

    .line 395
    .local v14, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v22, v13

    .local v22, "c":I
    const/16 v24, 0x0

    .line 347
    .local v24, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v27, v2, 0x1

    .end local v2    # "j":I
    .local v27, "j":I
    if-ne v2, v0, :cond_1f

    .line 348
    return v1

    .line 351
    :cond_1f
    move/from16 v28, v1

    move/from16 v2, v22

    const/16 v1, 0xa

    .end local v1    # "charCount":I
    .end local v22    # "c":I
    .local v2, "c":I
    .local v28, "charCount":I
    if-eq v2, v1, :cond_25

    const/16 v1, 0xd

    if-eq v2, v1, :cond_25

    const/4 v1, 0x0

    .line 408
    .local v1, "$i$f$isIsoControl":I
    if-ltz v2, :cond_20

    move/from16 v22, v1

    const/16 v1, 0x20

    .end local v1    # "$i$f$isIsoControl":I
    .local v22, "$i$f$isIsoControl":I
    if-ge v2, v1, :cond_21

    const/4 v1, 0x1

    goto :goto_f

    .end local v22    # "$i$f$isIsoControl":I
    .restart local v1    # "$i$f$isIsoControl":I
    :cond_20
    move/from16 v22, v1

    .end local v1    # "$i$f$isIsoControl":I
    .restart local v22    # "$i$f$isIsoControl":I
    :cond_21
    const/4 v1, 0x0

    :goto_f
    if-nez v1, :cond_23

    const/16 v1, 0x7f

    if-gt v1, v2, :cond_22

    const/16 v1, 0xa0

    if-ge v2, v1, :cond_22

    const/4 v1, 0x1

    goto :goto_10

    :cond_22
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_24

    :cond_23
    const/16 v18, 0x1

    .line 351
    .end local v22    # "$i$f$isIsoControl":I
    :cond_24
    if-nez v18, :cond_26

    .line 352
    :cond_25
    const v1, 0xfffd

    if-ne v2, v1, :cond_27

    .line 354
    :cond_26
    return v16

    .line 357
    :cond_27
    const/high16 v1, 0x10000

    if-ge v2, v1, :cond_28

    const/16 v17, 0x1

    :cond_28
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 395
    .end local v2    # "c":I
    .end local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 407
    nop

    .line 409
    move/from16 v26, v27

    const/16 v17, 0x1

    goto/16 :goto_19

    .line 414
    .end local v27    # "j":I
    .local v2, "j":I
    :cond_29
    move/from16 v28, v1

    .line 415
    .end local v1    # "charCount":I
    .restart local v28    # "charCount":I
    nop

    .line 414
    xor-int/lit16 v1, v12, 0xf80

    .line 416
    shl-int/lit8 v13, v15, 0x6

    .line 414
    xor-int/2addr v1, v13

    .line 412
    nop

    .line 419
    .local v1, "codePoint$iv$iv":I
    nop

    .line 420
    const/16 v13, 0x80

    if-ge v1, v13, :cond_34

    .line 421
    const v13, 0xfffd

    .restart local v13    # "it$iv":I
    const/4 v14, 0x0

    .line 395
    .restart local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move/from16 v22, v13

    .local v22, "c":I
    const/16 v24, 0x0

    .line 347
    .restart local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v27, v2, 0x1

    .end local v2    # "j":I
    .restart local v27    # "j":I
    if-ne v2, v0, :cond_2a

    .line 348
    return v28

    .line 351
    :cond_2a
    move/from16 v2, v22

    move/from16 v22, v1

    const/16 v1, 0xa

    .end local v1    # "codePoint$iv$iv":I
    .local v2, "c":I
    .local v22, "codePoint$iv$iv":I
    if-eq v2, v1, :cond_30

    const/16 v1, 0xd

    if-eq v2, v1, :cond_30

    const/4 v1, 0x0

    .line 422
    .local v1, "$i$f$isIsoControl":I
    if-ltz v2, :cond_2b

    move/from16 v26, v1

    const/16 v1, 0x20

    .end local v1    # "$i$f$isIsoControl":I
    .local v26, "$i$f$isIsoControl":I
    if-ge v2, v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_11

    .end local v26    # "$i$f$isIsoControl":I
    .restart local v1    # "$i$f$isIsoControl":I
    :cond_2b
    move/from16 v26, v1

    .end local v1    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    :cond_2c
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_2e

    const/16 v1, 0x7f

    if-gt v1, v2, :cond_2d

    const/16 v1, 0xa0

    if-ge v2, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_12

    :cond_2d
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_2f

    :cond_2e
    const/16 v18, 0x1

    .line 351
    .end local v26    # "$i$f$isIsoControl":I
    :cond_2f
    if-nez v18, :cond_31

    .line 352
    :cond_30
    const v1, 0xfffd

    if-ne v2, v1, :cond_32

    .line 354
    :cond_31
    return v16

    .line 357
    :cond_32
    const/high16 v1, 0x10000

    if-ge v2, v1, :cond_33

    goto :goto_13

    :cond_33
    const/16 v19, 0x2

    :goto_13
    add-int v1, v28, v19

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 395
    .end local v2    # "c":I
    .end local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "it$iv":I
    .end local v14    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 421
    move/from16 v26, v27

    goto :goto_18

    .line 423
    .end local v22    # "codePoint$iv$iv":I
    .end local v27    # "j":I
    .local v1, "codePoint$iv$iv":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_34
    move/from16 v22, v1

    .local v1, "it$iv":I
    .restart local v22    # "codePoint$iv$iv":I
    const/4 v13, 0x0

    .line 395
    .local v13, "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    move v14, v1

    .local v14, "c":I
    const/16 v24, 0x0

    .line 347
    .restart local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v27, v2, 0x1

    .end local v2    # "j":I
    .restart local v27    # "j":I
    if-ne v2, v0, :cond_35

    .line 348
    return v28

    .line 351
    :cond_35
    const/16 v2, 0xa

    if-eq v14, v2, :cond_3b

    const/16 v2, 0xd

    if-eq v14, v2, :cond_3b

    const/4 v2, 0x0

    .line 424
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_36

    move/from16 v26, v1

    const/16 v1, 0x20

    .end local v1    # "it$iv":I
    .local v26, "it$iv":I
    if-ge v14, v1, :cond_37

    const/4 v1, 0x1

    goto :goto_14

    .end local v26    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_36
    move/from16 v26, v1

    .end local v1    # "it$iv":I
    .restart local v26    # "it$iv":I
    :cond_37
    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_39

    const/16 v1, 0x7f

    if-gt v1, v14, :cond_38

    const/16 v1, 0xa0

    if-ge v14, v1, :cond_38

    const/4 v1, 0x1

    goto :goto_15

    :cond_38
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_3a

    :cond_39
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_3a
    if-nez v18, :cond_3c

    goto :goto_16

    .end local v26    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_3b
    move/from16 v26, v1

    .line 352
    .end local v1    # "it$iv":I
    .restart local v26    # "it$iv":I
    :goto_16
    const v1, 0xfffd

    if-ne v14, v1, :cond_3d

    .line 354
    :cond_3c
    return v16

    .line 357
    :cond_3d
    const/high16 v1, 0x10000

    if-ge v14, v1, :cond_3e

    goto :goto_17

    :cond_3e
    const/16 v19, 0x2

    :goto_17
    add-int v1, v28, v19

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 395
    .end local v14    # "c":I
    .end local v24    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v13    # "$i$a$-process2Utf8Bytes-Utf8$processUtf8CodePoints$1$iv":I
    .end local v26    # "it$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 423
    move/from16 v26, v27

    .line 425
    .end local v27    # "j":I
    .local v26, "j":I
    :goto_18
    nop

    .line 395
    .end local v10    # "$this$process2Utf8Bytes$iv$iv":[B
    .end local v11    # "$i$f$process2Utf8Bytes":I
    .end local v12    # "b1$iv$iv":B
    .end local v15    # "b0$iv$iv":B
    .end local v22    # "codePoint$iv$iv":I
    :goto_19
    add-int v8, v8, v17

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v2, v26

    goto/16 :goto_5a

    .line 426
    .end local v26    # "j":I
    .local v2, "j":I
    :cond_3f
    move/from16 v28, v1

    .end local v1    # "charCount":I
    .restart local v28    # "charCount":I
    const/4 v1, 0x4

    .local v1, "other$iv$iv":I
    move v10, v9

    .local v10, "$this$shr$iv$iv":B
    const/4 v12, 0x0

    .line 394
    .local v12, "$i$f$shr":I
    shr-int v1, v10, v1

    .line 426
    .end local v1    # "other$iv$iv":I
    .end local v10    # "$this$shr$iv$iv":B
    .end local v12    # "$i$f$shr":I
    const v12, 0xd800

    if-ne v1, v11, :cond_87

    .line 428
    move-object v1, v6

    .local v1, "$this$process3Utf8Bytes$iv$iv":[B
    const/4 v11, 0x0

    .line 429
    .local v11, "$i$f$process3Utf8Bytes":I
    add-int/lit8 v14, v8, 0x2

    if-gt v5, v14, :cond_4d

    .line 431
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 428
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v13, v10

    .local v13, "c":I
    const/4 v14, 0x0

    .line 347
    .local v14, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "j":I
    .local v15, "j":I
    if-ne v2, v0, :cond_40

    .line 348
    return v28

    .line 351
    :cond_40
    const/16 v2, 0xa

    if-eq v13, v2, :cond_46

    const/16 v2, 0xd

    if-eq v13, v2, :cond_46

    const/4 v2, 0x0

    .line 432
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_41

    move-object/from16 v24, v1

    const/16 v1, 0x20

    .end local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    .local v24, "$this$process3Utf8Bytes$iv$iv":[B
    if-ge v13, v1, :cond_42

    const/4 v1, 0x1

    goto :goto_1a

    .end local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    :cond_41
    move-object/from16 v24, v1

    .end local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    :cond_42
    const/4 v1, 0x0

    :goto_1a
    if-nez v1, :cond_45

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_43

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_43

    const/4 v1, 0x1

    goto :goto_1b

    :cond_43
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_44

    goto :goto_1c

    :cond_44
    const/4 v1, 0x0

    goto :goto_1d

    :cond_45
    :goto_1c
    const/4 v1, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :goto_1d
    if-nez v1, :cond_47

    goto :goto_1e

    .end local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    :cond_46
    move-object/from16 v24, v1

    .line 352
    .end local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    :goto_1e
    const v1, 0xfffd

    if-ne v13, v1, :cond_48

    .line 354
    :cond_47
    return v16

    .line 357
    :cond_48
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_49

    const/4 v1, 0x1

    goto :goto_1f

    :cond_49
    const/4 v1, 0x2

    :goto_1f
    add-int v1, v28, v1

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 428
    .end local v13    # "c":I
    .end local v14    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 431
    nop

    .line 433
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_4c

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v24, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v10, 0x0

    .line 434
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v12, 0xc0

    .local v12, "other$iv$iv$iv$iv":I
    move v13, v2

    .local v13, "$this$and$iv$iv$iv$iv":B
    const/4 v14, 0x0

    .line 406
    .local v14, "$i$f$and":I
    and-int/2addr v12, v13

    .line 434
    .end local v12    # "other$iv$iv$iv$iv":I
    .end local v13    # "$this$and$iv$iv$iv$iv":B
    .end local v14    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v12, v13, :cond_4a

    const/16 v18, 0x1

    .line 433
    .end local v2    # "byte$iv$iv$iv":B
    .end local v10    # "$i$f$isUtf8Continuation":I
    :cond_4a
    if-nez v18, :cond_4b

    goto :goto_20

    .line 438
    :cond_4b
    goto/16 :goto_34

    .line 435
    :cond_4c
    :goto_20
    const/16 v17, 0x1

    goto/16 :goto_34

    .line 442
    .end local v15    # "j":I
    .end local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    .local v1, "$this$process3Utf8Bytes$iv$iv":[B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_4d
    move-object/from16 v24, v1

    .end local v1    # "$this$process3Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    aget-byte v1, v24, v8

    .line 443
    .local v1, "b0$iv$iv":B
    add-int/lit8 v14, v8, 0x1

    aget-byte v14, v24, v14

    .line 444
    .local v14, "b1$iv$iv":B
    const/4 v15, 0x0

    .line 445
    .local v15, "$i$f$isUtf8Continuation":I
    const/16 v27, 0xc0

    .local v27, "other$iv$iv$iv$iv":I
    move/from16 v29, v14

    .local v29, "$this$and$iv$iv$iv$iv":B
    const/16 v30, 0x0

    .line 406
    .local v30, "$i$f$and":I
    and-int v13, v29, v27

    .line 445
    .end local v27    # "other$iv$iv$iv$iv":I
    .end local v29    # "$this$and$iv$iv$iv$iv":B
    .end local v30    # "$i$f$and":I
    const/16 v10, 0x80

    if-ne v13, v10, :cond_4e

    const/4 v10, 0x1

    goto :goto_21

    :cond_4e
    const/4 v10, 0x0

    .line 444
    .end local v15    # "$i$f$isUtf8Continuation":I
    :goto_21
    if-nez v10, :cond_59

    .line 446
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 428
    .local v12, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v13, v10

    .local v13, "c":I
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .local v22, "j":I
    if-ne v2, v0, :cond_4f

    .line 348
    return v28

    .line 351
    :cond_4f
    const/16 v2, 0xa

    if-eq v13, v2, :cond_55

    const/16 v2, 0xd

    if-eq v13, v2, :cond_55

    const/4 v2, 0x0

    .line 447
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_50

    move/from16 v29, v1

    const/16 v1, 0x20

    .end local v1    # "b0$iv$iv":B
    .local v29, "b0$iv$iv":B
    if-ge v13, v1, :cond_51

    const/4 v1, 0x1

    goto :goto_22

    .end local v29    # "b0$iv$iv":B
    .restart local v1    # "b0$iv$iv":B
    :cond_50
    move/from16 v29, v1

    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    :cond_51
    const/4 v1, 0x0

    :goto_22
    if-nez v1, :cond_53

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_52

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_52

    const/4 v1, 0x1

    goto :goto_23

    :cond_52
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_54

    :cond_53
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_54
    if-nez v18, :cond_56

    goto :goto_24

    .end local v29    # "b0$iv$iv":B
    .restart local v1    # "b0$iv$iv":B
    :cond_55
    move/from16 v29, v1

    .line 352
    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    :goto_24
    const v1, 0xfffd

    if-ne v13, v1, :cond_57

    .line 354
    :cond_56
    return v16

    .line 357
    :cond_57
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_58

    const/16 v17, 0x1

    :cond_58
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 428
    .end local v13    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 446
    nop

    .line 448
    move/from16 v15, v22

    const/16 v17, 0x1

    goto/16 :goto_34

    .line 450
    .end local v22    # "j":I
    .end local v29    # "b0$iv$iv":B
    .local v1, "b0$iv$iv":B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_59
    move/from16 v29, v1

    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    add-int/lit8 v1, v8, 0x2

    aget-byte v1, v24, v1

    .line 451
    .local v1, "b2$iv$iv":B
    const/4 v10, 0x0

    .line 452
    .local v10, "$i$f$isUtf8Continuation":I
    const/16 v13, 0xc0

    .local v13, "other$iv$iv$iv$iv":I
    move v15, v1

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v30, 0x0

    .line 406
    .restart local v30    # "$i$f$and":I
    and-int/2addr v13, v15

    .line 452
    .end local v13    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v30    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v13, v15, :cond_5a

    const/4 v10, 0x1

    goto :goto_25

    :cond_5a
    const/4 v10, 0x0

    .line 451
    .end local v10    # "$i$f$isUtf8Continuation":I
    :goto_25
    if-nez v10, :cond_65

    .line 453
    const v10, 0xfffd

    .local v10, "it$iv":I
    const/4 v12, 0x0

    .line 428
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v13, v10

    .local v13, "c":I
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_5b

    .line 348
    return v28

    .line 351
    :cond_5b
    const/16 v2, 0xa

    if-eq v13, v2, :cond_61

    const/16 v2, 0xd

    if-eq v13, v2, :cond_61

    const/4 v2, 0x0

    .line 454
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_5c

    move/from16 v30, v1

    const/16 v1, 0x20

    .end local v1    # "b2$iv$iv":B
    .local v30, "b2$iv$iv":B
    if-ge v13, v1, :cond_5d

    const/4 v1, 0x1

    goto :goto_26

    .end local v30    # "b2$iv$iv":B
    .restart local v1    # "b2$iv$iv":B
    :cond_5c
    move/from16 v30, v1

    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    :cond_5d
    const/4 v1, 0x0

    :goto_26
    if-nez v1, :cond_5f

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_5e

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_27

    :cond_5e
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_60

    :cond_5f
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_60
    if-nez v18, :cond_62

    goto :goto_28

    .end local v30    # "b2$iv$iv":B
    .restart local v1    # "b2$iv$iv":B
    :cond_61
    move/from16 v30, v1

    .line 352
    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    :goto_28
    const v1, 0xfffd

    if-ne v13, v1, :cond_63

    .line 354
    :cond_62
    return v16

    .line 357
    :cond_63
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_64

    goto :goto_29

    :cond_64
    const/16 v19, 0x2

    :goto_29
    add-int v1, v28, v19

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 428
    .end local v13    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 453
    nop

    .line 455
    move/from16 v15, v22

    goto/16 :goto_34

    .line 460
    .end local v22    # "j":I
    .end local v30    # "b2$iv$iv":B
    .local v1, "b2$iv$iv":B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_65
    move/from16 v30, v1

    .line 461
    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    nop

    .line 460
    const v1, -0x1e080

    xor-int v1, v30, v1

    .line 462
    shl-int/lit8 v10, v14, 0x6

    .line 460
    xor-int/2addr v1, v10

    .line 463
    shl-int/lit8 v10, v29, 0xc

    .line 460
    xor-int/2addr v1, v10

    .line 458
    nop

    .line 466
    .local v1, "codePoint$iv$iv":I
    nop

    .line 467
    const/16 v10, 0x800

    if-ge v1, v10, :cond_70

    .line 468
    const v10, 0xfffd

    .restart local v10    # "it$iv":I
    const/4 v12, 0x0

    .line 428
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v13, v10

    .restart local v13    # "c":I
    const/4 v15, 0x0

    .line 347
    .restart local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_66

    .line 348
    return v28

    .line 351
    :cond_66
    const/16 v2, 0xa

    if-eq v13, v2, :cond_6c

    const/16 v2, 0xd

    if-eq v13, v2, :cond_6c

    const/4 v2, 0x0

    .line 469
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_67

    move/from16 v26, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .local v26, "$i$f$isIsoControl":I
    if-ge v13, v2, :cond_68

    const/4 v2, 0x1

    goto :goto_2a

    .end local v26    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_67
    move/from16 v26, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    :cond_68
    const/4 v2, 0x0

    :goto_2a
    if-nez v2, :cond_6a

    const/16 v2, 0x7f

    if-gt v2, v13, :cond_69

    const/16 v2, 0xa0

    if-ge v13, v2, :cond_69

    const/4 v2, 0x1

    goto :goto_2b

    :cond_69
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_6b

    :cond_6a
    const/16 v18, 0x1

    .line 351
    .end local v26    # "$i$f$isIsoControl":I
    :cond_6b
    if-nez v18, :cond_6d

    .line 352
    :cond_6c
    const v2, 0xfffd

    if-ne v13, v2, :cond_6e

    .line 354
    :cond_6d
    return v16

    .line 357
    :cond_6e
    const/high16 v2, 0x10000

    if-ge v13, v2, :cond_6f

    const/16 v17, 0x1

    :cond_6f
    add-int v2, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v2, "charCount":I
    nop

    .line 428
    .end local v13    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 468
    move/from16 v27, v1

    move v1, v2

    move/from16 v15, v22

    goto/16 :goto_33

    .line 470
    .end local v22    # "j":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_70
    if-gt v12, v1, :cond_71

    const v10, 0xe000

    if-ge v1, v10, :cond_71

    const/4 v10, 0x1

    goto :goto_2c

    :cond_71
    const/4 v10, 0x0

    :goto_2c
    if-eqz v10, :cond_7c

    .line 471
    const v10, 0xfffd

    .restart local v10    # "it$iv":I
    const/4 v12, 0x0

    .line 428
    .restart local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v13, v10

    .restart local v13    # "c":I
    const/4 v15, 0x0

    .line 347
    .restart local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_72

    .line 348
    return v28

    .line 351
    :cond_72
    const/16 v2, 0xa

    if-eq v13, v2, :cond_78

    const/16 v2, 0xd

    if-eq v13, v2, :cond_78

    const/4 v2, 0x0

    .line 472
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_73

    move/from16 v27, v1

    const/16 v1, 0x20

    .end local v1    # "codePoint$iv$iv":I
    .local v27, "codePoint$iv$iv":I
    if-ge v13, v1, :cond_74

    const/4 v1, 0x1

    goto :goto_2d

    .end local v27    # "codePoint$iv$iv":I
    .restart local v1    # "codePoint$iv$iv":I
    :cond_73
    move/from16 v27, v1

    .end local v1    # "codePoint$iv$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    :cond_74
    const/4 v1, 0x0

    :goto_2d
    if-nez v1, :cond_76

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_75

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_75

    const/4 v1, 0x1

    goto :goto_2e

    :cond_75
    const/4 v1, 0x0

    :goto_2e
    if-eqz v1, :cond_77

    :cond_76
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_77
    if-nez v18, :cond_79

    goto :goto_2f

    .end local v27    # "codePoint$iv$iv":I
    .restart local v1    # "codePoint$iv$iv":I
    :cond_78
    move/from16 v27, v1

    .line 352
    .end local v1    # "codePoint$iv$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    :goto_2f
    const v1, 0xfffd

    if-ne v13, v1, :cond_7a

    .line 354
    :cond_79
    return v16

    .line 357
    :cond_7a
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_7b

    const/16 v17, 0x1

    :cond_7b
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 428
    .end local v13    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "it$iv":I
    .end local v12    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 471
    move/from16 v15, v22

    goto :goto_33

    .line 473
    .end local v22    # "j":I
    .end local v27    # "codePoint$iv$iv":I
    .local v1, "codePoint$iv$iv":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_7c
    move/from16 v27, v1

    .local v1, "it$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    const/4 v10, 0x0

    .line 428
    .local v10, "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    move v12, v1

    .local v12, "c":I
    const/4 v13, 0x0

    .line 347
    .local v13, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "j":I
    .local v15, "j":I
    if-ne v2, v0, :cond_7d

    .line 348
    return v28

    .line 351
    :cond_7d
    const/16 v2, 0xa

    if-eq v12, v2, :cond_83

    const/16 v2, 0xd

    if-eq v12, v2, :cond_83

    const/4 v2, 0x0

    .line 474
    .local v2, "$i$f$isIsoControl":I
    if-ltz v12, :cond_7e

    move/from16 v22, v1

    const/16 v1, 0x20

    .end local v1    # "it$iv":I
    .local v22, "it$iv":I
    if-ge v12, v1, :cond_7f

    const/4 v1, 0x1

    goto :goto_30

    .end local v22    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_7e
    move/from16 v22, v1

    .end local v1    # "it$iv":I
    .restart local v22    # "it$iv":I
    :cond_7f
    const/4 v1, 0x0

    :goto_30
    if-nez v1, :cond_81

    const/16 v1, 0x7f

    if-gt v1, v12, :cond_80

    const/16 v1, 0xa0

    if-ge v12, v1, :cond_80

    const/4 v1, 0x1

    goto :goto_31

    :cond_80
    const/4 v1, 0x0

    :goto_31
    if-eqz v1, :cond_82

    :cond_81
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_82
    if-nez v18, :cond_84

    goto :goto_32

    .end local v22    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_83
    move/from16 v22, v1

    .line 352
    .end local v1    # "it$iv":I
    .restart local v22    # "it$iv":I
    :goto_32
    const v1, 0xfffd

    if-ne v12, v1, :cond_85

    .line 354
    :cond_84
    return v16

    .line 357
    :cond_85
    const/high16 v1, 0x10000

    if-ge v12, v1, :cond_86

    const/16 v17, 0x1

    :cond_86
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 428
    .end local v12    # "c":I
    .end local v13    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v10    # "$i$a$-process3Utf8Bytes-Utf8$processUtf8CodePoints$2$iv":I
    .end local v22    # "it$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 473
    nop

    .line 475
    :goto_33
    const/16 v17, 0x3

    .line 428
    .end local v11    # "$i$f$process3Utf8Bytes":I
    .end local v14    # "b1$iv$iv":B
    .end local v24    # "$this$process3Utf8Bytes$iv$iv":[B
    .end local v27    # "codePoint$iv$iv":I
    .end local v29    # "b0$iv$iv":B
    .end local v30    # "b2$iv$iv":B
    :goto_34
    add-int v8, v8, v17

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v2, v15

    goto/16 :goto_5a

    .line 476
    .end local v1    # "charCount":I
    .end local v15    # "j":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_87
    const/4 v1, 0x3

    .local v1, "other$iv$iv":I
    move v10, v9

    .local v10, "$this$shr$iv$iv":B
    const/4 v13, 0x0

    .line 394
    .local v13, "$i$f$shr":I
    shr-int v1, v10, v1

    .line 476
    .end local v1    # "other$iv$iv":I
    .end local v10    # "$this$shr$iv$iv":B
    .end local v13    # "$i$f$shr":I
    if-ne v1, v11, :cond_e9

    .line 478
    move-object v1, v6

    .local v1, "$this$process4Utf8Bytes$iv$iv":[B
    const/4 v10, 0x0

    .line 479
    .local v10, "$i$f$process4Utf8Bytes":I
    add-int/lit8 v11, v8, 0x3

    if-gt v5, v11, :cond_98

    .line 481
    const v11, 0xfffd

    .local v11, "it$iv":I
    const/4 v12, 0x0

    .line 478
    .local v12, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v13, v11

    .local v13, "c":I
    const/4 v14, 0x0

    .line 347
    .local v14, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "j":I
    .restart local v15    # "j":I
    if-ne v2, v0, :cond_88

    .line 348
    return v28

    .line 351
    :cond_88
    const/16 v2, 0xa

    if-eq v13, v2, :cond_8e

    const/16 v2, 0xd

    if-eq v13, v2, :cond_8e

    const/4 v2, 0x0

    .line 482
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_89

    move-object/from16 v24, v1

    const/16 v1, 0x20

    .end local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v24, "$this$process4Utf8Bytes$iv$iv":[B
    if-ge v13, v1, :cond_8a

    const/4 v1, 0x1

    goto :goto_35

    .end local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    .restart local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    :cond_89
    move-object/from16 v24, v1

    .end local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    :cond_8a
    const/4 v1, 0x0

    :goto_35
    if-nez v1, :cond_8d

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_8b

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_8b

    const/4 v1, 0x1

    goto :goto_36

    :cond_8b
    const/4 v1, 0x0

    :goto_36
    if-eqz v1, :cond_8c

    goto :goto_37

    :cond_8c
    const/4 v1, 0x0

    goto :goto_38

    :cond_8d
    :goto_37
    const/4 v1, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :goto_38
    if-nez v1, :cond_8f

    goto :goto_39

    .end local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    .restart local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    :cond_8e
    move-object/from16 v24, v1

    .line 352
    .end local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    :goto_39
    const v1, 0xfffd

    if-ne v13, v1, :cond_90

    .line 354
    :cond_8f
    return v16

    .line 357
    :cond_90
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_91

    const/4 v1, 0x1

    goto :goto_3a

    :cond_91
    const/4 v1, 0x2

    :goto_3a
    add-int v1, v28, v1

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v13    # "c":I
    .end local v14    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v11    # "it$iv":I
    .end local v12    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 481
    nop

    .line 483
    add-int/lit8 v2, v8, 0x1

    if-le v5, v2, :cond_97

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v24, v2

    .local v2, "byte$iv$iv$iv":B
    const/4 v11, 0x0

    .line 484
    .local v11, "$i$f$isUtf8Continuation":I
    const/16 v12, 0xc0

    .local v12, "other$iv$iv$iv$iv":I
    move v13, v2

    .local v13, "$this$and$iv$iv$iv$iv":B
    const/4 v14, 0x0

    .line 406
    .local v14, "$i$f$and":I
    and-int/2addr v12, v13

    .line 484
    .end local v12    # "other$iv$iv$iv$iv":I
    .end local v13    # "$this$and$iv$iv$iv$iv":B
    .end local v14    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v12, v13, :cond_92

    const/4 v2, 0x1

    goto :goto_3b

    :cond_92
    const/4 v2, 0x0

    .line 483
    .end local v2    # "byte$iv$iv$iv":B
    .end local v11    # "$i$f$isUtf8Continuation":I
    :goto_3b
    if-nez v2, :cond_93

    goto :goto_3d

    .line 486
    :cond_93
    add-int/lit8 v2, v8, 0x2

    if-le v5, v2, :cond_96

    add-int/lit8 v2, v8, 0x2

    aget-byte v2, v24, v2

    .restart local v2    # "byte$iv$iv$iv":B
    const/4 v11, 0x0

    .line 487
    .restart local v11    # "$i$f$isUtf8Continuation":I
    const/16 v12, 0xc0

    .restart local v12    # "other$iv$iv$iv$iv":I
    move v13, v2

    .restart local v13    # "$this$and$iv$iv$iv$iv":B
    const/4 v14, 0x0

    .line 406
    .restart local v14    # "$i$f$and":I
    and-int/2addr v12, v13

    .line 487
    .end local v12    # "other$iv$iv$iv$iv":I
    .end local v13    # "$this$and$iv$iv$iv$iv":B
    .end local v14    # "$i$f$and":I
    const/16 v13, 0x80

    if-ne v12, v13, :cond_94

    const/16 v18, 0x1

    .line 486
    .end local v2    # "byte$iv$iv$iv":B
    .end local v11    # "$i$f$isUtf8Continuation":I
    :cond_94
    if-nez v18, :cond_95

    goto :goto_3c

    .line 491
    :cond_95
    const/16 v17, 0x3

    goto/16 :goto_57

    .line 488
    :cond_96
    :goto_3c
    goto/16 :goto_57

    .line 485
    :cond_97
    :goto_3d
    const/16 v17, 0x1

    goto/16 :goto_57

    .line 495
    .end local v15    # "j":I
    .end local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    .local v1, "$this$process4Utf8Bytes$iv$iv":[B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_98
    move-object/from16 v24, v1

    .end local v1    # "$this$process4Utf8Bytes$iv$iv":[B
    .restart local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    aget-byte v1, v24, v8

    .line 496
    .local v1, "b0$iv$iv":B
    add-int/lit8 v11, v8, 0x1

    aget-byte v11, v24, v11

    .line 497
    .local v11, "b1$iv$iv":B
    const/4 v13, 0x0

    .line 498
    .local v13, "$i$f$isUtf8Continuation":I
    const/16 v14, 0xc0

    .local v14, "other$iv$iv$iv$iv":I
    move v15, v11

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v29, 0x0

    .line 406
    .local v29, "$i$f$and":I
    and-int/2addr v14, v15

    .line 498
    .end local v14    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v29    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_99

    const/4 v13, 0x1

    goto :goto_3e

    :cond_99
    const/4 v13, 0x0

    .line 497
    .end local v13    # "$i$f$isUtf8Continuation":I
    :goto_3e
    if-nez v13, :cond_a4

    .line 499
    const v12, 0xfffd

    .local v12, "it$iv":I
    const/4 v13, 0x0

    .line 478
    .local v13, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .local v14, "c":I
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .local v22, "j":I
    if-ne v2, v0, :cond_9a

    .line 348
    return v28

    .line 351
    :cond_9a
    const/16 v2, 0xa

    if-eq v14, v2, :cond_a0

    const/16 v2, 0xd

    if-eq v14, v2, :cond_a0

    const/4 v2, 0x0

    .line 500
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_9b

    move/from16 v29, v1

    const/16 v1, 0x20

    .end local v1    # "b0$iv$iv":B
    .local v29, "b0$iv$iv":B
    if-ge v14, v1, :cond_9c

    const/4 v1, 0x1

    goto :goto_3f

    .end local v29    # "b0$iv$iv":B
    .restart local v1    # "b0$iv$iv":B
    :cond_9b
    move/from16 v29, v1

    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    :cond_9c
    const/4 v1, 0x0

    :goto_3f
    if-nez v1, :cond_9e

    const/16 v1, 0x7f

    if-gt v1, v14, :cond_9d

    const/16 v1, 0xa0

    if-ge v14, v1, :cond_9d

    const/4 v1, 0x1

    goto :goto_40

    :cond_9d
    const/4 v1, 0x0

    :goto_40
    if-eqz v1, :cond_9f

    :cond_9e
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_9f
    if-nez v18, :cond_a1

    goto :goto_41

    .end local v29    # "b0$iv$iv":B
    .restart local v1    # "b0$iv$iv":B
    :cond_a0
    move/from16 v29, v1

    .line 352
    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    :goto_41
    const v1, 0xfffd

    if-ne v14, v1, :cond_a2

    .line 354
    :cond_a1
    return v16

    .line 357
    :cond_a2
    const/high16 v1, 0x10000

    if-ge v14, v1, :cond_a3

    const/16 v17, 0x1

    :cond_a3
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 499
    nop

    .line 501
    move/from16 v15, v22

    const/16 v17, 0x1

    goto/16 :goto_57

    .line 503
    .end local v22    # "j":I
    .end local v29    # "b0$iv$iv":B
    .local v1, "b0$iv$iv":B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_a4
    move/from16 v29, v1

    .end local v1    # "b0$iv$iv":B
    .restart local v29    # "b0$iv$iv":B
    add-int/lit8 v1, v8, 0x2

    aget-byte v1, v24, v1

    .line 504
    .local v1, "b2$iv$iv":B
    const/4 v13, 0x0

    .line 505
    .local v13, "$i$f$isUtf8Continuation":I
    const/16 v14, 0xc0

    .local v14, "other$iv$iv$iv$iv":I
    move v15, v1

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v30, 0x0

    .line 406
    .local v30, "$i$f$and":I
    and-int/2addr v14, v15

    .line 505
    .end local v14    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v30    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_a5

    const/4 v13, 0x1

    goto :goto_42

    :cond_a5
    const/4 v13, 0x0

    .line 504
    .end local v13    # "$i$f$isUtf8Continuation":I
    :goto_42
    if-nez v13, :cond_b0

    .line 506
    const v12, 0xfffd

    .restart local v12    # "it$iv":I
    const/4 v13, 0x0

    .line 478
    .local v13, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .local v14, "c":I
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_a6

    .line 348
    return v28

    .line 351
    :cond_a6
    const/16 v2, 0xa

    if-eq v14, v2, :cond_ac

    const/16 v2, 0xd

    if-eq v14, v2, :cond_ac

    const/4 v2, 0x0

    .line 507
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_a7

    move/from16 v30, v1

    const/16 v1, 0x20

    .end local v1    # "b2$iv$iv":B
    .local v30, "b2$iv$iv":B
    if-ge v14, v1, :cond_a8

    const/4 v1, 0x1

    goto :goto_43

    .end local v30    # "b2$iv$iv":B
    .restart local v1    # "b2$iv$iv":B
    :cond_a7
    move/from16 v30, v1

    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    :cond_a8
    const/4 v1, 0x0

    :goto_43
    if-nez v1, :cond_aa

    const/16 v1, 0x7f

    if-gt v1, v14, :cond_a9

    const/16 v1, 0xa0

    if-ge v14, v1, :cond_a9

    const/4 v1, 0x1

    goto :goto_44

    :cond_a9
    const/4 v1, 0x0

    :goto_44
    if-eqz v1, :cond_ab

    :cond_aa
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_ab
    if-nez v18, :cond_ad

    goto :goto_45

    .end local v30    # "b2$iv$iv":B
    .restart local v1    # "b2$iv$iv":B
    :cond_ac
    move/from16 v30, v1

    .line 352
    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    :goto_45
    const v1, 0xfffd

    if-ne v14, v1, :cond_ae

    .line 354
    :cond_ad
    return v16

    .line 357
    :cond_ae
    const/high16 v1, 0x10000

    if-ge v14, v1, :cond_af

    goto :goto_46

    :cond_af
    const/16 v19, 0x2

    :goto_46
    add-int v1, v28, v19

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 506
    nop

    .line 508
    move/from16 v15, v22

    goto/16 :goto_57

    .line 510
    .end local v22    # "j":I
    .end local v30    # "b2$iv$iv":B
    .local v1, "b2$iv$iv":B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_b0
    move/from16 v30, v1

    .end local v1    # "b2$iv$iv":B
    .restart local v30    # "b2$iv$iv":B
    add-int/lit8 v1, v8, 0x3

    aget-byte v1, v24, v1

    .line 511
    .local v1, "b3$iv$iv":B
    const/4 v13, 0x0

    .line 512
    .local v13, "$i$f$isUtf8Continuation":I
    const/16 v14, 0xc0

    .local v14, "other$iv$iv$iv$iv":I
    move v15, v1

    .local v15, "$this$and$iv$iv$iv$iv":B
    const/16 v31, 0x0

    .line 406
    .local v31, "$i$f$and":I
    and-int/2addr v14, v15

    .line 512
    .end local v14    # "other$iv$iv$iv$iv":I
    .end local v15    # "$this$and$iv$iv$iv$iv":B
    .end local v31    # "$i$f$and":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_b1

    const/4 v13, 0x1

    goto :goto_47

    :cond_b1
    const/4 v13, 0x0

    .line 511
    .end local v13    # "$i$f$isUtf8Continuation":I
    :goto_47
    if-nez v13, :cond_bc

    .line 513
    const v12, 0xfffd

    .restart local v12    # "it$iv":I
    const/4 v13, 0x0

    .line 478
    .local v13, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .local v14, "c":I
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_b2

    .line 348
    return v28

    .line 351
    :cond_b2
    const/16 v2, 0xa

    if-eq v14, v2, :cond_b8

    const/16 v2, 0xd

    if-eq v14, v2, :cond_b8

    const/4 v2, 0x0

    .line 514
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_b3

    move/from16 v31, v1

    const/16 v1, 0x20

    .end local v1    # "b3$iv$iv":B
    .local v31, "b3$iv$iv":B
    if-ge v14, v1, :cond_b4

    const/4 v1, 0x1

    goto :goto_48

    .end local v31    # "b3$iv$iv":B
    .restart local v1    # "b3$iv$iv":B
    :cond_b3
    move/from16 v31, v1

    .end local v1    # "b3$iv$iv":B
    .restart local v31    # "b3$iv$iv":B
    :cond_b4
    const/4 v1, 0x0

    :goto_48
    if-nez v1, :cond_b6

    const/16 v1, 0x7f

    if-gt v1, v14, :cond_b5

    const/16 v1, 0xa0

    if-ge v14, v1, :cond_b5

    const/4 v1, 0x1

    goto :goto_49

    :cond_b5
    const/4 v1, 0x0

    :goto_49
    if-eqz v1, :cond_b7

    :cond_b6
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_b7
    if-nez v18, :cond_b9

    goto :goto_4a

    .end local v31    # "b3$iv$iv":B
    .restart local v1    # "b3$iv$iv":B
    :cond_b8
    move/from16 v31, v1

    .line 352
    .end local v1    # "b3$iv$iv":B
    .restart local v31    # "b3$iv$iv":B
    :goto_4a
    const v1, 0xfffd

    if-ne v14, v1, :cond_ba

    .line 354
    :cond_b9
    return v16

    .line 357
    :cond_ba
    const/high16 v1, 0x10000

    if-ge v14, v1, :cond_bb

    const/16 v17, 0x1

    :cond_bb
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 513
    nop

    .line 515
    move/from16 v15, v22

    const/16 v17, 0x3

    goto/16 :goto_57

    .line 520
    .end local v22    # "j":I
    .end local v31    # "b3$iv$iv":B
    .local v1, "b3$iv$iv":B
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_bc
    move/from16 v31, v1

    .line 521
    .end local v1    # "b3$iv$iv":B
    .restart local v31    # "b3$iv$iv":B
    nop

    .line 520
    const v1, 0x381f80

    xor-int v1, v31, v1

    .line 522
    shl-int/lit8 v13, v30, 0x6

    .line 520
    xor-int/2addr v1, v13

    .line 523
    shl-int/lit8 v13, v11, 0xc

    .line 520
    xor-int/2addr v1, v13

    .line 524
    shl-int/lit8 v13, v29, 0x12

    .line 520
    xor-int/2addr v1, v13

    .line 518
    nop

    .line 527
    .local v1, "codePoint$iv$iv":I
    nop

    .line 528
    const v13, 0x10ffff

    if-le v1, v13, :cond_c7

    .line 529
    const v12, 0xfffd

    .restart local v12    # "it$iv":I
    const/4 v13, 0x0

    .line 478
    .restart local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .restart local v14    # "c":I
    const/4 v15, 0x0

    .line 347
    .restart local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_bd

    .line 348
    return v28

    .line 351
    :cond_bd
    const/16 v2, 0xa

    if-eq v14, v2, :cond_c3

    const/16 v2, 0xd

    if-eq v14, v2, :cond_c3

    const/4 v2, 0x0

    .line 530
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_be

    move/from16 v26, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    if-ge v14, v2, :cond_bf

    const/4 v2, 0x1

    goto :goto_4b

    .end local v26    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_be
    move/from16 v26, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    :cond_bf
    const/4 v2, 0x0

    :goto_4b
    if-nez v2, :cond_c1

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_c0

    const/16 v2, 0xa0

    if-ge v14, v2, :cond_c0

    const/4 v2, 0x1

    goto :goto_4c

    :cond_c0
    const/4 v2, 0x0

    :goto_4c
    if-eqz v2, :cond_c2

    :cond_c1
    const/16 v18, 0x1

    .line 351
    .end local v26    # "$i$f$isIsoControl":I
    :cond_c2
    if-nez v18, :cond_c4

    .line 352
    :cond_c3
    const v2, 0xfffd

    if-ne v14, v2, :cond_c5

    .line 354
    :cond_c4
    return v16

    .line 357
    :cond_c5
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_c6

    const/16 v17, 0x1

    :cond_c6
    add-int v2, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v2, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 529
    move/from16 v27, v1

    move v1, v2

    move/from16 v15, v22

    goto/16 :goto_56

    .line 531
    .end local v22    # "j":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_c7
    if-gt v12, v1, :cond_c8

    const v12, 0xe000

    if-ge v1, v12, :cond_c8

    const/4 v12, 0x1

    goto :goto_4d

    :cond_c8
    const/4 v12, 0x0

    :goto_4d
    if-eqz v12, :cond_d3

    .line 532
    const v12, 0xfffd

    .restart local v12    # "it$iv":I
    const/4 v13, 0x0

    .line 478
    .restart local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .restart local v14    # "c":I
    const/4 v15, 0x0

    .line 347
    .restart local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_c9

    .line 348
    return v28

    .line 351
    :cond_c9
    const/16 v2, 0xa

    if-eq v14, v2, :cond_cf

    const/16 v2, 0xd

    if-eq v14, v2, :cond_cf

    const/4 v2, 0x0

    .line 533
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_ca

    move/from16 v26, v2

    const/16 v2, 0x20

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    if-ge v14, v2, :cond_cb

    const/4 v2, 0x1

    goto :goto_4e

    .end local v26    # "$i$f$isIsoControl":I
    .restart local v2    # "$i$f$isIsoControl":I
    :cond_ca
    move/from16 v26, v2

    .end local v2    # "$i$f$isIsoControl":I
    .restart local v26    # "$i$f$isIsoControl":I
    :cond_cb
    const/4 v2, 0x0

    :goto_4e
    if-nez v2, :cond_cd

    const/16 v2, 0x7f

    if-gt v2, v14, :cond_cc

    const/16 v2, 0xa0

    if-ge v14, v2, :cond_cc

    const/4 v2, 0x1

    goto :goto_4f

    :cond_cc
    const/4 v2, 0x0

    :goto_4f
    if-eqz v2, :cond_ce

    :cond_cd
    const/16 v18, 0x1

    .line 351
    .end local v26    # "$i$f$isIsoControl":I
    :cond_ce
    if-nez v18, :cond_d0

    .line 352
    :cond_cf
    const v2, 0xfffd

    if-ne v14, v2, :cond_d1

    .line 354
    :cond_d0
    return v16

    .line 357
    :cond_d1
    const/high16 v2, 0x10000

    if-ge v14, v2, :cond_d2

    const/16 v17, 0x1

    :cond_d2
    add-int v2, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v2, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 532
    move/from16 v27, v1

    move v1, v2

    move/from16 v15, v22

    goto/16 :goto_56

    .line 534
    .end local v22    # "j":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_d3
    const/high16 v12, 0x10000

    if-ge v1, v12, :cond_de

    .line 535
    const v12, 0xfffd

    .restart local v12    # "it$iv":I
    const/4 v13, 0x0

    .line 478
    .restart local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v14, v12

    .restart local v14    # "c":I
    const/4 v15, 0x0

    .line 347
    .restart local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v22, v2, 0x1

    .end local v2    # "j":I
    .restart local v22    # "j":I
    if-ne v2, v0, :cond_d4

    .line 348
    return v28

    .line 351
    :cond_d4
    const/16 v2, 0xa

    if-eq v14, v2, :cond_da

    const/16 v2, 0xd

    if-eq v14, v2, :cond_da

    const/4 v2, 0x0

    .line 536
    .local v2, "$i$f$isIsoControl":I
    if-ltz v14, :cond_d5

    move/from16 v27, v1

    const/16 v1, 0x20

    .end local v1    # "codePoint$iv$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    if-ge v14, v1, :cond_d6

    const/4 v1, 0x1

    goto :goto_50

    .end local v27    # "codePoint$iv$iv":I
    .restart local v1    # "codePoint$iv$iv":I
    :cond_d5
    move/from16 v27, v1

    .end local v1    # "codePoint$iv$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    :cond_d6
    const/4 v1, 0x0

    :goto_50
    if-nez v1, :cond_d8

    const/16 v1, 0x7f

    if-gt v1, v14, :cond_d7

    const/16 v1, 0xa0

    if-ge v14, v1, :cond_d7

    const/4 v1, 0x1

    goto :goto_51

    :cond_d7
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_d9

    :cond_d8
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_d9
    if-nez v18, :cond_db

    goto :goto_52

    .end local v27    # "codePoint$iv$iv":I
    .restart local v1    # "codePoint$iv$iv":I
    :cond_da
    move/from16 v27, v1

    .line 352
    .end local v1    # "codePoint$iv$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    :goto_52
    const v1, 0xfffd

    if-ne v14, v1, :cond_dc

    .line 354
    :cond_db
    return v16

    .line 357
    :cond_dc
    const/high16 v1, 0x10000

    if-ge v14, v1, :cond_dd

    const/16 v17, 0x1

    :cond_dd
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v14    # "c":I
    .end local v15    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "it$iv":I
    .end local v13    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 535
    move/from16 v15, v22

    goto :goto_56

    .line 537
    .end local v22    # "j":I
    .end local v27    # "codePoint$iv$iv":I
    .local v1, "codePoint$iv$iv":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_de
    move/from16 v27, v1

    .local v1, "it$iv":I
    .restart local v27    # "codePoint$iv$iv":I
    const/4 v12, 0x0

    .line 478
    .local v12, "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    move v13, v1

    .local v13, "c":I
    const/4 v14, 0x0

    .line 347
    .local v14, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "j":I
    .local v15, "j":I
    if-ne v2, v0, :cond_df

    .line 348
    return v28

    .line 351
    :cond_df
    const/16 v2, 0xa

    if-eq v13, v2, :cond_e5

    const/16 v2, 0xd

    if-eq v13, v2, :cond_e5

    const/4 v2, 0x0

    .line 538
    .local v2, "$i$f$isIsoControl":I
    if-ltz v13, :cond_e0

    move/from16 v22, v1

    const/16 v1, 0x20

    .end local v1    # "it$iv":I
    .local v22, "it$iv":I
    if-ge v13, v1, :cond_e1

    const/4 v1, 0x1

    goto :goto_53

    .end local v22    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_e0
    move/from16 v22, v1

    .end local v1    # "it$iv":I
    .restart local v22    # "it$iv":I
    :cond_e1
    const/4 v1, 0x0

    :goto_53
    if-nez v1, :cond_e3

    const/16 v1, 0x7f

    if-gt v1, v13, :cond_e2

    const/16 v1, 0xa0

    if-ge v13, v1, :cond_e2

    const/4 v1, 0x1

    goto :goto_54

    :cond_e2
    const/4 v1, 0x0

    :goto_54
    if-eqz v1, :cond_e4

    :cond_e3
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_e4
    if-nez v18, :cond_e6

    goto :goto_55

    .end local v22    # "it$iv":I
    .restart local v1    # "it$iv":I
    :cond_e5
    move/from16 v22, v1

    .line 352
    .end local v1    # "it$iv":I
    .restart local v22    # "it$iv":I
    :goto_55
    const v1, 0xfffd

    if-ne v13, v1, :cond_e7

    .line 354
    :cond_e6
    return v16

    .line 357
    :cond_e7
    const/high16 v1, 0x10000

    if-ge v13, v1, :cond_e8

    const/16 v17, 0x1

    :cond_e8
    add-int v1, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v1, "charCount":I
    nop

    .line 478
    .end local v13    # "c":I
    .end local v14    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .end local v12    # "$i$a$-process4Utf8Bytes-Utf8$processUtf8CodePoints$3$iv":I
    .end local v22    # "it$iv":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 537
    nop

    .line 539
    :goto_56
    const/16 v17, 0x4

    .line 478
    .end local v10    # "$i$f$process4Utf8Bytes":I
    .end local v11    # "b1$iv$iv":B
    .end local v24    # "$this$process4Utf8Bytes$iv$iv":[B
    .end local v27    # "codePoint$iv$iv":I
    .end local v29    # "b0$iv$iv":B
    .end local v30    # "b2$iv$iv":B
    .end local v31    # "b3$iv$iv":B
    :goto_57
    add-int v8, v8, v17

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v2, v15

    goto :goto_5a

    .line 540
    .end local v1    # "charCount":I
    .end local v15    # "j":I
    .local v2, "j":I
    .restart local v28    # "charCount":I
    :cond_e9
    const v1, 0xfffd

    .local v1, "c":I
    const/4 v10, 0x0

    .line 347
    .local v10, "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "j":I
    .local v11, "j":I
    if-ne v2, v0, :cond_ea

    .line 348
    return v28

    .line 351
    :cond_ea
    const/16 v2, 0xa

    if-eq v1, v2, :cond_ef

    const/16 v2, 0xd

    if-eq v1, v2, :cond_ef

    const/4 v2, 0x0

    .line 541
    .local v2, "$i$f$isIsoControl":I
    if-ltz v1, :cond_eb

    const/16 v12, 0x20

    if-ge v1, v12, :cond_eb

    const/4 v12, 0x1

    goto :goto_58

    :cond_eb
    const/4 v12, 0x0

    :goto_58
    if-nez v12, :cond_ed

    const/16 v12, 0x7f

    if-gt v12, v1, :cond_ec

    const/16 v12, 0xa0

    if-ge v1, v12, :cond_ec

    const/4 v12, 0x1

    goto :goto_59

    :cond_ec
    const/4 v12, 0x0

    :goto_59
    if-eqz v12, :cond_ee

    :cond_ed
    const/16 v18, 0x1

    .line 351
    .end local v2    # "$i$f$isIsoControl":I
    :cond_ee
    if-nez v18, :cond_f0

    .line 352
    :cond_ef
    const v2, 0xfffd

    if-ne v1, v2, :cond_f1

    .line 354
    :cond_f0
    return v16

    .line 357
    :cond_f1
    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_f2

    const/16 v17, 0x1

    :cond_f2
    add-int v2, v28, v17

    .line 358
    .end local v28    # "charCount":I
    .local v2, "charCount":I
    nop

    .line 540
    .end local v1    # "c":I
    .end local v10    # "$i$a$-processUtf8CodePoints--ByteString$codePointIndexToCharIndex$1":I
    nop

    .line 542
    add-int/lit8 v1, v8, 0x1

    .end local v8    # "index$iv":I
    .local v1, "index$iv":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v8, v1

    move v1, v2

    move v2, v11

    .end local v11    # "j":I
    .local v1, "charCount":I
    .local v2, "j":I
    .restart local v8    # "index$iv":I
    :goto_5a
    goto/16 :goto_0

    .line 546
    .end local v9    # "b0$iv":B
    :cond_f3
    move/from16 v28, v1

    .line 359
    .end local v1    # "charCount":I
    .end local v3    # "beginIndex$iv":I
    .end local v5    # "endIndex$iv":I
    .end local v6    # "$this$processUtf8CodePoints$iv":[B
    .end local v7    # "$i$f$processUtf8CodePoints":I
    .end local v8    # "index$iv":I
    .restart local v28    # "charCount":I
    return v28
.end method

.method public static final commonBase64(Lokio/ByteString;)Ljava/lang/String;
    .locals 4
    .param p0, "$this$commonBase64"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonBase64"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    .local v0, "$i$f$commonBase64":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lokio/-Base64;->encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonBase64Url(Lokio/ByteString;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$commonBase64Url"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonBase64Url"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 55
    .local v0, "$i$f$commonBase64Url":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    invoke-static {}, Lokio/-Base64;->getBASE64_URL_SAFE()[B

    move-result-object v2

    invoke-static {v1, v2}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I
    .locals 11
    .param p0, "$this$commonCompareTo"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonCompareTo",
            "other"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 251
    .local v0, "$i$f$commonCompareTo":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    .line 252
    .local v1, "sizeA":I
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    .line 253
    .local v2, "sizeB":I
    const/4 v3, 0x0

    .line 254
    .local v3, "i":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 255
    .local v4, "size":I
    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 256
    invoke-virtual {p0, v3}, Lokio/ByteString;->getByte(I)B

    move-result v7

    .local v7, "$this$and$iv":B
    const/16 v8, 0xff

    .local v8, "other$iv":I
    const/4 v9, 0x0

    .line 365
    .local v9, "$i$f$and":I
    and-int/2addr v7, v8

    .line 256
    .end local v7    # "$this$and$iv":B
    .end local v8    # "other$iv":I
    .end local v9    # "$i$f$and":I
    nop

    .line 257
    .local v7, "byteA":I
    invoke-virtual {p1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    .local v8, "$this$and$iv":B
    const/16 v9, 0xff

    .local v9, "other$iv":I
    const/4 v10, 0x0

    .line 366
    .local v10, "$i$f$and":I
    and-int/2addr v8, v9

    .line 257
    .end local v8    # "$this$and$iv":B
    .end local v9    # "other$iv":I
    .end local v10    # "$i$f$and":I
    nop

    .line 258
    .local v8, "byteB":I
    if-ne v7, v8, :cond_0

    .line 259
    add-int/lit8 v3, v3, 0x1

    .line 260
    goto :goto_0

    .line 262
    :cond_0
    if-ge v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 264
    .end local v7    # "byteA":I
    .end local v8    # "byteB":I
    :cond_2
    if-ne v1, v2, :cond_3

    const/4 v5, 0x0

    return v5

    .line 265
    :cond_3
    if-ge v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    return v5
.end method

.method public static final commonCopyInto(Lokio/ByteString;I[BII)V
    .locals 3
    .param p0, "$this$commonCopyInto"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "target"    # [B
    .param p3, "targetOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonCopyInto",
            "offset",
            "target",
            "targetOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$commonCopyInto":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    add-int v2, p1, p4

    invoke-static {v1, p2, p3, p1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 184
    return-void
.end method

.method public static final commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonDecodeBase64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonDecodeBase64"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 287
    .local v0, "$i$f$commonDecodeBase64":I
    invoke-static {p0}, Lokio/-Base64;->decodeBase64ToArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 288
    .local v1, "decoded":[B
    if-eqz v1, :cond_0

    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static final commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonDecodeHex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonDecodeHex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 293
    .local v0, "$i$f$commonDecodeHex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 296
    .local v1, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    :goto_1
    if-ge v3, v4, :cond_1

    .line 297
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 298
    .local v5, "d1":I
    mul-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lokio/internal/-ByteString;->access$decodeHexDigit(C)I

    move-result v6

    .line 299
    .local v6, "d2":I
    add-int v7, v5, v6

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 296
    .end local v5    # "d1":I
    .end local v6    # "d2":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 301
    .end local v3    # "i":I
    :cond_1
    new-instance v2, Lokio/ByteString;

    invoke-direct {v2, v1}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 364
    .end local v1    # "result":[B
    :cond_2
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$a$-require--ByteString$commonDecodeHex$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "$i$a$-require--ByteString$commonDecodeHex$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .locals 3
    .param p0, "$this$commonEncodeUtf8"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonEncodeUtf8"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 280
    .local v0, "$i$f$commonEncodeUtf8":I
    new-instance v1, Lokio/ByteString;

    invoke-static {p0}, Lokio/_JvmPlatformKt;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    .line 281
    .local v1, "byteString":Lokio/ByteString;
    invoke-virtual {v1, p0}, Lokio/ByteString;->setUtf8$third_party_java_src_okio_okio_jvm(Ljava/lang/String;)V

    .line 282
    return-object v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 4
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonEndsWith",
            "suffix"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 196
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v3

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonEndsWith(Lokio/ByteString;[B)Z
    .locals 4
    .param p0, "$this$commonEndsWith"    # Lokio/ByteString;
    .param p1, "suffix"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonEndsWith",
            "suffix"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "suffix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$commonEndsWith":I
    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result v1

    array-length v2, p1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v1, p1, v2, v3}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "$this$commonEquals"    # Lokio/ByteString;
    .param p1, "other"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonEquals",
            "other"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 233
    .local v0, "$i$f$commonEquals":I
    nop

    .line 234
    const/4 v1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    instance-of v2, p1, Lokio/ByteString;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    array-length v4, v4

    if-ne v2, v4, :cond_1

    move-object v2, p1

    check-cast v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v3, v5}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_2
    const/4 v1, 0x0

    .line 233
    :goto_0
    return v1
.end method

.method public static final commonGetByte(Lokio/ByteString;I)B
    .locals 2
    .param p0, "$this$commonGetByte"    # Lokio/ByteString;
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonGetByte",
            "pos"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$commonGetByte":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    aget-byte v1, v1, p1

    return v1
.end method

.method public static final commonGetSize(Lokio/ByteString;)I
    .locals 2
    .param p0, "$this$commonGetSize"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonGetSize"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 146
    .local v0, "$i$f$commonGetSize":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static final commonHashCode(Lokio/ByteString;)I
    .locals 5
    .param p0, "$this$commonHashCode"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonHashCode"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    .local v0, "$i$f$commonHashCode":I
    invoke-virtual {p0}, Lokio/ByteString;->getHashCode$third_party_java_src_okio_okio_jvm()I

    move-result v1

    .line 243
    .local v1, "result":I
    if-eqz v1, :cond_0

    return v1

    .line 244
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$a$-also--ByteString$commonHashCode$1":I
    invoke-virtual {p0, v3}, Lokio/ByteString;->setHashCode$third_party_java_src_okio_okio_jvm(I)V

    .line 246
    nop

    .line 244
    .end local v3    # "it":I
    .end local v4    # "$i$a$-also--ByteString$commonHashCode$1":I
    return v2
.end method

.method public static final commonHex(Lokio/ByteString;)Ljava/lang/String;
    .locals 12
    .param p0, "$this$commonHex"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonHex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    .local v0, "$i$f$commonHex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 63
    .local v1, "result":[C
    const/4 v2, 0x0

    .line 64
    .local v2, "c":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v3, v5

    .line 65
    .local v6, "b":B
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "c":I
    .local v7, "c":I
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/4 v9, 0x4

    .local v9, "other$iv":I
    move v10, v6

    .local v10, "$this$shr$iv":B
    const/4 v11, 0x0

    .line 362
    .local v11, "$i$f$shr":I
    shr-int v9, v10, v9

    .line 65
    .end local v9    # "other$iv":I
    .end local v10    # "$this$shr$iv":B
    .end local v11    # "$i$f$shr":I
    and-int/lit8 v9, v9, 0xf

    aget-char v8, v8, v9

    aput-char v8, v1, v2

    .line 66
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "c":I
    .restart local v2    # "c":I
    invoke-static {}, Lokio/internal/-ByteString;->getHEX_DIGIT_CHARS()[C

    move-result-object v8

    const/16 v9, 0xf

    .restart local v9    # "other$iv":I
    .local v10, "$this$and$iv":B
    const/4 v11, 0x0

    .line 363
    .local v11, "$i$f$and":I
    and-int/2addr v9, v10

    .end local v9    # "other$iv":I
    .end local v10    # "$this$and$iv":B
    .end local v11    # "$i$f$and":I
    aget-char v8, v8, v9

    aput-char v8, v1, v7

    .line 64
    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {v1}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final commonIndexOf(Lokio/ByteString;[BI)I
    .locals 6
    .param p0, "$this$commonIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonIndexOf",
            "other",
            "fromIndex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$commonIndexOf":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    sub-int/2addr v1, v2

    .line 205
    .local v1, "limit":I
    const/4 v2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "i":I
    if-gt v3, v1, :cond_1

    .line 206
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    array-length v5, p1

    invoke-static {v4, v3, p1, v2, v5}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    return v3

    .line 205
    :cond_0
    if-eq v3, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    .end local v3    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static final commonInternalArray(Lokio/ByteString;)[B
    .locals 2
    .param p0, "$this$commonInternalArray"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonInternalArray"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$commonInternalArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    return-object v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;Lokio/ByteString;I)I
    .locals 2
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # Lokio/ByteString;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonLastIndexOf",
            "other",
            "fromIndex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lokio/ByteString;->lastIndexOf([BI)I

    move-result v1

    return v1
.end method

.method public static final commonLastIndexOf(Lokio/ByteString;[BI)I
    .locals 7
    .param p0, "$this$commonLastIndexOf"    # Lokio/ByteString;
    .param p1, "other"    # [B
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonLastIndexOf",
            "other",
            "fromIndex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$commonLastIndexOf":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 222
    .local v1, "fromIndex":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    array-length v2, v2

    array-length v3, p1

    sub-int/2addr v2, v3

    .line 223
    .local v2, "limit":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "i":I
    :goto_0
    const/4 v4, -0x1

    if-ge v4, v3, :cond_1

    .line 224
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v4, v3, p1, v5, v6}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    return v3

    .line 223
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_1
    return v4
.end method

.method public static final commonOf([B)Lokio/ByteString;
    .locals 4
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 269
    .local v0, "$i$f$commonOf":I
    new-instance v1, Lokio/ByteString;

    array-length v2, p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokio/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z
    .locals 2
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # Lokio/ByteString;
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonRangeEquals",
            "offset",
            "other",
            "otherOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    .local v0, "$i$f$commonRangeEquals":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    invoke-virtual {p2, p3, v1, p1, p4}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonRangeEquals(Lokio/ByteString;I[BII)Z
    .locals 2
    .param p0, "$this$commonRangeEquals"    # Lokio/ByteString;
    .param p1, "offset"    # I
    .param p2, "other"    # [B
    .param p3, "otherOffset"    # I
    .param p4, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonRangeEquals",
            "offset",
            "other",
            "otherOffset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 170
    .local v0, "$i$f$commonRangeEquals":I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    .line 171
    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lokio/-SegmentedByteString;->arrayRangeEquals([BI[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 169
    :goto_0
    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z
    .locals 3
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonStartsWith",
            "prefix"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 188
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(ILokio/ByteString;II)Z

    move-result v1

    return v1
.end method

.method public static final commonStartsWith(Lokio/ByteString;[B)Z
    .locals 3
    .param p0, "$this$commonStartsWith"    # Lokio/ByteString;
    .param p1, "prefix"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$commonStartsWith",
            "prefix"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 192
    .local v0, "$i$f$commonStartsWith":I
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v1, p1, v1, v2}, Lokio/ByteString;->rangeEquals(I[BII)Z

    move-result v1

    return v1
.end method

.method public static final commonSubstring(Lokio/ByteString;II)Lokio/ByteString;
    .locals 6
    .param p0, "$this$commonSubstring"    # Lokio/ByteString;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonSubstring",
            "beginIndex",
            "endIndex"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 129
    .local v0, "$i$f$commonSubstring":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v1

    .line 130
    .local v1, "endIndex":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_6

    .line 131
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    array-length v4, v4

    if-gt v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 133
    sub-int v4, v1, p1

    .line 134
    .local v4, "subLen":I
    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 136
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_3

    .line 137
    return-object p0

    .line 139
    :cond_3
    new-instance v2, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v3

    invoke-static {v3, p1, v1}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    return-object v2

    .line 364
    :cond_4
    const/4 v2, 0x0

    .line 134
    .local v2, "$i$a$-require--ByteString$commonSubstring$3":I
    nop

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$3":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endIndex < beginIndex"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 364
    .end local v4    # "subLen":I
    :cond_5
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$a$-require--ByteString$commonSubstring$2":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v3

    array-length v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endIndex > length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$2":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_6
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$a$-require--ByteString$commonSubstring$1":I
    nop

    .end local v2    # "$i$a$-require--ByteString$commonSubstring$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "beginIndex < 0"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonToAsciiLowercase"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonToAsciiLowercase"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 74
    .local v0, "$i$f$commonToAsciiLowercase":I
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 76
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 77
    .local v2, "c":B
    const/16 v3, 0x41

    if-lt v2, v3, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 83
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "copyOf(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, 0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 85
    :goto_1
    array-length v1, v5

    if-ge v6, v1, :cond_3

    .line 86
    aget-byte v2, v5, v6

    .line 87
    if-lt v2, v3, :cond_2

    if-le v2, v4, :cond_1

    goto :goto_2

    .line 91
    :cond_1
    add-int/lit8 v1, v2, 0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 89
    goto :goto_1

    .line 94
    :cond_3
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 78
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 79
    goto :goto_0

    .line 96
    .end local v2    # "c":B
    :cond_5
    return-object p0
.end method

.method public static final commonToAsciiUppercase(Lokio/ByteString;)Lokio/ByteString;
    .locals 8
    .param p0, "$this$commonToAsciiUppercase"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonToAsciiUppercase"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    .local v0, "$i$f$commonToAsciiUppercase":I
    const/4 v1, 0x0

    .line 103
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 104
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    aget-byte v2, v2, v1

    .line 105
    .local v2, "c":B
    const/16 v3, 0x61

    if-lt v2, v3, :cond_4

    const/16 v4, 0x7a

    if-le v2, v4, :cond_0

    goto :goto_3

    .line 111
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    const-string v6, "copyOf(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .local v5, "lowercase":[B
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v2, -0x20

    int-to-byte v7, v7

    aput-byte v7, v5, v1

    .line 113
    :goto_1
    array-length v1, v5

    if-ge v6, v1, :cond_3

    .line 114
    aget-byte v2, v5, v6

    .line 115
    if-lt v2, v3, :cond_2

    if-le v2, v4, :cond_1

    goto :goto_2

    .line 119
    :cond_1
    add-int/lit8 v1, v2, -0x20

    int-to-byte v1, v1

    aput-byte v1, v5, v6

    .line 120
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 116
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 117
    goto :goto_1

    .line 122
    :cond_3
    new-instance v1, Lokio/ByteString;

    invoke-direct {v1, v5}, Lokio/ByteString;-><init>([B)V

    return-object v1

    .line 106
    .end local v5    # "lowercase":[B
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 107
    goto :goto_0

    .line 124
    .end local v2    # "c":B
    :cond_5
    return-object p0
.end method

.method public static final commonToByteArray(Lokio/ByteString;)[B
    .locals 3
    .param p0, "$this$commonToByteArray"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonToByteArray"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    .local v0, "$i$f$commonToByteArray":I
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final commonToByteString([BII)Lokio/ByteString;
    .locals 9
    .param p0, "$this$commonToByteString"    # [B
    .param p1, "offset"    # I
    .param p2, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonToByteString",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 273
    .local v0, "$i$f$commonToByteString":I
    invoke-static {p0, p2}, Lokio/-SegmentedByteString;->resolveDefaultParameter([BI)I

    move-result v1

    .line 274
    .local v1, "byteCount":I
    array-length v2, p0

    int-to-long v3, v2

    int-to-long v5, p1

    int-to-long v7, v1

    invoke-static/range {v3 .. v8}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 275
    new-instance v2, Lokio/ByteString;

    add-int v3, p1, v1

    invoke-static {p0, p1, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lokio/ByteString;-><init>([B)V

    return-object v2
.end method

.method public static final commonToString(Lokio/ByteString;)Ljava/lang/String;
    .locals 22
    .param p0, "$this$commonToString"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonToString"
        }
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 320
    .local v0, "$i$f$commonToString":I
    invoke-virtual {v1}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "[size=0]"

    return-object v2

    .line 322
    :cond_1
    invoke-virtual {v1}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    const/16 v5, 0x40

    invoke-static {v2, v5}, Lokio/internal/-ByteString;->access$codePointIndexToCharIndex([BI)I

    move-result v2

    .line 323
    .local v2, "i":I
    const/4 v6, -0x1

    const-string/jumbo v7, "\u2026]"

    const-string v8, "[size="

    const-string v9, "]"

    if-ne v2, v6, :cond_8

    .line 324
    invoke-virtual {v1}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v6

    array-length v6, v6

    if-gt v6, v5, :cond_2

    .line 325
    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 327
    :cond_2
    invoke-virtual {v1}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    .local v6, "beginIndex$iv":I
    const/16 v9, 0x40

    .local v9, "endIndex$iv":I
    move-object/from16 v10, p0

    .local v10, "$this$commonSubstring$iv":Lokio/ByteString;
    const/4 v11, 0x0

    .line 367
    .local v11, "$i$f$commonSubstring":I
    invoke-static {v10, v9}, Lokio/-SegmentedByteString;->resolveDefaultParameter(Lokio/ByteString;I)I

    move-result v12

    .line 368
    .local v12, "endIndex$iv":I
    nop

    .line 370
    invoke-virtual {v10}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v13

    array-length v13, v13

    if-gt v12, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_7

    .line 372
    sub-int v13, v12, v6

    .line 373
    .local v13, "subLen$iv":I
    if-ltz v13, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    .line 375
    invoke-virtual {v10}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v3

    array-length v3, v3

    if-ne v12, v3, :cond_5

    .line 376
    goto :goto_3

    .line 378
    :cond_5
    new-instance v3, Lokio/ByteString;

    invoke-virtual {v10}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    invoke-static {v4, v6, v12}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lokio/ByteString;-><init>([B)V

    move-object v10, v3

    .line 327
    .end local v6    # "beginIndex$iv":I
    .end local v9    # "endIndex$iv":I
    .end local v10    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v11    # "$i$f$commonSubstring":I
    .end local v12    # "endIndex$iv":I
    .end local v13    # "subLen$iv":I
    :goto_3
    invoke-virtual {v10}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 324
    :goto_4
    return-object v3

    .line 369
    .restart local v6    # "beginIndex$iv":I
    .restart local v9    # "endIndex$iv":I
    .restart local v10    # "$this$commonSubstring$iv":Lokio/ByteString;
    .restart local v11    # "$i$f$commonSubstring":I
    .restart local v12    # "endIndex$iv":I
    .restart local v13    # "subLen$iv":I
    :cond_6
    const/4 v3, 0x0

    .line 373
    .local v3, "$i$a$-require--ByteString$commonSubstring$3$iv":I
    nop

    .end local v3    # "$i$a$-require--ByteString$commonSubstring$3$iv":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "endIndex < beginIndex"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    .end local v13    # "subLen$iv":I
    :cond_7
    const/4 v3, 0x0

    .line 370
    .local v3, "$i$a$-require--ByteString$commonSubstring$2$iv":I
    invoke-virtual {v10}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v4

    array-length v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endIndex > length("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "$i$a$-require--ByteString$commonSubstring$2$iv":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    .end local v6    # "beginIndex$iv":I
    .end local v9    # "endIndex$iv":I
    .end local v10    # "$this$commonSubstring$iv":Lokio/ByteString;
    .end local v11    # "$i$f$commonSubstring":I
    .end local v12    # "endIndex$iv":I
    :cond_8
    invoke-virtual {v1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v4, "substring(...)"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v11, "\\"

    const-string v12, "\\\\"

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 334
    const/16 v20, 0x4

    const/16 v21, 0x0

    const-string v17, "\n"

    const-string v18, "\\n"

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 335
    const-string v11, "\r"

    const-string v12, "\\r"

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 332
    nop

    .line 336
    .local v4, "safeText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 337
    invoke-virtual {v1}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v5

    array-length v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 339
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 336
    :goto_5
    return-object v5
.end method

.method public static final commonUtf8(Lokio/ByteString;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$commonUtf8"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$commonUtf8"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 42
    .local v0, "$i$f$commonUtf8":I
    invoke-virtual {p0}, Lokio/ByteString;->getUtf8$third_party_java_src_okio_okio_jvm()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0}, Lokio/ByteString;->internalArray$third_party_java_src_okio_okio_jvm()[B

    move-result-object v2

    invoke-static {v2}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Lokio/ByteString;->setUtf8$third_party_java_src_okio_okio_jvm(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-object v1
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .locals 1
    .param p0, "$this$commonWrite"    # Lokio/ByteString;
    .param p1, "buffer"    # Lokio/Buffer;
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$commonWrite",
            "buffer",
            "offset",
            "byteCount"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lokio/ByteString;->getData$third_party_java_src_okio_okio_jvm()[B

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    .line 307
    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 3
    .param p0, "c"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 310
    nop

    .line 311
    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p0, -0x30

    goto :goto_3

    .line 312
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x67

    if-ge p0, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 313
    :cond_3
    const/16 v0, 0x41

    if-gt v0, p0, :cond_4

    const/16 v0, 0x47

    if-ge p0, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    .line 310
    :goto_3
    return v0

    .line 314
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1

    .line 57
    sget-object v0, Lokio/internal/-ByteString;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
