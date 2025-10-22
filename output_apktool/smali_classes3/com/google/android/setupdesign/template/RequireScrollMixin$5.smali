.class Lcom/google/android/setupdesign/template/RequireScrollMixin$5;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Lcom/google/android/setupcompat/template/FooterButton;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$moreText:Ljava/lang/CharSequence;

.field final synthetic val$nextText:Ljava/lang/CharSequence;

.field final synthetic val$primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field final synthetic val$secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Lcom/google/android/setupcompat/template/FooterButton;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/google/android/setupcompat/template/FooterButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/template/RequireScrollMixin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$primaryButton",
            "val$moreText",
            "val$nextText",
            "val$secondaryButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    iput-object p2, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iput-object p3, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$moreText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$nextText:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequireScrollStateChanged(Z)V
    .locals 2
    .param p1, "scrollNeeded"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollNeeded"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$primaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$moreText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$nextText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/setupdesign/template/RequireScrollMixin$5;->val$secondaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    .line 342
    return-void
.end method
