.class public Lorg/bouncycastle/asn1/cms/MetaData;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "MetaData.java"


# instance fields
.field private fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

.field private hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

.field private otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/Attributes;)V
    .locals 0
    .param p1, "hashProtected"    # Lorg/bouncycastle/asn1/ASN1Boolean;
    .param p2, "fileName"    # Lorg/bouncycastle/asn1/ASN1UTF8String;
    .param p3, "mediaType"    # Lorg/bouncycastle/asn1/ASN1IA5String;
    .param p4, "otherMetaData"    # Lorg/bouncycastle/asn1/cms/Attributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hashProtected",
            "fileName",
            "mediaType",
            "otherMetaData"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 42
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    .line 43
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    .line 44
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    .line 45
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    .line 51
    const/4 v0, 0x1

    .line 53
    .local v0, "index":I
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    .line 55
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    move v0, v1

    .line 57
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_1

    .line 59
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    move v0, v1

    .line 61
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 63
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Attributes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    move v0, v1

    .line 65
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/MetaData;
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

    .line 82
    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    .line 84
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cms/MetaData;

    return-object v0

    .line 86
    :cond_0
    if-eqz p0, :cond_1

    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/MetaData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 91
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFileName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    check-cast v0, Lorg/bouncycastle/asn1/DERUTF8String;

    .line 128
    :goto_1
    return-object v0
.end method

.method public getFileNameUTF8()Lorg/bouncycastle/asn1/ASN1UTF8String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    return-object v0
.end method

.method public getMediaType()Lorg/bouncycastle/asn1/DERIA5String;
    .locals 3

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    check-cast v0, Lorg/bouncycastle/asn1/DERIA5String;

    .line 143
    :goto_1
    return-object v0
.end method

.method public getMediaTypeIA5()Lorg/bouncycastle/asn1/ASN1IA5String;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    return-object v0
.end method

.method public getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    return-object v0
.end method

.method public isHashProtected()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 98
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->hashProtected:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->fileName:Lorg/bouncycastle/asn1/ASN1UTF8String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->mediaType:Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/MetaData;->otherMetaData:Lorg/bouncycastle/asn1/cms/Attributes;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 115
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
