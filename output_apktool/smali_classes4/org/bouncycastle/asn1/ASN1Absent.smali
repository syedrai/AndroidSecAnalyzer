.class public Lorg/bouncycastle/asn1/ASN1Absent;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "ASN1Absent.java"


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Absent;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1Absent;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1
    .param p1, "o"    # Lorg/bouncycastle/asn1/ASN1Primitive;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 43
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 0
    .param p1, "out"    # Lorg/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method encodeConstructed()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method encodedLength(Z)I
    .locals 1
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "withTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 21
    const/4 v0, 0x0

    return v0
.end method
