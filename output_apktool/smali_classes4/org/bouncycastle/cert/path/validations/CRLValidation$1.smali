.class Lorg/bouncycastle/cert/path/validations/CRLValidation$1;
.super Ljava/lang/Object;
.source "CRLValidation.java"

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cert/path/validations/CRLValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/path/validations/CRLValidation;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/cert/path/validations/CRLValidation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;->this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 43
    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 36
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/X509CRLHolder;

    .line 38
    .local v0, "crl":Lorg/bouncycastle/cert/X509CRLHolder;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CRLHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;->this$0:Lorg/bouncycastle/cert/path/validations/CRLValidation;

    invoke-static {v2}, Lorg/bouncycastle/cert/path/validations/CRLValidation;->-$$Nest$fgetworkingIssuerName(Lorg/bouncycastle/cert/path/validations/CRLValidation;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
