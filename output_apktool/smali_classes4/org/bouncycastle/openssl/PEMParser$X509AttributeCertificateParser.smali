.class Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;
.super Ljava/lang/Object;
.source "PEMParser.java"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509AttributeCertificateParser"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/openssl/PEMParser-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/openssl/PEMParser$X509AttributeCertificateParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Lorg/bouncycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    new-instance v0, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509AttributeCertificateHolder;-><init>([B)V

    return-object v0
.end method
