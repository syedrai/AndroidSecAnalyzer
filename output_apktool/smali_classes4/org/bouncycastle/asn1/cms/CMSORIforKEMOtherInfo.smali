.class public Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMSORIforKEMOtherInfo.java"


# instance fields
.field private final kekLength:I

.field private final ukm:[B

.field private final wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)V
    .locals 1
    .param p1, "wrap"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "kekLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wrap",
            "kekLength"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)V
    .locals 0
    .param p1, "wrap"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "kekLength"    # I
    .param p3, "ukm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrap",
            "kekLength",
            "ukm"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    iput p2, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->kekLength:I

    .line 39
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->ukm:[B

    .line 40
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 46
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->wrap:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 47
    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->kekLength:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 49
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->ukm:[B

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->ukm:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 53
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
