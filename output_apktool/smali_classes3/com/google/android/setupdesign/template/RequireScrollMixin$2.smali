.class Lcom/google/android/setupdesign/template/RequireScrollMixin$2;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithNavigationBar(Lcom/google/android/setupdesign/view/NavigationBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$navigationBar:Lcom/google/android/setupdesign/view/NavigationBar;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupdesign/view/NavigationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/template/RequireScrollMixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$navigationBar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;->val$navigationBar:Lcom/google/android/setupdesign/view/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequireScrollStateChanged(Z)V
    .locals 4
    .param p1, "scrollNeeded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollNeeded"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;->val$navigationBar:Lcom/google/android/setupdesign/view/NavigationBar;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$2;->val$navigationBar:Lcom/google/android/setupdesign/view/NavigationBar;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    return-void
.end method
