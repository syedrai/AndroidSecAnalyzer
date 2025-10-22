.class public interface abstract Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;
.super Ljava/lang/Object;
.source "ItemHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/items/ItemHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemHierarchy"
        }
    .end annotation
.end method

.method public abstract onItemRangeChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onItemRangeInserted(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onItemRangeMoved(Lcom/google/android/setupdesign/items/ItemHierarchy;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "fromPosition",
            "toPosition",
            "itemCount"
        }
    .end annotation
.end method

.method public abstract onItemRangeRemoved(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "itemHierarchy",
            "positionStart",
            "itemCount"
        }
    .end annotation
.end method
