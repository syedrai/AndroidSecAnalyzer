.class public final Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;
.super Landroidx/window/embedding/DividerAttributes$DragRange;
.source "DividerAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/DividerAttributes$DragRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SplitRatioDragRange"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0013\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;",
        "Landroidx/window/embedding/DividerAttributes$DragRange;",
        "minRatio",
        "",
        "maxRatio",
        "<init>",
        "(FF)V",
        "getMinRatio",
        "()F",
        "getMaxRatio",
        "toString",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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


# instance fields
.field private final maxRatio:F

.field private final minRatio:F


# direct methods
.method public constructor <init>(FF)V
    .locals 7
    .param p1, "minRatio"    # F
    .param p2, "maxRatio"    # F

    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/window/embedding/DividerAttributes$DragRange;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 308
    iput p1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    .line 310
    iput p2, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    .line 313
    nop

    .line 314
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_2

    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    float-to-double v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v0, v4

    if-gez v6, :cond_2

    .line 317
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    float-to-double v0, v0

    cmpg-double v6, v0, v2

    if-lez v6, :cond_1

    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    float-to-double v0, v0

    cmpl-double v2, v0, v4

    if-gez v2, :cond_1

    .line 320
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 325
    nop

    .line 307
    return-void

    .line 321
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 322
    nop

    .line 321
    const-string v1, "minRatio must be less than or equal to maxRatio"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxRatio must be in the interval (0.0, 1.0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minRatio must be in the interval (0.0, 1.0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 330
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 331
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 332
    :cond_1
    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    iget v3, v3, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    move-object v3, p1

    check-cast v3, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;

    iget v3, v3, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final getMaxRatio()F
    .locals 1

    .line 310
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    return v0
.end method

.method public final getMinRatio()F
    .locals 1

    .line 308
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 335
    iget v0, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplitRatioDragRange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->minRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/window/embedding/DividerAttributes$DragRange$SplitRatioDragRange;->maxRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
