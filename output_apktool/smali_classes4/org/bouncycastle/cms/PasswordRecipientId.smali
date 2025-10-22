.class public Lorg/bouncycastle/cms/PasswordRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;
.source "PasswordRecipientId.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 32
    new-instance v0, Lorg/bouncycastle/cms/PasswordRecipientId;

    invoke-direct {v0}, Lorg/bouncycastle/cms/PasswordRecipientId;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 22
    instance-of v0, p1, Lorg/bouncycastle/cms/PasswordRecipientId;

    if-nez v0, :cond_0

    .line 24
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 16
    const/4 v0, 0x3

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 37
    instance-of v0, p1, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
