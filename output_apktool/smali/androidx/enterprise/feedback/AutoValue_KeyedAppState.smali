.class final Landroidx/enterprise/feedback/AutoValue_KeyedAppState;
.super Landroidx/enterprise/feedback/KeyedAppState;
.source "AutoValue_KeyedAppState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/AutoValue_KeyedAppState$Builder;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final severity:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "severity"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "severity",
            "message",
            "data"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppState;-><init>()V

    .line 24
    iput-object p1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    .line 25
    iput p2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    .line 26
    iput-object p3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroidx/enterprise/feedback/AutoValue_KeyedAppState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 67
    return v0

    .line 69
    :cond_0
    instance-of v1, p1, Landroidx/enterprise/feedback/KeyedAppState;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 70
    move-object v1, p1

    check-cast v1, Landroidx/enterprise/feedback/KeyedAppState;

    .line 71
    .local v1, "that":Landroidx/enterprise/feedback/KeyedAppState;
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    .line 72
    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getSeverity()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 73
    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 74
    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 71
    :goto_2
    return v0

    .line 76
    .end local v1    # "that":Landroidx/enterprise/feedback/KeyedAppState;
    :cond_4
    return v2
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSeverity()I
    .locals 1

    .line 39
    iget v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 81
    const/4 v0, 0x1

    .line 82
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int v0, v0, v1

    .line 83
    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 84
    mul-int v0, v0, v1

    .line 85
    iget v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    xor-int/2addr v0, v2

    .line 86
    mul-int v0, v0, v1

    .line 87
    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 88
    mul-int v0, v0, v1

    .line 89
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    .line 90
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 56
    iget-object v0, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->key:Ljava/lang/String;

    iget v1, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->severity:I

    iget-object v2, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->message:Ljava/lang/String;

    iget-object v3, p0, Landroidx/enterprise/feedback/AutoValue_KeyedAppState;->data:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyedAppState{key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", severity="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
