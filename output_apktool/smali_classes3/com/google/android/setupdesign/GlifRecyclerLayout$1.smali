.class Lcom/google/android/setupdesign/GlifRecyclerLayout$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "GlifRecyclerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/GlifRecyclerLayout;->initScrollingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/GlifRecyclerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/GlifRecyclerLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 182
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 183
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->-$$Nest$mcanWholeViewsScrollDown(Lcom/google/android/setupdesign/GlifRecyclerLayout;Landroid/widget/ScrollView;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onScrolling(Z)V

    .line 184
    return-void
.end method
