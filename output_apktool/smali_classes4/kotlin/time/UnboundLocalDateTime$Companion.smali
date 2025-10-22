.class public final Lkotlin/time/UnboundLocalDateTime$Companion;
.super Ljava/lang/Object;
.source "Instant.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/UnboundLocalDateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime$Companion;",
        "",
        "<init>",
        "()V",
        "fromInstant",
        "Lkotlin/time/UnboundLocalDateTime;",
        "instant",
        "Lkotlin/time/Instant;",
        "kotlin_stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInstant(Lkotlin/time/Instant;)Lkotlin/time/UnboundLocalDateTime;
    .locals 35
    .param p1, "instant"    # Lkotlin/time/Instant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instant"
        }
    .end annotation

    const-string v0, "instant"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1}, Lkotlin/time/Instant;->getEpochSeconds()J

    move-result-wide v2

    .line 483
    .local v2, "localSecond":J
    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, -0x1

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-gez v0, :cond_0

    mul-long v8, v6, v4

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    add-long/2addr v6, v10

    .line 484
    .local v6, "epochDays":J
    :cond_0
    rem-long v8, v2, v4

    xor-long v14, v8, v4

    move-wide/from16 v16, v4

    neg-long v4, v8

    or-long/2addr v4, v8

    and-long/2addr v4, v14

    const/16 v0, 0x3f

    shr-long/2addr v4, v0

    and-long v4, v4, v16

    add-long/2addr v8, v4

    long-to-int v0, v8

    .line 485
    .local v0, "secsOfDay":I
    const/4 v4, 0x0

    .line 486
    .local v4, "year":I
    const/4 v5, 0x0

    .line 487
    .local v5, "month":I
    const/4 v8, 0x0

    .line 489
    .local v8, "day":I
    move-object/from16 v9, p0

    check-cast v9, Lkotlin/time/UnboundLocalDateTime$Companion;

    .local v9, "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    const/4 v14, 0x0

    .line 490
    .local v14, "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    const v15, 0xafaa8

    move-wide/from16 v16, v10

    int-to-long v10, v15

    add-long/2addr v10, v6

    .line 492
    .local v10, "zeroDay":J
    const/16 v15, 0x3c

    move-wide/from16 v18, v12

    int-to-long v12, v15

    sub-long/2addr v10, v12

    .line 494
    const-wide/16 v12, 0x0

    .line 495
    .local v12, "adjust":J
    cmp-long v20, v10, v18

    if-gez v20, :cond_1

    .line 496
    const-wide/16 v20, 0x1

    add-long v22, v10, v20

    move-wide/from16 v25, v2

    const v15, 0x23ab1

    .end local v2    # "localSecond":J
    .local v25, "localSecond":J
    int-to-long v1, v15

    div-long v22, v22, v1

    move-wide/from16 v27, v1

    sub-long v1, v22, v20

    .line 497
    .local v1, "adjustCycles":J
    move v15, v4

    move/from16 v20, v5

    const/16 v3, 0x190

    .end local v4    # "year":I
    .end local v5    # "month":I
    .local v15, "year":I
    .local v20, "month":I
    int-to-long v4, v3

    mul-long v12, v1, v4

    .line 498
    neg-long v4, v1

    mul-long v4, v4, v27

    add-long/2addr v10, v4

    goto :goto_0

    .line 495
    .end local v1    # "adjustCycles":J
    .end local v15    # "year":I
    .end local v20    # "month":I
    .end local v25    # "localSecond":J
    .restart local v2    # "localSecond":J
    .restart local v4    # "year":I
    .restart local v5    # "month":I
    :cond_1
    move-wide/from16 v25, v2

    move v15, v4

    move/from16 v20, v5

    const/16 v3, 0x190

    .line 500
    .end local v2    # "localSecond":J
    .end local v4    # "year":I
    .end local v5    # "month":I
    .restart local v15    # "year":I
    .restart local v20    # "month":I
    .restart local v25    # "localSecond":J
    :goto_0
    int-to-long v1, v3

    mul-long v3, v1, v10

    const/16 v5, 0x24f

    move-wide/from16 v21, v1

    int-to-long v1, v5

    add-long/2addr v3, v1

    const v1, 0x23ab1

    int-to-long v1, v1

    div-long/2addr v3, v1

    .line 501
    .local v3, "yearEst":J
    const/16 v1, 0x16d

    int-to-long v1, v1

    mul-long v23, v1, v3

    const/4 v5, 0x4

    move-wide/from16 v27, v1

    int-to-long v1, v5

    div-long v29, v3, v1

    add-long v23, v23, v29

    const/16 v5, 0x64

    move-wide/from16 v29, v1

    int-to-long v1, v5

    div-long v31, v3, v1

    sub-long v23, v23, v31

    div-long v31, v3, v21

    add-long v23, v23, v31

    sub-long v23, v10, v23

    .line 502
    .local v23, "doyEst":J
    cmp-long v5, v23, v18

    if-gez v5, :cond_2

    .line 503
    add-long v3, v3, v16

    .line 504
    mul-long v16, v27, v3

    div-long v18, v3, v29

    add-long v16, v16, v18

    div-long v1, v3, v1

    sub-long v16, v16, v1

    div-long v1, v3, v21

    add-long v16, v16, v1

    sub-long v23, v10, v16

    move-wide/from16 v1, v23

    goto :goto_1

    .line 502
    :cond_2
    move-wide/from16 v1, v23

    .line 506
    .end local v23    # "doyEst":J
    .local v1, "doyEst":J
    :goto_1
    add-long/2addr v3, v12

    .line 508
    long-to-int v5, v1

    .line 511
    .local v5, "marchDoy0":I
    mul-int/lit8 v16, v5, 0x5

    move-wide/from16 v17, v1

    .end local v1    # "doyEst":J
    .local v17, "doyEst":J
    add-int/lit8 v1, v16, 0x2

    div-int/lit16 v1, v1, 0x99

    .line 512
    .local v1, "marchMonth0":I
    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v29, v2, 0x1

    .line 513
    .end local v20    # "month":I
    .local v29, "month":I
    mul-int/lit16 v2, v1, 0x132

    add-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0xa

    sub-int v2, v5, v2

    add-int/lit8 v30, v2, 0x1

    .line 514
    .end local v8    # "day":I
    .local v30, "day":I
    div-int/lit8 v2, v1, 0xa

    move v8, v1

    .end local v1    # "marchMonth0":I
    .local v8, "marchMonth0":I
    int-to-long v1, v2

    add-long/2addr v1, v3

    long-to-int v2, v1

    .line 515
    .end local v15    # "year":I
    .local v2, "year":I
    nop

    .line 489
    .end local v3    # "yearEst":J
    .end local v5    # "marchDoy0":I
    .end local v8    # "marchMonth0":I
    .end local v9    # "$this$fromInstant_u24lambda_u240":Lkotlin/time/UnboundLocalDateTime$Companion;
    .end local v10    # "zeroDay":J
    .end local v12    # "adjust":J
    .end local v14    # "$i$a$-run-UnboundLocalDateTime$Companion$fromInstant$1":I
    .end local v17    # "doyEst":J
    nop

    .line 516
    div-int/lit16 v1, v0, 0xe10

    .line 517
    .local v1, "hours":I
    mul-int/lit16 v3, v1, 0xe10

    sub-int v3, v0, v3

    .line 518
    .local v3, "secondWithoutHours":I
    div-int/lit8 v32, v3, 0x3c

    .line 519
    .local v32, "minutes":I
    mul-int/lit8 v4, v32, 0x3c

    sub-int v33, v3, v4

    .line 520
    .local v33, "second":I
    new-instance v27, Lkotlin/time/UnboundLocalDateTime;

    invoke-virtual/range {p1 .. p1}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    move-result v34

    move/from16 v31, v1

    move/from16 v28, v2

    .end local v1    # "hours":I
    .end local v2    # "year":I
    .local v28, "year":I
    .local v31, "hours":I
    invoke-direct/range {v27 .. v34}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    return-object v27
.end method
