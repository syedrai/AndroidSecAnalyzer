.class Lcom/google/android/material/textfield/IndicatorViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;

.field final synthetic val$captionToHide:I

.field final synthetic val$captionToShow:I

.field final synthetic val$captionViewToHide:Landroid/widget/TextView;

.field final synthetic val$captionViewToShow:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/textfield/IndicatorViewController;
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
            "val$captionToShow",
            "val$captionViewToHide",
            "val$captionToHide",
            "val$captionViewToShow"
        }
    .end annotation

    .line 264
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    iput-object p3, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    iput-object p5, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->-$$Nest$fputcaptionDisplayed(Lcom/google/android/material/textfield/IndicatorViewController;I)V

    .line 268
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->-$$Nest$fputcaptionAnimator(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->-$$Nest$fgeterrorView(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    invoke-static {v0}, Lcom/google/android/material/textfield/IndicatorViewController;->-$$Nest$fgeterrorView(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 278
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 280
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animator"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 288
    :cond_0
    return-void
.end method
