.class abstract Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AccessibilityViewProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContentChangeType:I

.field private final mFrameworkMinimumSdk:I

.field private final mTagKey:I

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .param p1, "tagKey"    # I
    .param p3, "frameworkMinimumSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 4923
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;II)V

    .line 4925
    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .param p1, "tagKey"    # I
    .param p3, "contentChangeType"    # I
    .param p4, "frameworkMinimumSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 4928
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4929
    iput p1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    .line 4930
    iput-object p2, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    .line 4931
    iput p3, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    .line 4932
    iput p4, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    .line 4934
    return-void
.end method

.method private frameworkAvailable()Z
    .locals 2

    .line 4963
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mFrameworkMinimumSdk:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Boolean;
    .param p2, "b"    # Ljava/lang/Boolean;

    .line 4976
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4977
    .local v2, "aBool":Z
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 4978
    .local v3, "bBool":Z
    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method abstract frameworkGet(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract frameworkSet(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method get(Landroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4951
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4952
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkGet(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 4954
    :cond_0
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 4955
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mType:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4956
    return-object v0

    .line 4959
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method set(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation

    .line 4937
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4938
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->frameworkSet(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_0

    .line 4939
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->get(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4940
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->ensureAccessibilityDelegateCompat(Landroid/view/View;)V

    .line 4941
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mTagKey:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4945
    iget v0, p0, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;->mContentChangeType:I

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    .line 4947
    :cond_1
    :goto_0
    return-void
.end method

.method shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 4967
    .local p0, "this":Landroidx/core/view/ViewCompat$AccessibilityViewProperty;, "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<TT;>;"
    .local p1, "oldValue":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
