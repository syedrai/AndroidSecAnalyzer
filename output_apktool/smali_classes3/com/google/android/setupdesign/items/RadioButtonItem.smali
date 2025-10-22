.class public Lcom/google/android/setupdesign/items/RadioButtonItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "RadioButtonItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checked:Z

.field private listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 55
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

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 65
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudRadioButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudRadioButtonItem_android_checked:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 88
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_radio_button:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
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

    .line 107
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_radio_button:I

    .line 110
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 111
    .local v0, "radioButtonView":Lcom/google/android/material/radiobutton/MaterialRadioButton;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setClickable(Z)V

    .line 114
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    .line 116
    invoke-virtual {v0, p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/RadioButtonItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setEnabled(Z)V

    .line 118
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 137
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 138
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/RadioButtonItem;Z)V

    .line 141
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/RadioButtonItem;->toggle(Landroid/view/View;)V

    .line 133
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 72
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    if-eq v0, p1, :cond_0

    .line 73
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/RadioButtonItem;->notifyItemChanged()V

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/RadioButtonItem;Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    .line 126
    return-void
.end method

.method public toggle(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 97
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    .line 98
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_radio_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;

    .line 99
    .local v0, "radioButtonView":Lcom/google/android/material/radiobutton/MaterialRadioButton;
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setChecked(Z)V

    .line 100
    iget-object v1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->listener:Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/google/android/setupdesign/items/RadioButtonItem;->checked:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/setupdesign/items/RadioButtonItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/RadioButtonItem;Z)V

    .line 103
    :cond_0
    return-void
.end method
