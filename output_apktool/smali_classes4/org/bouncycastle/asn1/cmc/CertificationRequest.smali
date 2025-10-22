.class public Lorg/bouncycastle/asn1/cmc/CertificationRequest;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertificationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;
    }
.end annotation


# static fields
.field private static final ZERO:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private final certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

.field private final signature:Lorg/bouncycastle/asn1/ASN1BitString;

.field private final signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static bridge synthetic -$$Nest$sfgetZERO()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->ZERO:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->ZERO:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

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

    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/cmc/CertificationRequest-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incorrect sequence size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 6
    .param p1, "subject"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "subjectPublicAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "subjectPublicKey"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .param p4, "attributes"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p5, "signatureAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p6, "signature"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subject",
            "subjectPublicAlgorithm",
            "subjectPublicKey",
            "attributes",
            "signatureAlgorithm",
            "signature"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local p2    # "subjectPublicAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local p3    # "subjectPublicKey":Lorg/bouncycastle/asn1/ASN1BitString;
    .end local p4    # "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    .local v1, "subject":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v2, "subjectPublicAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v3, "subjectPublicKey":Lorg/bouncycastle/asn1/ASN1BitString;
    .local v4, "attributes":Lorg/bouncycastle/asn1/ASN1Set;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cmc/CertificationRequest-IA;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    .line 53
    iput-object p5, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    iput-object p6, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 55
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CertificationRequest;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 70
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;

    return-object v0

    .line 75
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/CertificationRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->-$$Nest$mgetAttributes(Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->-$$Nest$mgetSubject(Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->-$$Nest$mgetSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->-$$Nest$mgetSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/math/BigInteger;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;->-$$Nest$mgetVersion(Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->getSubjectPublicKey()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 133
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 135
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->certificationRequestInfo:Lorg/bouncycastle/asn1/cmc/CertificationRequest$CertificationRequestInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 136
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 137
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/CertificationRequest;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 139
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
