.class public Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;
.super Ljava/lang/Object;
.source "NHAgreement.java"


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 4
    .param p1, "otherPublicKey"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "otherPublicKey"
        }
    .end annotation

    .line 16
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    .line 18
    .local v0, "pubKey":Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;
    const/16 v1, 0x20

    new-array v1, v1, [B

    .line 20
    .local v1, "sharedValue":[B
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;->privKey:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;->pubData:[B

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sharedA([B[S[B)V

    .line 22
    return-object v1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 11
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;->privKey:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    .line 12
    return-void
.end method
