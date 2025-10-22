.class public final Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;
.super Ljava/lang/Object;
.source "DEROtherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DEROtherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final partyUInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final partyVInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private suppPrivInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

.field private suppPubInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)V
    .locals 1
    .param p1, "algorithmID"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "partyUInfo"    # [B
    .param p3, "partyVInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithmID",
            "partyUInfo",
            "partyVInfo"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->algorithmID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 40
    invoke-static {p2}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->partyUInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 41
    invoke-static {p3}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->partyVInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 42
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 4

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 79
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->algorithmID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->partyUInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 81
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->partyVInfo:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPrivInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPrivInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/util/DEROtherInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/util/DEROtherInfo;-><init>(Lorg/bouncycastle/asn1/DERSequence;Lorg/bouncycastle/crypto/util/DEROtherInfo-IA;)V

    return-object v1
.end method

.method public withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;
    .locals 4
    .param p1, "suppPrivInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppPrivInfo"
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPrivInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 67
    return-object p0
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;
    .locals 3
    .param p1, "suppPubInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suppPubInfo"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/DerUtil;->getOctetString([B)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->suppPubInfo:Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 54
    return-object p0
.end method
