.class public final Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;
.super Ljava/lang/Object;
.source "WindowMetricsCompatHelper.kt"

# interfaces
.implements Landroidx/window/layout/util/WindowMetricsCompatHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\n\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;",
        "Landroidx/window/layout/util/WindowMetricsCompatHelper;",
        "<init>",
        "()V",
        "translateWindowMetrics",
        "Landroidx/window/layout/WindowMetrics;",
        "windowMetrics",
        "Landroid/view/WindowMetrics;",
        "density",
        "",
        "currentWindowMetrics",
        "context",
        "Landroid/content/Context;",
        "densityCompatHelper",
        "Landroidx/window/layout/util/DensityCompatHelper;",
        "activity",
        "Landroid/app/Activity;",
        "maximumWindowMetrics",
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
.field public static final INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;

    invoke-direct {v0}, Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;-><init>()V

    sput-object v0, Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;->INSTANCE:Landroidx/window/layout/util/WindowMetricsCompatHelperApi30Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentWindowMetrics(Landroid/app/Activity;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "densityCompatHelper"    # Landroidx/window/layout/util/DensityCompatHelper;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "densityCompatHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 154
    new-instance v1, Landroidx/window/core/Bounds;

    sget-object v2, Landroidx/window/layout/util/BoundsHelper;->Companion:Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-virtual {v2}, Landroidx/window/layout/util/BoundsHelper$Companion;->getInstance()Landroidx/window/layout/util/BoundsHelper;

    move-result-object v2

    invoke-interface {v2, p1}, Landroidx/window/layout/util/BoundsHelper;->currentWindowBounds(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 155
    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-interface {p2, v2}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    move-result v2

    .line 153
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;F)V

    return-object v0
.end method

.method public currentWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "densityCompatHelper"    # Landroidx/window/layout/util/DensityCompatHelper;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "densityCompatHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 145
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 146
    .local v1, "density":F
    new-instance v2, Landroidx/window/layout/WindowMetrics;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "getBounds(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;F)V

    return-object v2
.end method

.method public maximumWindowMetrics(Landroid/content/Context;Landroidx/window/layout/util/DensityCompatHelper;)Landroidx/window/layout/WindowMetrics;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "densityCompatHelper"    # Landroidx/window/layout/util/DensityCompatHelper;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "densityCompatHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    .line 164
    new-instance v1, Landroidx/window/core/Bounds;

    sget-object v2, Landroidx/window/layout/util/BoundsHelper;->Companion:Landroidx/window/layout/util/BoundsHelper$Companion;

    invoke-virtual {v2}, Landroidx/window/layout/util/BoundsHelper$Companion;->getInstance()Landroidx/window/layout/util/BoundsHelper;

    move-result-object v2

    invoke-interface {v2, p1}, Landroidx/window/layout/util/BoundsHelper;->maximumWindowBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 165
    invoke-interface {p2, p1}, Landroidx/window/layout/util/DensityCompatHelper;->density(Landroid/content/Context;)F

    move-result v2

    .line 163
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/WindowMetrics;-><init>(Landroidx/window/core/Bounds;F)V

    return-object v0
.end method

.method public translateWindowMetrics(Landroid/view/WindowMetrics;F)Landroidx/window/layout/WindowMetrics;
    .locals 3
    .param p1, "windowMetrics"    # Landroid/view/WindowMetrics;
    .param p2, "density"    # F

    const-string/jumbo v0, "windowMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "getBounds(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Landroidx/window/layout/WindowMetrics;-><init>(Landroid/graphics/Rect;F)V

    return-object v0
.end method
