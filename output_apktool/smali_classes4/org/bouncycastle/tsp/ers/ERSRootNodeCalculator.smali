.class public interface abstract Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;
.super Ljava/lang/Object;
.source "ERSRootNodeCalculator.java"


# virtual methods
.method public abstract computePathToRoot(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;I)[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "node",
            "index"
        }
    .end annotation
.end method

.method public abstract computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "nodes"
        }
    .end annotation
.end method

.method public abstract recoverRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digCalc",
            "nodes"
        }
    .end annotation
.end method
