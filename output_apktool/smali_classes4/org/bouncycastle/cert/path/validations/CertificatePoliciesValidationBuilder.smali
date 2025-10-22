.class public Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;
.super Ljava/lang/Object;
.source "CertificatePoliciesValidationBuilder.java"


# instance fields
.field private isAnyPolicyInhibited:Z

.field private isExplicitPolicyRequired:Z

.field private isPolicyMappingInhibited:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(I)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    .locals 4
    .param p1, "pathLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathLen"
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isExplicitPolicyRequired:Z

    iget-boolean v2, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isAnyPolicyInhibited:Z

    iget-boolean v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isPolicyMappingInhibited:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/cert/path/CertPath;)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    .locals 1
    .param p1, "path"    # Lorg/bouncycastle/cert/path/CertPath;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPath;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->build(I)Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    move-result-object v0

    return-object v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .locals 0
    .param p1, "anyPolicyInhibited"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anyPolicyInhibited"
        }
    .end annotation

    .line 13
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isAnyPolicyInhibited:Z

    .line 14
    return-void
.end method

.method public setExplicitPolicyRequired(Z)V
    .locals 0
    .param p1, "explicitPolicyRequired"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "explicitPolicyRequired"
        }
    .end annotation

    .line 18
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isExplicitPolicyRequired:Z

    .line 19
    return-void
.end method

.method public setPolicyMappingInhibited(Z)V
    .locals 0
    .param p1, "policyMappingInhibited"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyMappingInhibited"
        }
    .end annotation

    .line 23
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidationBuilder;->isPolicyMappingInhibited:Z

    .line 24
    return-void
.end method
