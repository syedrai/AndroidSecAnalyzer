.class public final Landroidx/window/layout/HardwareFoldingFeature$Companion;
.super Ljava/lang/Object;
.source "HardwareFoldingFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/HardwareFoldingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHardwareFoldingFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HardwareFoldingFeature.kt\nandroidx/window/layout/HardwareFoldingFeature$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/window/layout/HardwareFoldingFeature$Companion;",
        "",
        "<init>",
        "()V",
        "validateFeatureBounds",
        "",
        "bounds",
        "Landroidx/window/core/Bounds;",
        "validateFeatureBounds$window_release",
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

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/HardwareFoldingFeature$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final validateFeatureBounds$window_release(Landroidx/window/core/Bounds;)V
    .locals 3
    .param p1, "bounds"    # Landroidx/window/core/Bounds;

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getLeft()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/window/core/Bounds;->getTop()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_4

    .line 101
    return-void

    .line 98
    :cond_4
    const/4 v0, 0x0

    .line 99
    .local v0, "$i$a$-require-HardwareFoldingFeature$Companion$validateFeatureBounds$2":I
    nop

    .line 98
    .end local v0    # "$i$a$-require-HardwareFoldingFeature$Companion$validateFeatureBounds$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounding rectangle must start at the top or left window edge for folding features"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_5
    const/4 v0, 0x0

    .line 97
    .local v0, "$i$a$-require-HardwareFoldingFeature$Companion$validateFeatureBounds$1":I
    nop

    .end local v0    # "$i$a$-require-HardwareFoldingFeature$Companion$validateFeatureBounds$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bounds must be non zero"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
