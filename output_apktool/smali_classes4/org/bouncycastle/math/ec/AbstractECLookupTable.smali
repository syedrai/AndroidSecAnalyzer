.class public abstract Lorg/bouncycastle/math/ec/AbstractECLookupTable;
.super Ljava/lang/Object;
.source "AbstractECLookupTable.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;->lookup(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
