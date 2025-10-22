.class interface abstract Landroid/support/v7/widget/ViewTypeStorage;
.super Ljava/lang/Object;
.source "ViewTypeStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewTypeStorage$IsolatedViewTypeStorage;,
        Landroid/support/v7/widget/ViewTypeStorage$SharedIdRangeViewTypeStorage;,
        Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;
    }
.end annotation


# virtual methods
.method public abstract createViewTypeWrapper(Landroid/support/v7/widget/NestedAdapterWrapper;)Landroid/support/v7/widget/ViewTypeStorage$ViewTypeLookup;
.end method

.method public abstract getWrapperForGlobalType(I)Landroid/support/v7/widget/NestedAdapterWrapper;
.end method
