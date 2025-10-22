.class public Lorg/bouncycastle/oer/OERInputStream$Choice;
.super Lorg/bouncycastle/oer/OERInputStream;
.source "OERInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Choice"
.end annotation


# instance fields
.field final preamble:I

.field final tag:I

.field final tagClass:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    .line 773
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream$Choice;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->preamble:I

    .line 774
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->preamble:I

    if-ltz v0, :cond_3

    .line 779
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->preamble:I

    and-int/lit16 v0, v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    .line 780
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->preamble:I

    const/16 v1, 0x3f

    and-int/2addr v0, v1

    .line 785
    .local v0, "tag":I
    if-lt v0, v1, :cond_2

    .line 787
    const/4 v0, 0x0

    .line 788
    const/4 v1, 0x0

    .line 791
    .local v1, "part":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 792
    if-ltz v1, :cond_1

    .line 796
    shl-int/lit8 v0, v0, 0x7

    .line 797
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 799
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    goto :goto_0

    .line 794
    :cond_1
    new-instance v2, Ljava/io/EOFException;

    const-string v3, "expecting further tag bytes"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    .end local v1    # "part":I
    :cond_2
    :goto_0
    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    .line 804
    return-void

    .line 776
    .end local v0    # "tag":I
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "expecting preamble byte of choice"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .line 837
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    return v0
.end method

.method public getTagClass()I
    .locals 1

    .line 832
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    return v0
.end method

.method public isApplicationTagClass()Z
    .locals 2

    .line 852
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isContextSpecific()Z
    .locals 2

    .line 842
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrivateTagClass()Z
    .locals 2

    .line 857
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUniversalTagClass()Z
    .locals 1

    .line 847
    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "CHOICE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    iget v1, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tagClass:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 819
    :sswitch_0
    const-string v1, "Private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    goto :goto_0

    .line 822
    :sswitch_1
    const-string v1, "ContextSpecific "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 816
    :sswitch_2
    const-string v1, "Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    goto :goto_0

    .line 813
    :sswitch_3
    const-string v1, "Universal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    nop

    .line 825
    :goto_0
    iget v1, p0, Lorg/bouncycastle/oer/OERInputStream$Choice;->tag:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method
