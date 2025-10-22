.class public Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/ECKeyParameters;
.source "ECPublicKeyParameters.java"


# instance fields
.field private final Q:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 1
    .param p1, "Q"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Q",
            "params"
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 16
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->validate(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lorg/bouncycastle/math/ec/ECPoint;

    .line 17
    return-void
.end method


# virtual methods
.method public getQ()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->Q:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method
