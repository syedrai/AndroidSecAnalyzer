.class Lcom/google/android/setupdesign/GlifListLayout$2;
.super Ljava/lang/Object;
.source "GlifListLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/GlifListLayout;->initScrollingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/GlifListLayout;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/GlifListLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/GlifListLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/google/android/setupdesign/GlifListLayout$2;->this$0:Lcom/google/android/setupdesign/GlifListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout$2;->this$0:Lcom/google/android/setupdesign/GlifListLayout;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout$2;->this$0:Lcom/google/android/setupdesign/GlifListLayout;

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifListLayout$2;->this$0:Lcom/google/android/setupdesign/GlifListLayout;

    invoke-virtual {v2}, Lcom/google/android/setupdesign/GlifListLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifListLayout$2;->this$0:Lcom/google/android/setupdesign/GlifListLayout;

    invoke-static {v3}, Lcom/google/android/setupdesign/GlifListLayout;->-$$Nest$fgetlistMixin(Lcom/google/android/setupdesign/GlifListLayout;)Lcom/google/android/setupdesign/template/ListMixin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/setupdesign/GlifListLayout;->-$$Nest$mcanWholeViewsScrollDown(Lcom/google/android/setupdesign/GlifListLayout;Landroid/widget/ScrollView;Landroid/widget/ListView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->onScrolling(Z)V

    .line 171
    return-void
.end method
