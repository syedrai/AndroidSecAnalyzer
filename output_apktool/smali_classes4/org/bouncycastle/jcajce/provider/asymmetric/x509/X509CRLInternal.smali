.class Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;
.source "X509CRLInternal.java"


# instance fields
.field private final encoding:[B

.field private final exception:Ljava/security/cert/CRLException;


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ[BLjava/security/cert/CRLException;)V
    .locals 1
    .param p1, "bcHelper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .param p2, "c"    # Lorg/bouncycastle/asn1/x509/CertificateList;
    .param p3, "sigAlgName"    # Ljava/lang/String;
    .param p4, "sigAlgParams"    # [B
    .param p5, "isIndirect"    # Z
    .param p6, "encoding"    # [B
    .param p7, "exception"    # Ljava/security/cert/CRLException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "sigAlgName",
            "sigAlgParams",
            "isIndirect",
            "encoding",
            "exception"
        }
    .end annotation

    .line 22
    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLImpl;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/x509/CertificateList;Ljava/lang/String;[BZ)V

    .line 24
    move v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .local v0, "isIndirect":Z
    .local p2, "bcHelper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .local p3, "c":Lorg/bouncycastle/asn1/x509/CertificateList;
    .local p4, "sigAlgName":Ljava/lang/String;
    .local p5, "sigAlgParams":[B
    iput-object p6, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    .line 25
    iput-object p7, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    .line 26
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    if-nez v0, :cond_1

    .line 35
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->encoding:[B

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Ljava/security/cert/CRLException;

    invoke-direct {v0}, Ljava/security/cert/CRLException;-><init>()V

    throw v0

    .line 32
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/X509CRLInternal;->exception:Ljava/security/cert/CRLException;

    throw v0
.end method
