.class public Lorg/bouncycastle/asn1/esf/OcspResponsesID;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OcspResponsesID.java"


# instance fields
.field private ocspIdentifier:Lorg/bouncycastle/asn1/esf/OcspIdentifier;

.field private ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OcspIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OcspIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspIdentifier:Lorg/bouncycastle/asn1/esf/OcspIdentifier;

    .line 46
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 48
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/esf/OtherHash;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OtherHash;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    .line 50
    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 43
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/OcspIdentifier;)V
    .locals 1
    .param p1, "ocspIdentifier"    # Lorg/bouncycastle/asn1/esf/OcspIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ocspIdentifier"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/esf/OcspResponsesID;-><init>(Lorg/bouncycastle/asn1/esf/OcspIdentifier;Lorg/bouncycastle/asn1/esf/OtherHash;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/esf/OcspIdentifier;Lorg/bouncycastle/asn1/esf/OtherHash;)V
    .locals 0
    .param p1, "ocspIdentifier"    # Lorg/bouncycastle/asn1/esf/OcspIdentifier;
    .param p2, "ocspRepHash"    # Lorg/bouncycastle/asn1/esf/OtherHash;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ocspIdentifier",
            "ocspRepHash"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspIdentifier:Lorg/bouncycastle/asn1/esf/OcspIdentifier;

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    .line 61
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/OcspResponsesID;
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

    .line 26
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;

    return-object v0

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/OcspResponsesID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getOcspIdentifier()Lorg/bouncycastle/asn1/esf/OcspIdentifier;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspIdentifier:Lorg/bouncycastle/asn1/esf/OcspIdentifier;

    return-object v0
.end method

.method public getOcspRepHash()Lorg/bouncycastle/asn1/esf/OtherHash;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 76
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspIdentifier:Lorg/bouncycastle/asn1/esf/OcspIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 77
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/OcspResponsesID;->ocspRepHash:Lorg/bouncycastle/asn1/esf/OtherHash;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
