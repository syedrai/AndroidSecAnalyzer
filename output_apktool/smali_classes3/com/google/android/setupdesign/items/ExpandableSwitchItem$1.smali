.class Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ExpandableSwitchItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/setupdesign/items/ExpandableSwitchItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "nodeInfo"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "nodeInfo"
        }
    .end annotation

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_COLLAPSE:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_EXPAND:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 67
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 71
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "action",
            "args"
        }
    .end annotation

    .line 76
    sparse-switch p2, :sswitch_data_0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 79
    .end local v0    # "result":Z
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    iget-object v1, p0, Lcom/google/android/setupdesign/items/ExpandableSwitchItem$1;->this$0:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 80
    const/4 v0, 0x1

    .line 81
    .restart local v0    # "result":Z
    nop

    .line 86
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method
