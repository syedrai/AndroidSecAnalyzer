.class public interface abstract Lcom/google/android/setupdesign/items/ItemHierarchy;
.super Ljava/lang/Object;
.source "ItemHierarchy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;
    }
.end annotation


# virtual methods
.method public abstract findItemById(I)Lcom/google/android/setupdesign/items/ItemHierarchy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getItemAt(I)Lcom/google/android/setupdesign/items/IItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unregisterObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
