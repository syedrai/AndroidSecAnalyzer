.class public Lorg/bouncycastle/asn1/icao/LDSVersionInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "LDSVersionInfo.java"


# instance fields
.field private ldsVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

.field private unicodeVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ldsVersion"    # Ljava/lang/String;
    .param p2, "unicodeVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ldsVersion",
            "unicodeVersion"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 19
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->ldsVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 20
    new-instance v0, Lorg/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->unicodeVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 21
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->ldsVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1PrintableString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->unicodeVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    .line 32
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for LDSVersionInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/LDSVersionInfo;
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

    .line 36
    instance-of v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;

    if-eqz v0, :cond_0

    .line 38
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;

    return-object v0

    .line 40
    :cond_0
    if-eqz p0, :cond_1

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 45
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getLdsVersion()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->ldsVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnicodeVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->unicodeVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1PrintableString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 71
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->ldsVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 72
    iget-object v1, p0, Lorg/bouncycastle/asn1/icao/LDSVersionInfo;->unicodeVersion:Lorg/bouncycastle/asn1/ASN1PrintableString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
