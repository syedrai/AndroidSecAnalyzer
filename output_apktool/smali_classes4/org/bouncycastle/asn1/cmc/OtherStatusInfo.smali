.class public Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "OtherStatusInfo.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

.field private final failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V
    .locals 1
    .param p1, "failInfo"    # Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "failInfo"
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 71
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 0
    .param p1, "failInfo"    # Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
    .param p2, "pendInfo"    # Lorg/bouncycastle/asn1/cmc/PendInfo;
    .param p3, "extendedFailInfo"    # Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "failInfo",
            "pendInfo",
            "extendedFailInfo"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    .line 86
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    .line 87
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    .line 88
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V
    .locals 1
    .param p1, "extendedFailInfo"    # Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extendedFailInfo"
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 81
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V
    .locals 1
    .param p1, "pendInfo"    # Lorg/bouncycastle/asn1/cmc/PendInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pendInfo"
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    .line 76
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 32
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    if-eqz v0, :cond_0

    .line 34
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    return-object v0

    .line 37
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_4

    .line 39
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 41
    .local v0, "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 43
    new-instance v1, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V

    return-object v1

    .line 45
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_3

    .line 47
    move-object v1, v0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_2

    .line 49
    new-instance v1, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;)V

    return-object v1

    .line 51
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PendInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;-><init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    return-object v1

    .line 53
    .end local v0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_3
    goto :goto_0

    .line 54
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    .line 58
    :try_start_0
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parsing error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_0
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
.end method


# virtual methods
.method public isExtendedFailInfo()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailInfo()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPendingInfo()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

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

    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/OtherStatusInfo;->extendedFailInfo:Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/ExtendedFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
