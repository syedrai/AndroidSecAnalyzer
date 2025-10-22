.class Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;
.super Landroid/view/ViewOutlineProvider;
.source "IconUniformityAppImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->bindView(Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

.field final synthetic val$radius:F

.field final synthetic val$viewData:Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/view/IconUniformityAppImageView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewData",
            "val$radius"
        }
    .end annotation

    .line 107
    iput-object p2, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->val$viewData:Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;

    iput p3, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->val$radius:F

    iput-object p1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->-$$Nest$fgetuseCircleIcon(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    iget-object v1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->val$viewData:Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;

    invoke-static {v0, v1, p2}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->-$$Nest$msetCircleIconTransformation(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;Lcom/google/android/setupdesign/view/IconUniformityAppImageViewBindable$IconUniformityAppImageViewData;Landroid/graphics/Outline;)V

    move-object v1, p2

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->-$$Nest$fgetbackdropDrawable(Lcom/google/android/setupdesign/view/IconUniformityAppImageView;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget v1, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->val$radius:F

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 115
    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    .line 118
    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->this$0:Lcom/google/android/setupdesign/view/IconUniformityAppImageView;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/setupdesign/view/IconUniformityAppImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/google/android/setupdesign/view/IconUniformityAppImageView$1;->val$radius:F

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    .end local p2    # "outline":Landroid/graphics/Outline;
    .local v1, "outline":Landroid/graphics/Outline;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 122
    :goto_0
    return-void
.end method
