.class public Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "ObjectStoreIntegrityCheck.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final PBKD_MAC_CHECK:I = 0x0

.field public static final SIG_CHECK:I = 0x1


# instance fields
.field private final integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

.field private final type:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "obj"    # Lorg/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/SignatureCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/SignatureCheck;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown check object in integrity check."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    .line 46
    invoke-static {p1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    .line 57
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;)V
    .locals 0
    .param p1, "macIntegrityCheck"    # Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macIntegrityCheck"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/bc/SignatureCheck;)V
    .locals 2
    .param p1, "signatureCheck"    # Lorg/bouncycastle/asn1/bc/SignatureCheck;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureCheck"
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 39
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 61
    instance-of v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    return-object v0

    .line 65
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 69
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to parse integrity check details."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    if-eqz p0, :cond_2

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 81
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getIntegrityCheck()Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->type:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    instance-of v0, v0, Lorg/bouncycastle/asn1/bc/SignatureCheck;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->integrityCheck:Lorg/bouncycastle/asn1/ASN1Object;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
