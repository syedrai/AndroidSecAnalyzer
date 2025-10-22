.class public Lorg/bouncycastle/asn1/x509/CertificatePolicies;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CertificatePolicies.java"


# instance fields
.field private final policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;


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

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 2
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 65
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/PolicyInformation;)V
    .locals 1
    .param p1, "policyInformation"    # [Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyInformation"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 70
    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 71
    return-void
.end method

.method private static copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 3
    .param p0, "policyInfo"    # [Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyInfo"
        }
    .end annotation

    .line 17
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/PolicyInformation;

    .line 18
    .local v0, "result":[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-object v0
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
    .locals 1
    .param p0, "extensions"    # Lorg/bouncycastle/asn1/x509/Extensions;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extensions"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
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

    .line 25
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    return-object v0

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CertificatePolicies;
    .locals 1
    .param p0, "obj"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "explicit"
        }
    .end annotation

    .line 42
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificatePolicies;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPolicyInformation(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 2
    .param p1, "policyIdentifier"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyIdentifier"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 93
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object v1, v1, v0

    return-object v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPolicyInformation()[Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->copy([Lorg/bouncycastle/asn1/x509/PolicyInformation;)[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "p":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CertificatePolicies;->policyInformation:[Lorg/bouncycastle/asn1/x509/PolicyInformation;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CertificatePolicies: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
