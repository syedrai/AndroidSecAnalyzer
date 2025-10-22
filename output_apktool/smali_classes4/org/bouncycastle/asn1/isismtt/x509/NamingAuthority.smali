.class public Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "NamingAuthority.java"


# static fields
.field public static final id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private namingAuthorityUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_namingAuthorities:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->id_isismtt_at_namingAuthorities_RechtWirtschaftSteuern:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 0
    .param p1, "namingAuthorityId"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "namingAuthorityUrl"    # Ljava/lang/String;
    .param p3, "namingAuthorityText"    # Lorg/bouncycastle/asn1/x500/DirectoryString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "namingAuthorityId",
            "namingAuthorityUrl",
            "namingAuthorityText"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 186
    iput-object p1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 187
    iput-object p2, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    .line 189
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_9

    .line 94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 96
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, "Bad object encountered: "

    if-eqz v1, :cond_3

    .line 98
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 99
    .local v1, "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_0

    .line 101
    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 103
    :cond_0
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v3, :cond_1

    .line 105
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_1
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v3, :cond_2

    .line 109
    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_0

    .line 113
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 119
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 120
    .restart local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v3, :cond_4

    .line 122
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_4
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v3, :cond_5

    .line 126
    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_1

    .line 130
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 136
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    .line 137
    .restart local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v3, v1, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v3, :cond_7

    .line 139
    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_2

    .line 143
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v1    # "o":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_8
    :goto_2
    return-void

    .line 90
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 91
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
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

    .line 53
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal object in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;
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

    .line 69
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNamingAuthorityId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getNamingAuthorityText()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getNamingAuthorityUrl()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 208
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 209
    .local v0, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityId:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 213
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v2, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityUrl:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 217
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_2

    .line 219
    iget-object v1, p0, Lorg/bouncycastle/asn1/isismtt/x509/NamingAuthority;->namingAuthorityText:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 221
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
