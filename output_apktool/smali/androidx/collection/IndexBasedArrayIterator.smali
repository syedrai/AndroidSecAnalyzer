.class public abstract Landroidx/collection/IndexBasedArrayIterator;
.super Ljava/lang/Object;
.source "IndexBasedArrayIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIndexBasedArrayIterator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IndexBasedArrayIterator.kt\nandroidx/collection/IndexBasedArrayIterator\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n*L\n1#1,51:1\n46#2,4:52\n*S KotlinDebug\n*F\n+ 1 IndexBasedArrayIterator.kt\nandroidx/collection/IndexBasedArrayIterator\n*L\n44#1:52,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008 \u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\u0004H$\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0008\u001a\u00020\u0004H$J\t\u0010\u000f\u001a\u00020\nH\u0096\u0002J\u000e\u0010\u0010\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/collection/IndexBasedArrayIterator;",
        "T",
        "",
        "startingSize",
        "",
        "<init>",
        "(I)V",
        "size",
        "index",
        "canRemove",
        "",
        "elementAt",
        "(I)Ljava/lang/Object;",
        "removeAt",
        "",
        "hasNext",
        "next",
        "()Ljava/lang/Object;",
        "remove",
        "collection"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private canRemove:Z

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "startingSize"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    .line 20
    return-void
.end method


# virtual methods
.method protected abstract elementAt(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 2

    .line 30
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroidx/collection/IndexBasedArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    .line 39
    iput-boolean v2, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    .line 40
    return-object v0

    .line 34
    .end local v0    # "res":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 44
    iget-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    .local v0, "value$iv":Z
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$f$checkPrecondition":I
    if-nez v0, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 44
    .local v2, "$i$a$-checkPrecondition-IndexBasedArrayIterator$remove$1":I
    nop

    .line 53
    .end local v2    # "$i$a$-checkPrecondition-IndexBasedArrayIterator$remove$1":I
    const-string v2, "Call next() before removing an element."

    invoke-static {v2}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 55
    :cond_0
    nop

    .line 46
    .end local v0    # "value$iv":Z
    .end local v1    # "$i$f$checkPrecondition":I
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->index:I

    invoke-virtual {p0, v0}, Landroidx/collection/IndexBasedArrayIterator;->removeAt(I)V

    .line 47
    iget v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/collection/IndexBasedArrayIterator;->size:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/collection/IndexBasedArrayIterator;->canRemove:Z

    .line 49
    return-void
.end method

.method protected abstract removeAt(I)V
.end method
