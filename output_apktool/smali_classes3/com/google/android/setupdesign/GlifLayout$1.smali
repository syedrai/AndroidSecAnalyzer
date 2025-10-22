.class Lcom/google/android/setupdesign/GlifLayout$1;
.super Ljava/lang/Object;
.source "GlifLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/GlifLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/GlifLayout;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/GlifLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/GlifLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    .line 110
    .local v0, "scrollView":Landroid/widget/ScrollView;
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 112
    .local v1, "headerScrollView":Landroid/widget/ScrollView;
    if-nez v0, :cond_0

    if-eqz v1, :cond_4

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/setupdesign/GlifLayout;->canViewScrollDown(Landroid/widget/ScrollView;)Z

    move-result v2

    .line 114
    .local v2, "canHeaderViewScrollDown":Z
    iget-object v3, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v3, v0}, Lcom/google/android/setupdesign/GlifLayout;->canViewScrollDown(Landroid/widget/ScrollView;)Z

    move-result v3

    .line 115
    .local v3, "canViewScrollDown":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    .line 117
    .local v6, "canWholeViewsScrollDown":Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/setupdesign/GlifLayout$1;->this$0:Lcom/google/android/setupdesign/GlifLayout;

    if-nez v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {v7, v4}, Lcom/google/android/setupdesign/GlifLayout;->onScrolling(Z)V

    .line 119
    .end local v2    # "canHeaderViewScrollDown":Z
    .end local v3    # "canViewScrollDown":Z
    .end local v6    # "canWholeViewsScrollDown":Z
    :cond_4
    return-void
.end method
