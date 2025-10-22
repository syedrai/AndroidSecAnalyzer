.class public Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS12ParseInfo"
.end annotation


# instance fields
.field public alias:Ljava/lang/String;

.field public certificate:Ljava/security/cert/X509Certificate;

.field public privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p3, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "alias",
            "certificate",
            "privateKey"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->alias:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->certificate:Ljava/security/cert/X509Certificate;

    .line 84
    iput-object p3, p0, Lcom/afwsamples/testdpc/common/CertificateUtil$PKCS12ParseInfo;->privateKey:Ljava/security/PrivateKey;

    .line 85
    return-void
.end method
