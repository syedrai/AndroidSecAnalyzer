.class Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
.super Ljava/lang/Object;
.source "ADRS.java"


# static fields
.field public static final FORS_PK:I = 0x4

.field public static final FORS_PRF:I = 0x6

.field public static final FORS_TREE:I = 0x3

.field static final OFFSET_CHAIN_ADDR:I = 0x18

.field static final OFFSET_HASH_ADDR:I = 0x1c

.field static final OFFSET_KP_ADDR:I = 0x14

.field static final OFFSET_LAYER:I = 0x0

.field static final OFFSET_TREE:I = 0x4

.field static final OFFSET_TREE_HGT:I = 0x18

.field static final OFFSET_TREE_INDEX:I = 0x1c

.field static final OFFSET_TYPE:I = 0x10

.field public static final TREE:I = 0x2

.field public static final WOTS_HASH:I = 0x0

.field public static final WOTS_PK:I = 0x1

.field public static final WOTS_PRF:I = 0x5


# instance fields
.field final value:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    .line 29
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V
    .locals 4
    .param p1, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adrs"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    .line 33
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void
.end method


# virtual methods
.method public changeType(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 88
    return-void
.end method

.method public getKeyPairAddress()I
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getLayerAddress()I
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getTreeAddress()J
    .locals 2

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTreeHeight()I
    .locals 2

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getTreeIndex()I
    .locals 2

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method public setChainAddress(I)V
    .locals 2
    .param p1, "chainAddr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainAddr"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 113
    return-void
.end method

.method public setHashAddress(I)V
    .locals 2
    .param p1, "hashAddr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashAddr"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 108
    return-void
.end method

.method public setKeyPairAddress(I)V
    .locals 2
    .param p1, "keyPairAddr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyPairAddr"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x14

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 98
    return-void
.end method

.method public setLayerAddress(I)V
    .locals 2
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 39
    return-void
.end method

.method public setTreeAddress(J)V
    .locals 2
    .param p1, "tree"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tree"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 50
    return-void
.end method

.method public setTreeHeight(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x18

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 60
    return-void
.end method

.method public setTreeIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x1c

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 70
    return-void
.end method

.method public setType(I)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 83
    return-void
.end method
