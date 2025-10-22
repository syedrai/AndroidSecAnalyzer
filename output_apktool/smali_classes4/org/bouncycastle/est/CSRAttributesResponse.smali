.class public Lorg/bouncycastle/est/CSRAttributesResponse;
.super Ljava/lang/Object;
.source "CSRAttributesResponse.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final csrAttrs:Lorg/bouncycastle/asn1/est/CsrAttrs;

.field private final index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Lorg/bouncycastle/asn1/est/AttrOrOID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/est/CsrAttrs;)V
    .locals 5
    .param p1, "csrAttrs"    # Lorg/bouncycastle/asn1/est/CsrAttrs;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "csrAttrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/bouncycastle/asn1/est/CsrAttrs;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/est/CsrAttrs;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getAttrOrOIDs()[Lorg/bouncycastle/asn1/est/AttrOrOID;

    move-result-object v0

    .line 46
    .local v0, "attrOrOIDs":[Lorg/bouncycastle/asn1/est/AttrOrOID;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_1

    .line 48
    aget-object v2, v0, v1

    .line 50
    .local v2, "attrOrOID":Lorg/bouncycastle/asn1/est/AttrOrOID;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;->isOid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/est/AttrOrOID;->getAttribute()Lorg/bouncycastle/asn1/pkcs/Attribute;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/Attribute;->getAttrType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .end local v2    # "attrOrOID":Lorg/bouncycastle/asn1/est/AttrOrOID;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "responseEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lorg/bouncycastle/est/CSRAttributesResponse;->parseBytes([B)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/est/CSRAttributesResponse;-><init>(Lorg/bouncycastle/asn1/est/CsrAttrs;)V

    .line 32
    return-void
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/est/CsrAttrs;
    .locals 5
    .param p0, "responseEncoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "responseEncoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/est/ESTException;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/est/CsrAttrs;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "malformed data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/bouncycastle/asn1/est/CsrAttrs;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequirements()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasRequirement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1
    .param p1, "requirementOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requirementOid"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1
    .param p1, "requirementOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requirementOid"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/est/AttrOrOID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/est/AttrOrOID;->isOid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/est/CSRAttributesResponse;->csrAttrs:Lorg/bouncycastle/asn1/est/CsrAttrs;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/est/CsrAttrs;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
