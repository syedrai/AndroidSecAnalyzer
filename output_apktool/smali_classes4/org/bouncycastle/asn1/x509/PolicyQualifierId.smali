.class public Lorg/bouncycastle/asn1/x509/PolicyQualifierId;
.super Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "PolicyQualifierId.java"


# static fields
.field private static final id_qt:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final id_qt_cps:Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

.field public static final id_qt_unotice:Lorg/bouncycastle/asn1/x509/PolicyQualifierId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_cps:Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/PolicyQualifierId;->id_qt_unotice:Lorg/bouncycastle/asn1/x509/PolicyQualifierId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
