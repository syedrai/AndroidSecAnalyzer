.class public Lcom/google/android/setupdesign/items/ButtonItem;
.super Lcom/google/android/setupdesign/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;

.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

.field private text:Ljava/lang/CharSequence;

.field private theme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 46
    sget v0, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    iput v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 46
    sget v1, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    iput v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 58
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 59
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_enabled:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 60
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_text:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    .line 61
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_theme:I

    sget v2, Lcom/google/android/setupdesign/R$style;->SudButtonItem:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 62
    sget v0, Lcom/google/android/setupdesign/R$styleable;->SudButtonItem_android_icon:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private createButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Lcom/google/android/material/button/MaterialButton;

    sget v2, Lcom/google/android/setupdesign/R$attr;->sucMaterialTonalButtonStyle:I

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-object v0

    .line 171
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/android/setupdesign/R$layout;->sud_button:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 143
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/items/ButtonItem;->createButton(Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    .end local v0    # "context":Landroid/content/Context;
    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/ButtonItem;->getViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 155
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    instance-of v1, v0, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 156
    .local v0, "materialButton":Lcom/google/android/material/button/MaterialButton;
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 158
    .end local v0    # "materialButton":Lcom/google/android/material/button/MaterialButton;
    :cond_3
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTheme()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    return v0
.end method

.method public isGroupDivider()Z
    .locals 1

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to ButtonItem\'s view"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

    invoke-interface {v0, p0}, Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;->onClick(Lcom/google/android/setupdesign/items/ButtonItem;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->enabled:Z

    .line 108
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 98
    return-void
.end method

.method public setOnClickListener(Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->listener:Lcom/google/android/setupdesign/items/ButtonItem$OnClickListener;

    .line 68
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->text:Ljava/lang/CharSequence;

    .line 72
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "theme"
        }
    .end annotation

    .line 86
    iput p1, p0, Lcom/google/android/setupdesign/items/ButtonItem;->theme:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/items/ButtonItem;->button:Landroid/widget/Button;

    .line 88
    return-void
.end method
