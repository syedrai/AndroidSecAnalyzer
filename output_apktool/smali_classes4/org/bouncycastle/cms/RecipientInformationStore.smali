.class public Lorg/bouncycastle/cms/RecipientInformationStore;
.super Ljava/lang/Object;
.source "RecipientInformationStore.java"

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bouncycastle/util/Iterable<",
        "Lorg/bouncycastle/cms/RecipientInformation;",
        ">;"
    }
.end annotation


# instance fields
.field private final all:Ljava/util/List;

.field private final table:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "recipientInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/RecipientInformation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    .line 38
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/RecipientInformation;

    .line 43
    .local v1, "recipientInformation":Lorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual {v1}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v2

    .line 45
    .local v2, "rid":Lorg/bouncycastle/cms/RecipientId;
    iget-object v3, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 46
    .local v3, "list":Ljava/util/List;
    if-nez v3, :cond_0

    .line 48
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 49
    iget-object v4, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v1    # "recipientInformation":Lorg/bouncycastle/cms/RecipientInformation;
    .end local v2    # "rid":Lorg/bouncycastle/cms/RecipientId;
    .end local v3    # "list":Ljava/util/List;
    goto :goto_0

    .line 55
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/RecipientInformation;)V
    .locals 3
    .param p1, "recipientInformation"    # Lorg/bouncycastle/cms/RecipientInformation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInformation"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {p1}, Lorg/bouncycastle/cms/RecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object v0

    .line 32
    .local v0, "sid":Lorg/bouncycastle/cms/RecipientId;
    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    iget-object v2, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public get(Lorg/bouncycastle/cms/RecipientId;)Lorg/bouncycastle/cms/RecipientInformation;
    .locals 2
    .param p1, "selector"    # Lorg/bouncycastle/cms/RecipientId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v0

    .line 70
    .local v0, "list":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/cms/RecipientInformation;

    :goto_0
    return-object v1
.end method

.method public getRecipients()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;
    .locals 6
    .param p1, "selector"    # Lorg/bouncycastle/cms/RecipientId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/cms/RecipientId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;"
        }
    .end annotation

    .line 102
    instance-of v0, p1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    if-eqz v0, :cond_2

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cms/KeyTransRecipientId;

    .line 106
    .local v0, "keyTrans":Lorg/bouncycastle/cms/KeyTransRecipientId;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    .line 107
    .local v1, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSubjectKeyIdentifier()[B

    move-result-object v2

    .line 109
    .local v2, "subjectKeyId":[B
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/cms/RecipientInformation;>;"
    new-instance v4, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v4

    .line 114
    .local v4, "match1":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/RecipientInformation;>;"
    if-eqz v4, :cond_0

    .line 116
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_0
    new-instance v5, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-direct {v5, v2}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>([B)V

    invoke-virtual {p0, v5}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients(Lorg/bouncycastle/cms/RecipientId;)Ljava/util/Collection;

    move-result-object v5

    .line 120
    .local v5, "match2":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/RecipientInformation;>;"
    if-eqz v5, :cond_1

    .line 122
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_1
    return-object v3

    .line 129
    .end local v0    # "keyTrans":Lorg/bouncycastle/cms/KeyTransRecipientId;
    .end local v1    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v2    # "subjectKeyId":[B
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/cms/RecipientInformation;>;"
    .end local v4    # "match1":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/RecipientInformation;>;"
    .end local v5    # "match2":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/bouncycastle/cms/RecipientInformation;>;"
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 131
    .local v0, "list":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/cms/RecipientInformation;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
