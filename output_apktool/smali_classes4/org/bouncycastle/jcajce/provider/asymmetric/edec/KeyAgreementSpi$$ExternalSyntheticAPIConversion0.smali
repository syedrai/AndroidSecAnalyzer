.class public final synthetic Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic m(Ljava/security/interfaces/XECPrivateKey;)Lj$/util/Optional;
    .locals 0

    invoke-interface {p0}, Ljava/security/interfaces/XECPrivateKey;->getScalar()Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lj$/util/OptionalConversions;->convert(Ljava/util/Optional;)Lj$/util/Optional;

    move-result-object p0

    return-object p0
.end method
