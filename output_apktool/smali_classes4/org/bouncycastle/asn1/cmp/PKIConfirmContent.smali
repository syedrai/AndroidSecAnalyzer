.class public Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "PKIConfirmContent.java"


# instance fields
.field private final val:Lorg/bouncycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    sget-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    .line 24
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Null;)V
    .locals 0
    .param p1, "val"    # Lorg/bouncycastle/asn1/ASN1Null;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    .line 19
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 28
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Null;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;-><init>(Lorg/bouncycastle/asn1/ASN1Null;)V

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    :goto_0
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIConfirmContent;->val:Lorg/bouncycastle/asn1/ASN1Null;

    return-object v0
.end method
