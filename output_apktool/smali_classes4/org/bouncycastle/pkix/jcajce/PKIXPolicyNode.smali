.class public Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
.super Ljava/lang/Object;
.source "PKIXPolicyNode.java"

# interfaces
.implements Ljava/security/cert/PolicyNode;


# instance fields
.field protected children:Ljava/util/List;

.field protected critical:Z

.field protected depth:I

.field protected expectedPolicies:Ljava/util/Set;

.field protected parent:Ljava/security/cert/PolicyNode;

.field protected policyQualifiers:Ljava/util/Set;

.field protected validPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "_children"    # Ljava/util/List;
    .param p2, "_depth"    # I
    .param p3, "_expectedPolicies"    # Ljava/util/Set;
    .param p4, "_parent"    # Ljava/security/cert/PolicyNode;
    .param p5, "_policyQualifiers"    # Ljava/util/Set;
    .param p6, "_validPolicy"    # Ljava/lang/String;
    .param p7, "_critical"    # Z
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
            "_children",
            "_depth",
            "_expectedPolicies",
            "_parent",
            "_policyQualifiers",
            "_validPolicy",
            "_critical"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    .line 37
    iput p2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->depth:I

    .line 38
    iput-object p3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 39
    iput-object p4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 40
    iput-object p5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    .line 41
    iput-object p6, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->critical:Z

    .line 43
    return-void
.end method


# virtual methods
.method public addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V
    .locals 1
    .param p1, "_child"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_child"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1, p0}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setParent(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 50
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->copy()Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .locals 9

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v4, v0

    .line 137
    .local v4, "_expectedPolicies":Ljava/util/Set;
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v6, "_policyQualifiers":Ljava/util/Set;
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 145
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    :cond_1
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->depth:I

    new-instance v7, Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->critical:Z

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 158
    .local v1, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->copy()Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    .line 162
    .local v2, "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setParent(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 163
    invoke-virtual {v1, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 164
    .end local v2    # "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto :goto_2

    .line 166
    :cond_2
    return-object v1
.end method

.method public getChildren()Ljava/util/Iterator;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->depth:I

    return v0
.end method

.method public getExpectedPolicies()Ljava/util/Set;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    return-object v0
.end method

.method public getParent()Ljava/security/cert/PolicyNode;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getPolicyQualifiers()Ljava/util/Set;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->policyQualifiers:Ljava/util/Set;

    return-object v0
.end method

.method public getValidPolicy()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCritical()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->critical:Z

    return v0
.end method

.method public removeChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V
    .locals 1
    .param p1, "_child"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_child"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setCritical(Z)V
    .locals 0
    .param p1, "_critical"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_critical"
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->critical:Z

    .line 100
    return-void
.end method

.method public setExpectedPolicies(Ljava/util/Set;)V
    .locals 0
    .param p1, "expectedPolicies"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expectedPolicies"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 172
    return-void
.end method

.method public setParent(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V
    .locals 0
    .param p1, "_parent"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_parent"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->parent:Ljava/security/cert/PolicyNode;

    .line 105
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "_indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "_indent"
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "_buf":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->validPolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v1, " {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 121
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
