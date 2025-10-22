.class public Lorg/bouncycastle/voms/VOMSAttribute;
.super Ljava/lang/Object;
.source "VOMSAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
    }
.end annotation


# static fields
.field public static final VOMS_ATTR_OID:Ljava/lang/String; = "1.3.6.1.4.1.8005.100.100.4"


# instance fields
.field private myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private myFQANs:Ljava/util/List;

.field private myHostPort:Ljava/lang/String;

.field private myStringList:Ljava/util/List;

.field private myVo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .locals 12
    .param p1, "ac"    # Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ac"
        }
    .end annotation

    .line 38
    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    .line 39
    if-eqz p1, :cond_6

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 46
    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.8005.100.100.4"

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getAttributes(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v1

    .line 48
    .local v1, "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    if-nez v1, :cond_0

    .line 50
    return-void

    .line 55
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    array-length v3, v1

    if-eq v2, v3, :cond_5

    .line 57
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;

    move-result-object v3

    .line 60
    .local v3, "attr":Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getPolicyAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "url":Ljava/lang/String;
    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 63
    .local v6, "idx":I
    if-ltz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_4

    .line 68
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    .line 69
    add-int/lit8 v4, v6, 0x3

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    .line 71
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValueType()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 77
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;->getValues()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 78
    .local v4, "values":[Lorg/bouncycastle/asn1/ASN1OctetString;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v4

    if-eq v7, v8, :cond_2

    .line 80
    new-instance v8, Ljava/lang/String;

    aget-object v9, v4, v7

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 81
    .local v8, "fqan":Ljava/lang/String;
    new-instance v9, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;

    invoke-direct {v9, v8}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;-><init>(Ljava/lang/String;)V

    .line 83
    .local v9, "f":Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
    iget-object v10, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 85
    iget-object v10, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v10, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v8    # "fqan":Ljava/lang/String;
    .end local v9    # "f":Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 55
    .end local v3    # "attr":Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
    .end local v4    # "values":[Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "idx":I
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 73
    .restart local v3    # "attr":Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "idx":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VOMS attribute values are not encoded as octet strings, policyAuthority = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    .end local p1    # "ac":Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    throw v0

    .line 65
    .restart local v1    # "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    .restart local p1    # "ac":Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad encoding of VOMS policyAuthority : ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    .end local p1    # "ac":Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v2    # "i":I
    .end local v3    # "attr":Lorg/bouncycastle/asn1/x509/IetfAttrSyntax;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "idx":I
    .restart local v1    # "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    .restart local p1    # "ac":Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    :cond_5
    nop

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 98
    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;->getIssuer()Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Badly encoded VOMS extension in AC issued by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 41
    .end local v0    # "ie":Ljava/lang/IllegalArgumentException;
    .end local v1    # "l":[Lorg/bouncycastle/asn1/x509/Attribute;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "VOMSAttribute: AttributeCertificate is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAC()Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myAC:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    return-object v0
.end method

.method public getFullyQualifiedAttributes()Ljava/util/List;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myStringList:Ljava/util/List;

    return-object v0
.end method

.method public getHostPort()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    return-object v0
.end method

.method public getListOfFQAN()Ljava/util/List;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    return-object v0
.end method

.method public getVO()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myVo:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myHostPort:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute;->myFQANs:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VO      :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\nHostPort:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFQANs   :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
