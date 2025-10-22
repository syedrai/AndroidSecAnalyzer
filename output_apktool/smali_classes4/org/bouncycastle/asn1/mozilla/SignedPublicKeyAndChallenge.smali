.class public Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignedPublicKeyAndChallenge.java"


# instance fields
.field private final pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final pubKeyAndChal:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pubKeyAndChal:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 27
    instance-of v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    if-eqz v0, :cond_0

    .line 29
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    return-object v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    .line 33
    new-instance v0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getPublicKeyAndChallenge()Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pubKeyAndChal:Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->pkacSeq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
