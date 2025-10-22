.class public Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "CMCStatusInfo.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/cmc/CMCStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OtherInfo"
.end annotation


# instance fields
.field private final failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

.field private final pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;


# direct methods
.method static bridge synthetic -$$Nest$smgetInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    move-result-object p0

    return-object p0
.end method

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

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    .line 182
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V
    .locals 0
    .param p1, "failInfo"    # Lorg/bouncycastle/asn1/cmc/CMCFailInfo;
    .param p2, "pendInfo"    # Lorg/bouncycastle/asn1/cmc/PendInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "failInfo",
            "pendInfo"
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 191
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    .line 192
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    .line 193
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

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    .line 187
    return-void
.end method

.method private static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;
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

    .line 158
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    if-eqz v0, :cond_0

    .line 160
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    return-object v0

    .line 163
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    .line 165
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 167
    .local v0, "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 169
    new-instance v1, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/CMCFailInfo;)V

    return-object v1

    .line 171
    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    .line 173
    new-instance v1, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PendInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;-><init>(Lorg/bouncycastle/asn1/cmc/PendInfo;)V

    return-object v1

    .line 176
    .end local v0    # "asn1Value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :cond_2
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
.method public isFailInfo()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

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

    .line 202
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->pendInfo:Lorg/bouncycastle/asn1/cmc/PendInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/PendInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 206
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/CMCStatusInfo$OtherInfo;->failInfo:Lorg/bouncycastle/asn1/cmc/CMCFailInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmc/CMCFailInfo;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
