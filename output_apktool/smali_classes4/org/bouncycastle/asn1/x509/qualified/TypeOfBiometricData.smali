.class public Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "TypeOfBiometricData.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final HANDWRITTEN_SIGNATURE:I = 0x1

.field public static final PICTURE:I


# instance fields
.field obj:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "predefinedBiometricType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predefinedBiometricType"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 56
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknow PredefinedBiometricType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0
    .param p1, "BiometricDataID"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "BiometricDataID"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
    .locals 3
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
    if-eqz p0, :cond_3

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_1

    .line 40
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    .line 41
    .local v0, "predefinedBiometricTypeObj":Lorg/bouncycastle/asn1/ASN1Integer;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    .line 43
    .local v1, "predefinedBiometricType":I
    new-instance v2, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(I)V

    return-object v2

    .line 45
    .end local v0    # "predefinedBiometricTypeObj":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v1    # "predefinedBiometricType":I
    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_2

    .line 47
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 48
    .local v0, "BiometricDataID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    new-instance v1, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v1

    .line 51
    .end local v0    # "BiometricDataID":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    return-object v0
.end method


# virtual methods
.method public getBiometricDataOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getPredefinedBiometricType()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0
.end method

.method public isPredefined()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
