.class public Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;
.super Lorg/bouncycastle/crypto/constraints/ServicesConstraint;
.source "LegacyBitsOfSecurityConstraint.java"


# instance fields
.field private final legacyRequiredBitsOfSecurity:I

.field private final requiredBitsOfSecurity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "requiredBitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requiredBitsOfSecurity"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(II)V

    .line 31
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "requiredBitsOfSecurity"    # I
    .param p2, "legacyRequiredBitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requiredBitsOfSecurity",
            "legacyRequiredBitsOfSecurity"
        }
    .end annotation

    .line 41
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    .line 43
    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    .line 44
    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    .line 45
    return-void
.end method

.method public constructor <init>(IILjava/util/Set;)V
    .locals 0
    .param p1, "requiredBitsOfSecurity"    # I
    .param p2, "legacyRequiredBitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requiredBitsOfSecurity",
            "legacyRequiredBitsOfSecurity",
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p3, "exceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    .line 69
    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    .line 70
    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .param p1, "requiredBitsOfSecurity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "requiredBitsOfSecurity",
            "exceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "exceptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(IILjava/util/Set;)V

    .line 56
    return-void
.end method


# virtual methods
.method public check(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 7
    .param p1, "service"    # Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 75
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->isException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    .line 83
    .local v0, "purpose":Lorg/bouncycastle/crypto/CryptoServicePurpose;
    sget-object v1, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, " bits of security only "

    const-string v3, "service does not provide "

    packed-switch v1, :pswitch_data_0

    .line 100
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v1

    iget v4, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    if-lt v1, v4, :cond_3

    .line 104
    return-void

    .line 89
    :pswitch_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v1

    iget v4, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    if-lt v1, v4, :cond_2

    .line 93
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    sget-object v1, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usage of legacy cryptography service for algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "org.bouncycastle.crypto.constraints.LegacyBitsOfSecurityConstraint"

    const-string v5, "check"

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void

    .line 91
    :cond_2
    new-instance v1, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    iget v4, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_3
    new-instance v1, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    iget v4, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
