.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;
.source "RainbowPublicKeyParameters.java"


# instance fields
.field private coeffquadratic:[[S

.field private coeffscalar:[S

.field private coeffsingular:[[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 1
    .param p1, "docLength"    # I
    .param p2, "coeffQuadratic"    # [[S
    .param p3, "coeffSingular"    # [[S
    .param p4, "coeffScalar"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "docLength",
            "coeffQuadratic",
            "coeffSingular",
            "coeffScalar"
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyParameters;-><init>(ZI)V

    .line 24
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffquadratic:[[S

    .line 25
    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffsingular:[[S

    .line 26
    iput-object p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffscalar:[S

    .line 28
    return-void
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffquadratic:[[S

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffscalar:[S

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;->coeffsingular:[[S

    return-object v0
.end method
