.class public Lorg/bouncycastle/asn1/est/AttrOrOID;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AttrOrOID.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

.field private final oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "oid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oid"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lorg/bouncycastle/asn1/pkcs/Attribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attribute"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    iput-object p1, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    .line 35
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 40
    instance-of v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    return-object v0

    .line 45
    :cond_0
    if-eqz p0, :cond_4

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 51
    .local v0, "asn1Prim":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v1

    .line 55
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 57
    new-instance v1, Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;-><init>(Lorg/bouncycastle/asn1/pkcs/Attribute;)V

    return-object v1

    .line 60
    .end local v0    # "asn1Prim":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 64
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "unknown encoding in getInstance()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown object in getInstance(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getAttribute()Lorg/bouncycastle/asn1/pkcs/Attribute;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    return-object v0
.end method

.method public getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isOid()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->oid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/est/AttrOrOID;->attribute:Lorg/bouncycastle/asn1/pkcs/Attribute;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/Attribute;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
