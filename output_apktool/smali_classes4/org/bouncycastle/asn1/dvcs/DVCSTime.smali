.class public Lorg/bouncycastle/asn1/dvcs/DVCSTime;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DVCSTime.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

.field private final timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V
    .locals 1
    .param p1, "genTime"    # Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genTime"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .param p1, "timeStampToken"    # Lorg/bouncycastle/asn1/cms/ContentInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStampToken"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    .line 44
    iput-object p1, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    .line 45
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
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

    .line 49
    instance-of v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    if-eqz v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    return-object v0

    .line 53
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)V

    return-object v0

    .line 57
    :cond_1
    if-eqz p0, :cond_2

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    invoke-static {p0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/dvcs/DVCSTime;
    .locals 2
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
    if-eqz p1, :cond_0

    .line 74
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/dvcs/DVCSTime;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "choice item must be explicitly tagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGenTime()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->genTime:Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/dvcs/DVCSTime;->timeStampToken:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
