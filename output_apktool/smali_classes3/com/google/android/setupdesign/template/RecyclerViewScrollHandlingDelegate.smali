.class public Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "RVRequireScrollMixin"


# instance fields
.field private final recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method static bridge synthetic -$$Nest$fgetrequireScrollMixin(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)Lcom/google/android/setupdesign/template/RequireScrollMixin;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanScrollDown(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "requireScrollMixin"    # Lcom/google/android/setupdesign/template/RequireScrollMixin;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requireScrollMixin",
            "recyclerView"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 41
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 42
    return-void
.end method

.method private canScrollDown()Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 48
    .local v0, "offset":I
    iget-object v2, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 49
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    .line 50
    .local v2, "range":I
    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 52
    .end local v0    # "offset":I
    .end local v2    # "range":I
    :cond_1
    return v1
.end method


# virtual methods
.method public pageScrollDown()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    .line 89
    .local v0, "height":I
    iget-object v1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    .line 91
    .end local v0    # "height":I
    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;-><init>(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$2;-><init>(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    .line 81
    :cond_0
    const-string v0, "RVRequireScrollMixin"

    const-string v1, "Cannot require scroll. Recycler view is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    :goto_0
    return-void
.end method
