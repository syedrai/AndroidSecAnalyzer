.class Landroidx/core/view/insets/ProtectionLayout$1;
.super Ljava/lang/Object;
.source "ProtectionLayout.java"

# interfaces
.implements Landroidx/core/view/insets/Protection$Attributes$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/insets/ProtectionLayout;->addProtectionView(Landroid/content/Context;ILandroidx/core/view/insets/Protection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/insets/ProtectionLayout;

.field final synthetic val$params:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/insets/ProtectionLayout;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/core/view/insets/ProtectionLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Landroidx/core/view/insets/ProtectionLayout$1;->this$0:Landroidx/core/view/insets/ProtectionLayout;

    iput-object p2, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput-object p3, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaChanged(F)V
    .locals 1
    .param p1, "alpha"    # F

    .line 279
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 280
    return-void
.end method

.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-void
.end method

.method public onHeightChanged(I)V
    .locals 2
    .param p1, "height"    # I

    .line 244
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 245
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    return-void
.end method

.method public onMarginChanged(Landroidx/core/graphics/Insets;)V
    .locals 2
    .param p1, "margin"    # Landroidx/core/graphics/Insets;

    .line 250
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 251
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 252
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroidx/core/graphics/Insets;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 253
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 254
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    return-void
.end method

.method public onTranslationXChanged(F)V
    .locals 1
    .param p1, "translationX"    # F

    .line 269
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 270
    return-void
.end method

.method public onTranslationYChanged(F)V
    .locals 1
    .param p1, "translationY"    # F

    .line 274
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 275
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 259
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    return-void
.end method

.method public onWidthChanged(I)V
    .locals 2
    .param p1, "width"    # I

    .line 238
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 239
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroidx/core/view/insets/ProtectionLayout$1;->val$params:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method
