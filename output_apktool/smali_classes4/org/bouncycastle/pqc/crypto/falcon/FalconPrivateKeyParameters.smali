.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;
.source "FalconPrivateKeyParameters.java"


# instance fields
.field private final F:[B

.field private final f:[B

.field private final g:[B

.field private final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V
    .locals 1
    .param p1, "parameters"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;
    .param p2, "f"    # [B
    .param p3, "g"    # [B
    .param p4, "F"    # [B
    .param p5, "pk_encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "f",
            "g",
            "F",
            "pk_encoded"
        }
    .end annotation

    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/falcon/FalconParameters;)V

    .line 16
    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    .line 17
    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    .line 18
    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    .line 19
    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    .line 20
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getG()[B
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSpolyF()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSpolyf()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
