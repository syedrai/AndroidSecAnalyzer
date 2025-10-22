.class public interface abstract Lorg/bouncycastle/math/ec/ECLookupTable;
.super Ljava/lang/Object;
.source "ECLookupTable.java"


# virtual methods
.method public abstract getSize()I
.end method

.method public abstract lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method
