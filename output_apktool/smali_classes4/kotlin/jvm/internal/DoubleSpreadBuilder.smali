.class public final Lkotlin/jvm/internal/DoubleSpreadBuilder;
.super Lkotlin/jvm/internal/PrimitiveSpreadBuilder;
.source "PrimitiveSpreadBuilders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder<",
        "[D>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000c\u0010\u0008\u001a\u00020\u0004*\u00020\u0002H\u0014J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u0002R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/jvm/internal/DoubleSpreadBuilder;",
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder;",
        "",
        "size",
        "",
        "<init>",
        "(I)V",
        "values",
        "getSize",
        "add",
        "",
        "value",
        "",
        "toArray",
        "kotlin_stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final values:[D


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;-><init>(I)V

    .line 75
    new-array v0, p1, [D

    iput-object v0, p0, Lkotlin/jvm/internal/DoubleSpreadBuilder;->values:[D

    .line 74
    return-void
.end method


# virtual methods
.method public final add(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lkotlin/jvm/internal/DoubleSpreadBuilder;->values:[D

    invoke-virtual {p0}, Lkotlin/jvm/internal/DoubleSpreadBuilder;->getPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lkotlin/jvm/internal/DoubleSpreadBuilder;->setPosition(I)V

    aput-wide p1, v0, v1

    .line 80
    return-void
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "$this$getSize"    # Ljava/lang/Object;

    .line 74
    move-object v0, p1

    check-cast v0, [D

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/DoubleSpreadBuilder;->getSize([D)I

    move-result v0

    return v0
.end method

.method protected getSize([D)I
    .locals 1
    .param p1, "$this$getSize"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$getSize"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    array-length v0, p1

    return v0
.end method

.method public final toArray()[D
    .locals 2

    .line 82
    iget-object v0, p0, Lkotlin/jvm/internal/DoubleSpreadBuilder;->values:[D

    invoke-virtual {p0}, Lkotlin/jvm/internal/DoubleSpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [D

    invoke-virtual {p0, v0, v1}, Lkotlin/jvm/internal/DoubleSpreadBuilder;->toArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
