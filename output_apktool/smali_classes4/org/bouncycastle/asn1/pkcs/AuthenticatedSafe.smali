.class public Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "AuthenticatedSafe.java"


# instance fields
.field private info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

.field private isBer:Z


# direct methods
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

    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v2

    aput-object v2, v1, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "i":I
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/BERSequence;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 27
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)V
    .locals 1
    .param p1, "info"    # [Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 49
    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 3
    .param p1, "infos"    # [Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infos"
        }
    .end annotation

    .line 58
    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    .line 60
    .local v0, "tmp":[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;
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

    .line 32
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    return-object v0

    .line 37
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContentInfo()[Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->copy([Lorg/bouncycastle/asn1/pkcs/ContentInfo;)[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 67
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->isBer:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DLSequence;

    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/AuthenticatedSafe;->info:[Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
