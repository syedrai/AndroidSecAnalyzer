.class public final Lkotlin/jvm/internal/ShortSpreadBuilder;
.super Lkotlin/jvm/internal/PrimitiveSpreadBuilder;
.source "PrimitiveSpreadBuilders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/PrimitiveSpreadBuilder<",
        "[S>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000c\u0010\u0008\u001a\u00020\u0004*\u00020\u0002H\u0014J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u0002R\u000e\u0010\u0007\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlin/jvm/internal/ShortSpreadBuilder;",
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
.field private final values:[S


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

    .line 118
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/PrimitiveSpreadBuilder;-><init>(I)V

    .line 119
    new-array v0, p1, [S

    iput-object v0, p0, Lkotlin/jvm/internal/ShortSpreadBuilder;->values:[S

    .line 118
    return-void
.end method


# virtual methods
.method public final add(S)V
    .locals 3
    .param p1, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lkotlin/jvm/internal/ShortSpreadBuilder;->values:[S

    invoke-virtual {p0}, Lkotlin/jvm/internal/ShortSpreadBuilder;->getPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lkotlin/jvm/internal/ShortSpreadBuilder;->setPosition(I)V

    aput-short p1, v0, v1

    .line 124
    return-void
.end method

.method public bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "$this$getSize"    # Ljava/lang/Object;

    .line 118
    move-object v0, p1

    check-cast v0, [S

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ShortSpreadBuilder;->getSize([S)I

    move-result v0

    return v0
.end method

.method protected getSize([S)I
    .locals 1
    .param p1, "$this$getSize"    # [S
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

    .line 120
    array-length v0, p1

    return v0
.end method

.method public final toArray()[S
    .locals 2

    .line 126
    iget-object v0, p0, Lkotlin/jvm/internal/ShortSpreadBuilder;->values:[S

    invoke-virtual {p0}, Lkotlin/jvm/internal/ShortSpreadBuilder;->size()I

    move-result v1

    new-array v1, v1, [S

    invoke-virtual {p0, v0, v1}, Lkotlin/jvm/internal/ShortSpreadBuilder;->toArray(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    return-object v0
.end method
