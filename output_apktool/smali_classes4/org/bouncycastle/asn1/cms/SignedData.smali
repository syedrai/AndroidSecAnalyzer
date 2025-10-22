.class public Lorg/bouncycastle/asn1/cms/SignedData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SignedData.java"


# static fields
.field private static final VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

.field private static final VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;


# instance fields
.field private certificates:Lorg/bouncycastle/asn1/ASN1Set;

.field private certsBer:Z

.field private final contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private crls:Lorg/bouncycastle/asn1/ASN1Set;

.field private crlsBer:Z

.field private final digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

.field private final digsBer:Z

.field private final signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

.field private final sigsBer:Z

.field private final version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 63
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 64
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 227
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 229
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 230
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    .line 231
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "sigInfs":Lorg/bouncycastle/asn1/ASN1Set;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Primitive;

    .line 243
    .local v2, "o":Lorg/bouncycastle/asn1/ASN1Primitive;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    .line 245
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 247
    .local v3, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 258
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown tag value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 254
    :pswitch_0
    instance-of v4, v3, Lorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 255
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    .line 256
    goto :goto_1

    .line 250
    :pswitch_1
    instance-of v4, v3, Lorg/bouncycastle/asn1/BERTaggedObject;

    iput-boolean v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 251
    invoke-static {v3, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    .line 252
    nop

    .line 260
    .end local v3    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    goto :goto_2

    .line 263
    :cond_0
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_1

    .line 267
    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Set;

    .line 269
    .end local v2    # "o":Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_2
    goto :goto_0

    .line 265
    .restart local v2    # "o":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "SET expected, not encountered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 271
    .end local v2    # "o":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_2
    if-eqz v1, :cond_3

    .line 276
    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 277
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    instance-of v2, v2, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    .line 278
    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    instance-of v2, v2, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    .line 279
    return-void

    .line 273
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "signerInfos not set"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 1
    .param p1, "digestAlgorithms"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p2, "contentInfo"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .param p3, "certificates"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p4, "crls"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p5, "signerInfos"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digestAlgorithms",
            "contentInfo",
            "certificates",
            "crls",
            "signerInfos"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 115
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, p5}, Lorg/bouncycastle/asn1/cms/SignedData;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    .line 116
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    .line 117
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 118
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    .line 119
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    .line 120
    iput-object p5, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 121
    instance-of v0, p1, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    .line 122
    instance-of v0, p4, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    .line 123
    instance-of v0, p3, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    .line 124
    instance-of v0, p5, Lorg/bouncycastle/asn1/BERSet;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    .line 125
    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 9
    .param p1, "contentOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "certs"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p3, "crls"    # Lorg/bouncycastle/asn1/ASN1Set;
    .param p4, "signerInfs"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentOid",
            "certs",
            "crls",
            "signerInfs"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "otherCert":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "otherCrl":Z
    const/4 v2, 0x0

    .line 137
    .local v2, "attrCertV1Found":Z
    const/4 v3, 0x0

    .line 139
    .local v3, "attrCertV2Found":Z
    if-eqz p2, :cond_3

    .line 141
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 144
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_2

    .line 146
    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v6

    .line 148
    .local v6, "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 150
    const/4 v2, 0x1

    goto :goto_1

    .line 152
    :cond_0
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 154
    const/4 v3, 0x1

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 158
    const/4 v0, 0x1

    .line 161
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "tagged":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    :goto_1
    goto :goto_0

    .line 164
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_3
    if-eqz v0, :cond_4

    .line 166
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v5, 0x5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    return-object v4

    .line 169
    :cond_4
    if-eqz p3, :cond_6

    .line 171
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .restart local v4    # "en":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    .line 174
    .restart local v5    # "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v6, :cond_5

    .line 176
    const/4 v1, 0x1

    .line 178
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_5
    goto :goto_2

    .line 181
    .end local v4    # "en":Ljava/util/Enumeration;
    :cond_6
    if-eqz v1, :cond_7

    .line 183
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_5:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 186
    :cond_7
    if-eqz v3, :cond_8

    .line 188
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_4:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 191
    :cond_8
    if-eqz v2, :cond_9

    .line 193
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 196
    :cond_9
    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/cms/SignedData;->checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 198
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 201
    :cond_a
    sget-object v4, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 203
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_3:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4

    .line 206
    :cond_b
    sget-object v4, Lorg/bouncycastle/asn1/cms/SignedData;->VERSION_1:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v4
.end method

.method private checkForVersion3(Lorg/bouncycastle/asn1/ASN1Set;)Z
    .locals 4
    .param p1, "signerInfs"    # Lorg/bouncycastle/asn1/ASN1Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signerInfs"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v1

    .line 215
    .local v1, "s":Lorg/bouncycastle/asn1/cms/SignerInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v2, 0x1

    return v2

    .line 219
    .end local v1    # "s":Lorg/bouncycastle/asn1/cms/SignerInfo;
    :cond_0
    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;
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

    .line 96
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;

    if-eqz v0, :cond_0

    .line 98
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/SignedData;

    return-object v0

    .line 100
    :cond_0
    if-eqz p0, :cond_1

    .line 102
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 105
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCRLs()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    .line 316
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 318
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 319
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digestAlgorithms:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 320
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 322
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 324
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_0

    .line 326
    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 330
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certificates:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 334
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    .line 336
    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 338
    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 342
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crls:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 346
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->signerInfos:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 348
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->isDefiniteLength()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->digsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->sigsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->crlsBer:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/cms/SignedData;->certsBer:Z

    if-eqz v1, :cond_4

    goto :goto_2

    .line 354
    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 350
    :cond_5
    :goto_2
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
