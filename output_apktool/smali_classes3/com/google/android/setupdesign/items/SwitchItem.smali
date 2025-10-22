.class public Lcom/google/android/setupdesign/items/SwitchItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checked:Z

.field private listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 57
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

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 67
    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 68
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudSwitchItem_android_checked:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 69
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    return-void
.end method

.method private updateThumbIconDrawable(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "checked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "checked"
        }
    .end annotation

    .line 145
    instance-of v0, p1, Lcom/google/android/material/materialswitch/MaterialSwitch;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/material/materialswitch/MaterialSwitch;

    .line 146
    .local v0, "materialSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    if-eqz p2, :cond_0

    .line 147
    nop

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/setupdesign/R$drawable;->sud_ic_switch_selector_expressive:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 150
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/materialswitch/MaterialSwitch;->setThumbIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .end local v0    # "materialSwitch":Lcom/google/android/material/materialswitch/MaterialSwitch;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 90
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_items_switch:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

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

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 111
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 112
    .local v0, "switchView":Landroid/support/v7/widget/SwitchCompat;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/items/SwitchItem;->updateThumbIconDrawable(Landroid/view/View;Z)V

    .line 119
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SwitchItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    .line 121
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

    .line 133
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 134
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/SwitchItem;->updateThumbIconDrawable(Landroid/view/View;Z)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/SwitchItem;Z)V

    .line 141
    :cond_1
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

    .line 74
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 76
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/SwitchItem;->notifyItemChanged()V

    .line 77
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/google/android/setupdesign/items/SwitchItem;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->listener:Lcom/google/android/setupdesign/items/SwitchItem$OnCheckedChangeListener;

    .line 129
    return-void
.end method

.method public toggle(Landroid/view/View;)V
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

    .line 99
    iget-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    .line 100
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 101
    .local v0, "switchView":Landroid/support/v7/widget/SwitchCompat;
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-boolean v1, p0, Lcom/google/android/setupdesign/items/SwitchItem;->checked:Z

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/items/SwitchItem;->updateThumbIconDrawable(Landroid/view/View;Z)V

    .line 106
    :cond_0
    return-void
.end method
