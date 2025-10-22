.class Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;
.super Ljava/security/cert/X509CRLSelector;
.source "X509RevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$issuerList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$issuerList"
        }
    .end annotation

    .line 539
    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;->val$issuerList:Ljava/util/List;

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .locals 3
    .param p1, "crl"    # Ljava/security/cert/CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crl"
        }
    .end annotation

    .line 542
    instance-of v0, p1, Ljava/security/cert/X509CRL;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 544
    return v1

    .line 547
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;->val$issuerList:Ljava/util/List;

    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    return v1
.end method
