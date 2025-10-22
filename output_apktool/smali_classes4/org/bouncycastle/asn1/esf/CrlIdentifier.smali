.class public Lorg/bouncycastle/asn1/esf/CrlIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CrlIdentifier.java"


# instance fields
.field private crlIssuedTime:Lorg/bouncycastle/asn1/ASN1UTCTime;

.field private crlIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTCTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTCTime;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuedTime:Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 55
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 57
    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1
    .param p1, "crlIssuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "crlIssuedTime"    # Lorg/bouncycastle/asn1/ASN1UTCTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crlIssuer",
            "crlIssuedTime"
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/CrlIdentifier;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/ASN1UTCTime;Ljava/math/BigInteger;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/ASN1UTCTime;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "crlIssuer"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "crlIssuedTime"    # Lorg/bouncycastle/asn1/ASN1UTCTime;
    .param p3, "crlNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "crlIssuer",
            "crlIssuedTime",
            "crlNumber"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 68
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuedTime:Lorg/bouncycastle/asn1/ASN1UTCTime;

    .line 69
    if-eqz p3, :cond_0

    .line 71
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 73
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CrlIdentifier;
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

    .line 33
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/CrlIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCrlIssuedTime()Lorg/bouncycastle/asn1/ASN1UTCTime;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuedTime:Lorg/bouncycastle/asn1/ASN1UTCTime;

    return-object v0
.end method

.method public getCrlIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getCrlNumber()Ljava/math/BigInteger;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 97
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 98
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlIssuedTime:Lorg/bouncycastle/asn1/ASN1UTCTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CrlIdentifier;->crlNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 103
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
