.class public Lorg/bouncycastle/tsp/GenTimeAccuracy;
.super Ljava/lang/Object;
.source "GenTimeAccuracy.java"


# instance fields
.field private accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/Accuracy;)V
    .locals 0
    .param p1, "accuracy"    # Lorg/bouncycastle/asn1/tsp/Accuracy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accuracy"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    .line 13
    return-void
.end method

.method private format(I)Ljava/lang/String;
    .locals 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 48
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I
    .locals 1
    .param p1, "time"    # Lorg/bouncycastle/asn1/ASN1Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 33
    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v0

    return v0

    .line 38
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getMicros()I
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getMicros()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getMillis()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/bouncycastle/tsp/GenTimeAccuracy;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getSeconds()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getTimeComponent(Lorg/bouncycastle/asn1/ASN1Integer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getMillis()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->getMicros()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/tsp/GenTimeAccuracy;->format(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
