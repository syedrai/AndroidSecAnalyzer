.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source "GMSSParameters.java"


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0xa

    if-gt p1, v2, :cond_0

    .line 93
    filled-new-array {v2}, [I

    move-result-object v2

    .line 94
    .local v2, "defh":[I
    filled-new-array {v0}, [I

    move-result-object v0

    .line 95
    .local v0, "defw":[I
    filled-new-array {v1}, [I

    move-result-object v1

    .line 96
    .local v1, "defk":[I
    array-length v3, v2

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    .line 97
    .end local v0    # "defw":[I
    .end local v1    # "defk":[I
    .end local v2    # "defh":[I
    goto :goto_0

    .line 98
    :cond_0
    const/16 v3, 0x14

    if-gt p1, v3, :cond_1

    .line 100
    filled-new-array {v2, v2}, [I

    move-result-object v0

    .line 101
    .local v0, "defh":[I
    const/4 v2, 0x5

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 102
    .local v2, "defw":[I
    filled-new-array {v1, v1}, [I

    move-result-object v1

    .line 103
    .restart local v1    # "defk":[I
    array-length v3, v0

    invoke-direct {p0, v3, v0, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    .line 104
    .end local v0    # "defh":[I
    .end local v1    # "defk":[I
    .end local v2    # "defw":[I
    goto :goto_0

    .line 107
    :cond_1
    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v2

    .line 108
    .local v2, "defh":[I
    const/16 v3, 0x9

    filled-new-array {v3, v3, v3, v0}, [I

    move-result-object v0

    .line 109
    .local v0, "defw":[I
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v1

    .line 110
    .restart local v1    # "defk":[I
    array-length v3, v2

    invoke-direct {p0, v3, v2, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    .line 112
    .end local v0    # "defw":[I
    .end local v1    # "defk":[I
    .end local v2    # "defh":[I
    :goto_0
    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .param p1, "layers"    # I
    .param p2, "heightOfTrees"    # [I
    .param p3, "winternitzParameter"    # [I
    .param p4, "K"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layers",
            "heightOfTrees",
            "winternitzParameter",
            "K"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    .line 45
    return-void
.end method

.method private init(I[I[I[I)V
    .locals 6
    .param p1, "layers"    # I
    .param p2, "heightOfTrees"    # [I
    .param p3, "winternitzParameter"    # [I
    .param p4, "K"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layers",
            "heightOfTrees",
            "winternitzParameter",
            "K"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    .line 52
    .local v0, "valid":Z
    const-string v1, ""

    .line 53
    .local v1, "errMsg":Ljava/lang/String;
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    .line 54
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v3, p3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v3, p2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v3, p4

    if-eq v2, v3, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 59
    const-string v1, "Unexpected parameterset format"

    .line 61
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge v2, v3, :cond_6

    .line 63
    aget v3, p4, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget v3, p2, v2

    aget v5, p4, v2

    sub-int/2addr v3, v5

    rem-int/2addr v3, v4

    if-eqz v3, :cond_3

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    const-string v1, "Wrong parameter K (K >= 2 and H-K even required)!"

    .line 69
    :cond_3
    aget v3, p2, v2

    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    aget v3, p3, v2

    if-ge v3, v4, :cond_5

    .line 71
    :cond_4
    const/4 v0, 0x0

    .line 72
    const-string v1, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    .line 61
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    :cond_6
    if-eqz v0, :cond_7

    .line 78
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    .line 79
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    .line 80
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->K:[I

    .line 86
    return-void

    .line 84
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
