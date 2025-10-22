.class public Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;
.super Ljava/lang/Object;
.source "ScalarSplitParameters.java"


# instance fields
.field protected final bits:I

.field protected final g1:Ljava/math/BigInteger;

.field protected final g2:Ljava/math/BigInteger;

.field protected final v1A:Ljava/math/BigInteger;

.field protected final v1B:Ljava/math/BigInteger;

.field protected final v2A:Ljava/math/BigInteger;

.field protected final v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 3
    .param p1, "v1"    # [Ljava/math/BigInteger;
    .param p2, "v2"    # [Ljava/math/BigInteger;
    .param p3, "g1"    # Ljava/math/BigInteger;
    .param p4, "g2"    # Ljava/math/BigInteger;
    .param p5, "bits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v1",
            "v2",
            "g1",
            "g2",
            "bits"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "v1"

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "v2"

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    .line 26
    const/4 v1, 0x1

    aget-object v2, p1, v1

    iput-object v2, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    .line 27
    aget-object v0, p2, v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    .line 28
    aget-object v0, p2, v1

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    .line 29
    iput-object p3, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    .line 30
    iput-object p4, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    .line 31
    iput p5, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    .line 32
    return-void
.end method

.method private static checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 3
    .param p0, "v"    # [Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "name"
        }
    .end annotation

    .line 9
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->bits:I

    return v0
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1A()Ljava/math/BigInteger;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV1B()Ljava/math/BigInteger;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v1B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2A()Ljava/math/BigInteger;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getV2B()Ljava/math/BigInteger;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;->v2B:Ljava/math/BigInteger;

    return-object v0
.end method
