.class public final Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;
.super Landroidx/window/embedding/EmbeddingBounds$Dimension;
.source "EmbeddingBounds.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/EmbeddingBounds$Dimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ratio"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmbeddingBounds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmbeddingBounds.kt\nandroidx/window/embedding/EmbeddingBounds$Dimension$Ratio\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,442:1\n1#2:443\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0080\u0002\u00a2\u0006\u0002\u0008\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;",
        "Landroidx/window/embedding/EmbeddingBounds$Dimension;",
        "value",
        "",
        "<init>",
        "(F)V",
        "getValue$window_release",
        "()F",
        "times",
        "",
        "dimen",
        "times$window_release",
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
.field private final value:F


# direct methods
.method public constructor <init>(F)V
    .locals 5
    .param p1, "value"    # F

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimension in ratio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/window/embedding/EmbeddingBounds$Dimension;-><init>(Ljava/lang/String;)V

    .line 268
    iput p1, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    .line 271
    nop

    .line 272
    iget v0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    iget v0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 273
    nop

    .line 267
    return-void

    .line 443
    :cond_1
    const/4 v0, 0x0

    .line 272
    .local v0, "$i$a$-require-EmbeddingBounds$Dimension$Ratio$1":I
    nop

    .end local v0    # "$i$a$-require-EmbeddingBounds$Dimension$Ratio$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be in range (0.0, 1.0]"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getValue$window_release()F
    .locals 1

    .line 268
    iget v0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    return v0
.end method

.method public final times$window_release(I)I
    .locals 2
    .param p1, "dimen"    # I

    .line 275
    iget v0, p0, Landroidx/window/embedding/EmbeddingBounds$Dimension$Ratio;->value:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method
