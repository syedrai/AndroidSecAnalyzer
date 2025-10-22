.class public Lorg/bouncycastle/oer/its/etsi102941/DcDelete;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "DcDelete.java"


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->url:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V
    .locals 1
    .param p1, "url"    # Lorg/bouncycastle/asn1/ASN1IA5String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->url:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/etsi102941/DcDelete;
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

    .line 25
    instance-of v0, p0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;

    return-object v0

    .line 30
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1IA5String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;)V

    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    .line 40
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/etsi102941/DcDelete;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
