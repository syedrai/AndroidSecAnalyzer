.class public Lorg/bouncycastle/asn1/x509/AltSignatureValue;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AltSignatureValue.java"


# instance fields
.field private final signature:Lorg/bouncycastle/asn1/ASN1BitString;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 0
    .param p1, "signature"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 68
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    .line 78
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/AltSignatureValue;
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

    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->altSignatureValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AltSignatureValue;
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

    .line 48
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    if-eqz v0, :cond_0

    .line 50
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    return-object v0

    .line 52
    :cond_0
    if-eqz p0, :cond_1

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AltSignatureValue;-><init>(Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AltSignatureValue;
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
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AltSignatureValue;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSignature()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/AltSignatureValue;->signature:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method
