.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SlidingPaneLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingPaneLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,3152:1\n55#2,6:3153\n*S KotlinDebug\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams\n*L\n2009#1:3153,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0002\u0010\nB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0002\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u000cB\u001b\u0008\u0016\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0002\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00158\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0017\u001a\u00020\u00058\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;",
        "Landroid/view/ViewGroup$MarginLayoutParams;",
        "<init>",
        "()V",
        "width",
        "",
        "height",
        "(II)V",
        "source",
        "Landroid/view/ViewGroup$LayoutParams;",
        "(Landroid/view/ViewGroup$LayoutParams;)V",
        "(Landroid/view/ViewGroup$MarginLayoutParams;)V",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)V",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "weight",
        "",
        "slideable",
        "",
        "dimWhenOffset",
        "horizontalMargin",
        "getHorizontalMargin$slidingpanelayout_release",
        "()I",
        "slidingpanelayout_release"
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
.field public dimWhenOffset:Z

.field public slideable:Z

.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1996
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1998
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2008
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2009
    sget-object v0, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_Layout:[I

    const-string v1, "SlidingPaneLayout_Layout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "attrs$iv":[I
    move-object v1, p1

    .line 3153
    .local v1, "$this$withStyledAttributes$iv":Landroid/content/Context;
    const/4 v2, 0x0

    .line 3154
    .local v2, "defStyleAttr$iv":I
    const/4 v3, 0x0

    .local v3, "defStyleRes$iv":I
    const/4 v4, 0x0

    .line 3157
    .local v4, "$i$f$withStyledAttributes":I
    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v6, v5

    .local v6, "$this$_init__u24lambda_u240":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    .line 2010
    .local v7, "$i$a$-withStyledAttributes$default-SlidingPaneLayout$LayoutParams$1":I
    sget v8, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_Layout_android_layout_weight:I

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    iput v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 2011
    nop

    .line 3157
    .end local v6    # "$this$_init__u24lambda_u240":Landroid/content/res/TypedArray;
    .end local v7    # "$i$a$-withStyledAttributes$default-SlidingPaneLayout$LayoutParams$1":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3158
    nop

    .line 2012
    .end local v0    # "attrs$iv":[I
    .end local v1    # "$this$withStyledAttributes$iv":Landroid/content/Context;
    .end local v2    # "defStyleAttr$iv":I
    .end local v3    # "defStyleRes$iv":I
    .end local v4    # "$i$f$withStyledAttributes":I
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2002
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2004
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2005
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    .line 2006
    return-void
.end method


# virtual methods
.method public final getHorizontalMargin$slidingpanelayout_release()I
    .locals 3

    const/4 v0, 0x0

    .line 1994
    .local v0, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method
