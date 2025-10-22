.class public Lorg/bouncycastle/asn1/x509/BasicConstraints;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field cA:Lorg/bouncycastle/asn1/ASN1Boolean;

.field pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "pathLenConstraint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathLenConstraint"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 107
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 108
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

    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 56
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 57
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 67
    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 68
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 70
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    :goto_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "cA"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cA"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 87
    if-eqz p1, :cond_0

    .line 89
    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    goto :goto_0

    .line 93
    :cond_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 95
    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 96
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
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

    .line 48
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
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

    .line 30
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    return-object v0

    .line 34
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_1

    .line 36
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Extension;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509Extension;->convertValueToObject(Lorg/bouncycastle/asn1/x509/X509Extension;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    if-eqz p0, :cond_2

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 43
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/BasicConstraints;
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

    .line 24
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public isCA()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 141
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 143
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->cA:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 148
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 153
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
