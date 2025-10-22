.class public Lorg/bouncycastle/asn1/eac/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
    }
.end annotation


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    .line 19
    iput p1, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    .line 20
    return-void
.end method


# virtual methods
.method decode(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 4
    .param p1, "decodeMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeMap"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "joiner":Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 54
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 57
    .local v2, "i":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/eac/Flags;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->add(Ljava/lang/String;)V

    .line 61
    .end local v2    # "i":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/Flags$StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getFlags()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    return v0
.end method

.method public isSet(I)Z
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 29
    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(I)V
    .locals 1
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 24
    iget v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/asn1/eac/Flags;->value:I

    .line 25
    return-void
.end method
