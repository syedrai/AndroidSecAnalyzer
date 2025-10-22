.class public Lorg/bouncycastle/its/bc/BcITSImplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;
.source "BcITSImplicitCertificateBuilder.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 1
    .param p1, "issuer"    # Lorg/bouncycastle/its/ITSCertificate;
    .param p2, "tbsCertificate"    # Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuer",
            "tbsCertificate"
        }
    .end annotation

    .line 13
    new-instance v0, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/bc/BcDigestCalculatorProvider;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/its/ITSImplicitCertificateBuilder;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    .line 14
    return-void
.end method
