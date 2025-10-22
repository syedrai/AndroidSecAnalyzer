.class Lcom/google/android/setupdesign/GlifRecyclerLayout$2;
.super Ljava/lang/Object;
.source "GlifRecyclerLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


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

    .line 194
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;->this$0:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    invoke-virtual {v3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->-$$Nest$mcanWholeViewsScrollDown(Lcom/google/android/setupdesign/GlifRecyclerLayout;Landroid/widget/ScrollView;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onScrolling(Z)V

    .line 198
    return-void
.end method
