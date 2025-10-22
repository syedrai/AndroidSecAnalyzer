.class public Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;
.super Lorg/bouncycastle/asn1/DERBitString;
.source "NetscapeCertType.java"


# static fields
.field public static final objectSigning:I = 0x10

.field public static final objectSigningCA:I = 0x1

.field public static final reserved:I = 0x8

.field public static final smime:I = 0x20

.field public static final smimeCA:I = 0x2

.field public static final sslCA:I = 0x4

.field public static final sslClient:I = 0x80

.field public static final sslServer:I = 0x40


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "usage"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 2
    .param p1, "usage"    # Lorg/bouncycastle/asn1/ASN1BitString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usage"
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 49
    return-void
.end method


# virtual methods
.method public hasUsages(I)Z
    .locals 1
    .param p1, "usages"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usages"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;->intValue()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 58
    invoke-virtual {p0}, Lorg/bouncycastle/internal/asn1/misc/NetscapeCertType;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetscapeCertType: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
