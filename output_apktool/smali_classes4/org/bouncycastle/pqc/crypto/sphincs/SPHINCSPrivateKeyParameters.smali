.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;
.source "SPHINCSPrivateKeyParameters.java"


# instance fields
.field private final keyData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "keyData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyData"
        }
    .end annotation

    .line 12
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;-><init>(ZLjava/lang/String;)V

    .line 13
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->keyData:[B

    .line 14
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "keyData"    # [B
    .param p2, "treeDigest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyData",
            "treeDigest"
        }
    .end annotation

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSKeyParameters;-><init>(ZLjava/lang/String;)V

    .line 19
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->keyData:[B

    .line 20
    return-void
.end method


# virtual methods
.method public getKeyData()[B
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->keyData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
