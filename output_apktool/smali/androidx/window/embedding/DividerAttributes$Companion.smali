.class public final Landroidx/window/embedding/DividerAttributes$Companion;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J=\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0015J-\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u0010\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u001d\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0005H\u0002J\u000c\u0010\u001e\u001a\u00020\u0005*\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$Companion;",
        "",
        "<init>",
        "()V",
        "WIDTH_SYSTEM_DEFAULT",
        "",
        "NO_DIVIDER",
        "Landroidx/window/embedding/DividerAttributes;",
        "TYPE_VALUE_FIXED",
        "TYPE_VALUE_DRAGGABLE",
        "DRAG_RANGE_VALUE_UNSPECIFIED",
        "",
        "COLOR_SYSTEM_DEFAULT",
        "createDividerAttributes",
        "type",
        "widthDp",
        "color",
        "dragRangeMinRatio",
        "dragRangeMaxRatio",
        "isDraggingToFullscreenAllowed",
        "",
        "createDividerAttributes$window_release",
        "validateXmlDividerAttributes",
        "",
        "hasDragRangeMinRatio",
        "hasDragRangeMaxRatio",
        "hasIsDraggingToFullscreenAllowed",
        "validateXmlDividerAttributes$window_release",
        "validateWidth",
        "validateColor",
        "alpha",
        "window_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/window/embedding/DividerAttributes$Companion;
    .param p1, "color"    # I

    .line 353
    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateColor(I)V

    return-void
.end method

.method public static final synthetic access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0
    .param p0, "$this"    # Landroidx/window/embedding/DividerAttributes$Companion;
    .param p1, "widthDp"    # I

    .line 353
    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateWidth(I)V

    return-void
.end method

.method private final alpha(I)I
    .locals 1
    .param p1, "$this$alpha"    # I

    .line 468
    ushr-int/lit8 v0, p1, 0x18

    return v0
.end method

.method private final validateColor(I)V
    .locals 5
    .param p1, "color"    # I

    .line 458
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$Companion;

    .local v0, "$this$validateColor_u24lambda_u243":Landroidx/window/embedding/DividerAttributes$Companion;
    const/4 v1, 0x0

    .line 459
    .local v1, "$i$a$-run-DividerAttributes$Companion$validateColor$1":I
    invoke-direct {v0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 462
    nop

    .line 458
    .end local v0    # "$this$validateColor_u24lambda_u243":Landroidx/window/embedding/DividerAttributes$Companion;
    .end local v1    # "$i$a$-run-DividerAttributes$Companion$validateColor$1":I
    nop

    .line 462
    return-void

    .line 459
    .restart local v0    # "$this$validateColor_u24lambda_u243":Landroidx/window/embedding/DividerAttributes$Companion;
    .restart local v1    # "$i$a$-run-DividerAttributes$Companion$validateColor$1":I
    :cond_1
    const/4 v2, 0x0

    .line 460
    .local v2, "$i$a$-require-DividerAttributes$Companion$validateColor$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Divider color must be opaque. Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .end local v2    # "$i$a$-require-DividerAttributes$Companion$validateColor$1$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private final validateWidth(I)V
    .locals 5
    .param p1, "widthDp"    # I

    .line 452
    move-object v0, p0

    check-cast v0, Landroidx/window/embedding/DividerAttributes$Companion;

    .local v0, "$this$validateWidth_u24lambda_u241":Landroidx/window/embedding/DividerAttributes$Companion;
    const/4 v1, 0x0

    .line 453
    .local v1, "$i$a$-run-DividerAttributes$Companion$validateWidth$1":I
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 456
    nop

    .line 452
    .end local v0    # "$this$validateWidth_u24lambda_u241":Landroidx/window/embedding/DividerAttributes$Companion;
    .end local v1    # "$i$a$-run-DividerAttributes$Companion$validateWidth$1":I
    nop

    .line 456
    return-void

    .line 453
    .restart local v0    # "$this$validateWidth_u24lambda_u241":Landroidx/window/embedding/DividerAttributes$Companion;
    .restart local v1    # "$i$a$-run-DividerAttributes$Companion$validateWidth$1":I
    :cond_2
    const/4 v2, 0x0

    .line 454
    .local v2, "$i$a$-require-DividerAttributes$Companion$validateWidth$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "widthDp must be greater than or equal to 0 or WIDTH_SYSTEM_DEFAULT. Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .end local v2    # "$i$a$-require-DividerAttributes$Companion$validateWidth$1$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final createDividerAttributes$window_release(IIIFFZ)Landroidx/window/embedding/DividerAttributes;
    .locals 5
    .param p1, "type"    # I
    .param p2, "widthDp"    # I
    .param p3, "color"    # I
    .param p4, "dragRangeMinRatio"    # F
    .param p5, "dragRangeMaxRatio"    # F
    .param p6, "isDraggingToFullscreenAllowed"    # Z

    .line 399
    packed-switch p1, :pswitch_data_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unknown divider type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_0
    new-instance v0, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;-><init>()V

    .line 405
    invoke-virtual {v0, p2}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setWidthDp(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 406
    invoke-virtual {v0, p3}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setColor(I)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p6}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setDraggingToFullscreenAllowed(Z)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    move-result-object v0

    .line 403
    nop

    .line 408
    .local v0, "builder":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    nop

    .line 409
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v4, p4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 410
    cmpg-float v3, p5, v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 415
    :cond_2
    nop

    .line 416
    new-instance v1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    invoke-direct {v1, p4, p5}, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;-><init>(FF)V

    check-cast v1, Landroidx/window/embedding/DividerAttributes$DragRange;

    .line 415
    invoke-virtual {v0, v1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    goto :goto_3

    .line 412
    :cond_3
    :goto_2
    sget-object v1, Landroidx/window/embedding/DividerAttributes$DragRange;->DRAG_RANGE_SYSTEM_DEFAULT:Landroidx/window/embedding/DividerAttributes$DragRange;

    invoke-virtual {v0, v1}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->setDragRange(Landroidx/window/embedding/DividerAttributes$DragRange;)Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;

    .line 419
    :goto_3
    invoke-virtual {v0}, Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;->build()Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes;

    move-result-object v0

    .end local v0    # "builder":Landroidx/window/embedding/DividerAttributes$DraggableDividerAttributes$Builder;
    check-cast v0, Landroidx/window/embedding/DividerAttributes;

    goto :goto_4

    .line 401
    :pswitch_1
    new-instance v0, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setWidthDp(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->setColor(I)Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes$Builder;->build()Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    move-result-object v0

    check-cast v0, Landroidx/window/embedding/DividerAttributes;

    .line 399
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final validateXmlDividerAttributes$window_release(IZZZ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "hasDragRangeMinRatio"    # Z
    .param p3, "hasDragRangeMaxRatio"    # Z
    .param p4, "hasIsDraggingToFullscreenAllowed"    # Z

    .line 432
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    if-nez p2, :cond_3

    .line 440
    if-nez p3, :cond_2

    .line 445
    if-nez p4, :cond_1

    .line 450
    return-void

    .line 446
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 447
    nop

    .line 446
    const-string v1, "Fixed divider does not allow attribute isDraggingToFullscreenAllowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 442
    nop

    .line 441
    const-string v1, "Fixed divider does not allow attribute dragRangeMaxRatio!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 437
    nop

    .line 436
    const-string v1, "Fixed divider does not allow attribute dragRangeMinRatio!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
