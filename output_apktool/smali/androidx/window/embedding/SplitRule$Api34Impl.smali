.class public final Landroidx/window/embedding/SplitRule$Api34Impl;
.super Ljava/lang/Object;
.source "SplitRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api34Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/window/embedding/SplitRule$Api34Impl;",
        "",
        "<init>",
        "()V",
        "getDensity",
        "",
        "windowMetrics",
        "Landroid/view/WindowMetrics;",
        "context",
        "Landroid/content/Context;",
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


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/SplitRule$Api34Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/SplitRule$Api34Impl;

    invoke-direct {v0}, Landroidx/window/embedding/SplitRule$Api34Impl;-><init>()V

    sput-object v0, Landroidx/window/embedding/SplitRule$Api34Impl;->INSTANCE:Landroidx/window/embedding/SplitRule$Api34Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDensity(Landroid/view/WindowMetrics;Landroid/content/Context;)F
    .locals 2
    .param p1, "windowMetrics"    # Landroid/view/WindowMetrics;
    .param p2, "context"    # Landroid/content/Context;

    const-string/jumbo v0, "windowMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    nop

    .line 298
    :try_start_0
    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getDensity()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    move v0, v1

    .line 297
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :goto_0
    return v0
.end method
