.class public Lcom/google/android/setupdesign/items/NonActionableItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "NonActionableItem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .locals 1

    .line 36
    sget v0, Lcom/google/android/setupdesign/R$layout;->sud_non_actionable_items_default:I

    return v0
.end method

.method public isActionable()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method
