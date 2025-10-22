.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;
.source "X509CertificateInternal.java"


# instance fields
.field private final encoding:[B

.field private final exception:Ljava/security/cert/CertificateEncodingException;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V
    .locals 1
    .param p1, "bcHelper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lorg/bouncycastle/asn1/x509/Certificate;
    .param p3, "basicConstraints"    # Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .param p4, "keyUsage"    # [Z
    .param p5, "sigAlgName"    # Ljava/lang/String;
    .param p6, "sigAlgParams"    # [B
    .param p7, "encoding"    # [B
    .param p8, "exception"    # Ljava/security/cert/CertificateEncodingException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bcHelper",
            "c",
            "basicConstraints",
            "keyUsage",
            "sigAlgName",
            "sigAlgParams",
            "encoding",
            "exception"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateImpl;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/BasicConstraints;[ZLjava/lang/String;[B)V

    .line 25
    move-object v0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .local v0, "sigAlgParams":[B
    .local p2, "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .local p3, "c":Lorg/bouncycastle/asn1/x509/Certificate;
    .local p4, "basicConstraints":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local p5, "keyUsage":[Z
    .local p6, "sigAlgName":Ljava/lang/String;
    iput-object p7, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    .line 26
    iput-object p8, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    .line 27
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    if-nez v0, :cond_1

    .line 36
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->encoding:[B

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CertificateInternal;->exception:Ljava/security/cert/CertificateEncodingException;

    throw v0
.end method
