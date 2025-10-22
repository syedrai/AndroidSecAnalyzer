.class public Lorg/bouncycastle/voms/VOMSAttribute$FQAN;
.super Ljava/lang/Object;
.source "VOMSAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/voms/VOMSAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FQAN"
.end annotation


# instance fields
.field capability:Ljava/lang/String;

.field fqan:Ljava/lang/String;

.field group:Ljava/lang/String;

.field role:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fqan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fqan"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;
    .param p3, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "role",
            "capability"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public getCapability()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    .line 234
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    return-object v0
.end method

.method public getFQAN()Ljava/lang/String;
    .locals 5

    .line 177
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 183
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Capability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/Role="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    .line 214
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->split()V

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    return-object v0
.end method

.method protected split()V
    .locals 7

    .line 190
    iget-object v0, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 191
    .local v0, "len":I
    iget-object v1, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const-string v2, "/Role="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, "i":I
    if-gez v1, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->group:Ljava/lang/String;

    .line 200
    iget-object v2, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x6

    const-string v4, "/Capability="

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 201
    .local v2, "j":I
    iget-object v3, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v4, v1, 0x6

    if-gez v2, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    iput-object v4, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->role:Ljava/lang/String;

    .line 203
    if-gez v2, :cond_3

    move-object v4, v5

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->fqan:Ljava/lang/String;

    add-int/lit8 v6, v2, 0xc

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, v4

    :cond_5
    :goto_3
    iput-object v5, p0, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->capability:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lorg/bouncycastle/voms/VOMSAttribute$FQAN;->getFQAN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
