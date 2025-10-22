.class public Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;
.super Ljava/lang/Object;
.source "X509AttributeCertificateHolderSelectorBuilder.java"


# instance fields
.field private attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

.field private attributeCertificateValid:Ljava/util/Date;

.field private holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

.field private issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

.field private serialNumber:Ljava/math/BigInteger;

.field private targetGroups:Ljava/util/Collection;

.field private targetNames:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    .line 41
    return-void
.end method

.method private extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v0, "temp":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-object v0

    .line 177
    .end local v0    # "temp":Ljava/util/Set;
    :cond_2
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addTargetGroup(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "group"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public addTargetName(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "name"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public build()Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
    .locals 9

    .line 189
    new-instance v0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;

    iget-object v1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    iget-object v2, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v3, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->serialNumber:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    iget-object v5, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    new-instance v6, Ljava/util/HashSet;

    iget-object v7, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    invoke-static {v6}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    iget-object v8, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;-><init>(Lorg/bouncycastle/cert/AttributeCertificateHolder;Lorg/bouncycastle/cert/AttributeCertificateIssuer;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/cert/X509AttributeCertificateHolder;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 192
    .local v0, "sel":Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelector;
    return-object v0
.end method

.method public setAttributeCert(Lorg/bouncycastle/cert/X509AttributeCertificateHolder;)V
    .locals 0
    .param p1, "attributeCert"    # Lorg/bouncycastle/cert/X509AttributeCertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeCert"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCert:Lorg/bouncycastle/cert/X509AttributeCertificateHolder;

    .line 52
    return-void
.end method

.method public setAttributeCertificateValid(Ljava/util/Date;)V
    .locals 3
    .param p1, "attributeCertificateValid"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributeCertificateValid"
        }
    .end annotation

    .line 63
    if-eqz p1, :cond_0

    .line 65
    new-instance v0, Ljava/util/Date;

    .line 66
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    goto :goto_0

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->attributeCertificateValid:Ljava/util/Date;

    .line 72
    :goto_0
    return-void
.end method

.method public setHolder(Lorg/bouncycastle/cert/AttributeCertificateHolder;)V
    .locals 0
    .param p1, "holder"    # Lorg/bouncycastle/cert/AttributeCertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->holder:Lorg/bouncycastle/cert/AttributeCertificateHolder;

    .line 82
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/cert/AttributeCertificateIssuer;)V
    .locals 0
    .param p1, "issuer"    # Lorg/bouncycastle/cert/AttributeCertificateIssuer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "issuer"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->issuer:Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    .line 93
    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialNumber"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->serialNumber:Ljava/math/BigInteger;

    .line 104
    return-void
.end method

.method public setTargetGroups(Ljava/util/Collection;)V
    .locals 1
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetGroups:Ljava/util/Collection;

    .line 170
    return-void
.end method

.method public setTargetNames(Ljava/util/Collection;)V
    .locals 1
    .param p1, "names"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "names"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->extractGeneralNames(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/selector/X509AttributeCertificateHolderSelectorBuilder;->targetNames:Ljava/util/Collection;

    .line 137
    return-void
.end method
