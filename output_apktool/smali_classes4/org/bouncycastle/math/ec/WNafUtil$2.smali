.class Lorg/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$includeNegated:Z

.field final synthetic val$minWidth:I

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(IZLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$minWidth",
            "val$includeNegated",
            "val$p",
            "val$c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 415
    iput p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 2
    .param p1, "existingWNaf"    # Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "width"    # I
    .param p3, "reqPreCompLen"    # I
    .param p4, "includeNegated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "existingWNaf",
            "width",
            "reqPreCompLen",
            "includeNegated"
        }
    .end annotation

    .line 576
    if-eqz p1, :cond_1

    .line 577
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 578
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 579
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0
.end method

.method private checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z
    .locals 1
    .param p1, "table"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "reqLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "reqLen"
        }
    .end annotation

    .line 584
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 18
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 420
    .local v2, "existingWNaf":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_0
    iget v3, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 421
    .local v3, "width":I
    add-int/lit8 v6, v3, -0x2

    const/4 v7, 0x1

    shl-int v6, v7, v6

    .line 423
    .local v6, "reqPreCompLen":I
    iget-boolean v8, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {v0, v2, v3, v6, v8}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 425
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    .line 426
    return-object v2

    .line 429
    :cond_1
    new-instance v8, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 431
    .local v8, "result":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v9, 0x0

    .local v9, "preComp":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v10, 0x0

    .line 432
    .local v10, "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v11, 0x0

    .line 434
    .local v11, "twiceP":Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v2, :cond_2

    .line 436
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v12

    .line 437
    .local v12, "promotionCountdown":I
    invoke-virtual {v8, v12}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 439
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v13

    .line 440
    .local v13, "confWidth":I
    invoke-virtual {v8, v13}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    .line 442
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 443
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 444
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 447
    .end local v12    # "promotionCountdown":I
    .end local v13    # "confWidth":I
    :cond_2
    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 448
    add-int/lit8 v4, v3, -0x2

    shl-int v4, v7, v4

    .line 450
    .end local v6    # "reqPreCompLen":I
    .local v4, "reqPreCompLen":I
    const/4 v6, 0x0

    .line 451
    .local v6, "iniPreCompLen":I
    if-nez v9, :cond_3

    .line 453
    invoke-static {}, Lorg/bouncycastle/math/ec/WNafUtil;->-$$Nest$sfgetEMPTY_POINTS()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_1

    .line 457
    :cond_3
    array-length v6, v9

    .line 460
    :goto_1
    if-ge v6, v4, :cond_9

    .line 462
    invoke-static {v9, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 464
    const/4 v12, 0x0

    if-ne v4, v7, :cond_4

    .line 466
    iget-object v5, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v12

    goto/16 :goto_4

    .line 470
    :cond_4
    move v13, v6

    .line 471
    .local v13, "curPreCompLen":I
    if-nez v13, :cond_5

    .line 473
    iget-object v14, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    aput-object v14, v9, v12

    .line 474
    const/4 v13, 0x1

    .line 477
    :cond_5
    const/4 v14, 0x0

    .line 479
    .local v14, "iso":Lorg/bouncycastle/math/ec/ECFieldElement;
    if-ne v4, v5, :cond_6

    .line 481
    iget-object v5, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v7

    goto/16 :goto_3

    .line 485
    :cond_6
    move-object v5, v11

    .local v5, "isoTwiceP":Lorg/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v7, v13, -0x1

    aget-object v7, v9, v7

    .line 486
    .local v7, "last":Lorg/bouncycastle/math/ec/ECPoint;
    if-nez v5, :cond_7

    .line 488
    aget-object v15, v9, v12

    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 489
    move-object v11, v5

    .line 501
    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v15

    if-nez v15, :cond_7

    iget-object v15, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v15}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v15

    const/16 v12, 0x40

    if-lt v15, v12, :cond_7

    .line 503
    iget-object v12, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 509
    :pswitch_0
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 510
    iget-object v12, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 511
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 510
    invoke-virtual {v12, v15, v1}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 513
    invoke-virtual {v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "iso2":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v14}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 514
    .local v12, "iso3":Lorg/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v1}, Lorg/bouncycastle/math/ec/ECPoint;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/bouncycastle/math/ec/ECPoint;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 516
    if-nez v6, :cond_7

    .line 518
    const/16 v16, 0x0

    aput-object v7, v9, v16

    .line 526
    .end local v1    # "iso2":Lorg/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "iso3":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_7
    :goto_2
    if-ge v13, v4, :cond_8

    .line 532
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "curPreCompLen":I
    .local v1, "curPreCompLen":I
    invoke-virtual {v7, v5}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    move-object v7, v12

    aput-object v12, v9, v13

    move v13, v1

    goto :goto_2

    .line 539
    .end local v1    # "curPreCompLen":I
    .end local v5    # "isoTwiceP":Lorg/bouncycastle/math/ec/ECPoint;
    .end local v7    # "last":Lorg/bouncycastle/math/ec/ECPoint;
    .restart local v13    # "curPreCompLen":I
    :cond_8
    :goto_3
    iget-object v1, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    sub-int v5, v4, v6

    invoke-virtual {v1, v9, v6, v5, v14}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 543
    .end local v13    # "curPreCompLen":I
    .end local v14    # "iso":Lorg/bouncycastle/math/ec/ECFieldElement;
    :cond_9
    :goto_4
    iget-boolean v1, v0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v1, :cond_c

    .line 546
    if-nez v10, :cond_a

    .line 548
    const/4 v1, 0x0

    .line 549
    .local v1, "pos":I
    new-array v5, v4, [Lorg/bouncycastle/math/ec/ECPoint;

    move-object v10, v5

    .end local v10    # "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    .local v5, "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    goto :goto_5

    .line 553
    .end local v1    # "pos":I
    .end local v5    # "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    .restart local v10    # "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_a
    array-length v1, v10

    .line 554
    .restart local v1    # "pos":I
    if-ge v1, v4, :cond_b

    .line 556
    invoke-static {v10, v4}, Lorg/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v10, v5

    .line 560
    :cond_b
    :goto_5
    if-ge v1, v4, :cond_c

    .line 562
    aget-object v5, v9, v1

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v10, v1

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 567
    .end local v1    # "pos":I
    :cond_c
    invoke-virtual {v8, v9}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 568
    invoke-virtual {v8, v10}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 569
    invoke-virtual {v8, v11}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 570
    invoke-virtual {v8, v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 571
    return-object v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
