.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;
.source "GMSSPublicKeyParameters.java"


# instance fields
.field private gmssPublicKey:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V
    .locals 1
    .param p1, "key"    # [B
    .param p2, "gmssParameterSet"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "gmssParameterSet"
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    .line 22
    return-void
.end method


# virtual methods
.method public getPublicKey()[B
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPublicKeyParameters;->gmssPublicKey:[B

    return-object v0
.end method
