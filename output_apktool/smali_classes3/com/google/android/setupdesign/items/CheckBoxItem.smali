.class public Lcom/google/android/setupdesign/items/CheckBoxItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "CheckBoxItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checked:Z

.field private listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

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

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 65
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudCheckBoxItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 66
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudCheckBoxItem_android_checked:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 67
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 96
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_check_box:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

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

    .line 115
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 118
    .local v0, "checkBoxView":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 121
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/CheckBoxItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 125
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

    .line 142
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/CheckBoxItem;Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/CheckBoxItem;->toggle(Landroid/view/View;)V

    .line 138
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
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    if-eq v0, p1, :cond_0

    .line 73
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/CheckBoxItem;->notifyItemChanged()V

    .line 75
    iget-object v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/CheckBoxItem;Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setCheckedWithoutNotify(Z)V
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

    .line 83
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    if-eq v0, p1, :cond_0

    .line 84
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 85
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/CheckBoxItem;->notifyItemChanged()V

    .line 87
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    .line 133
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

    .line 105
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    .line 106
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_check_box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 107
    .local v0, "checkBoxView":Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->listener:Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/google/android/setupdesign/items/CheckBoxItem;->checked:Z

    invoke-interface {v1, p0, v2}, Lcom/google/android/setupdesign/items/CheckBoxItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/CheckBoxItem;Z)V

    .line 111
    :cond_0
    return-void
.end method
