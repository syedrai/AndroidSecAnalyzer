.class Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
.super Ljava/lang/Object;
.source "LMOtsSignature.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final C:[B

.field private final type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private final y:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V
    .locals 0
    .param p1, "type"    # Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .param p2, "c"    # [B
    .param p3, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "c",
            "y"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    .line 23
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .locals 4
    .param p0, "src"    # Ljava/lang/Object;
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

    .line 29
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    if-eqz v0, :cond_0

    .line 31
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    return-object v0

    .line 33
    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1

    .line 37
    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    .line 38
    .local v0, "type":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v1

    new-array v1, v1, [B

    .line 40
    .local v1, "C":[B
    move-object v2, p0

    check-cast v2, Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 42
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v3

    mul-int v2, v2, v3

    new-array v2, v2, [B

    .line 43
    .local v2, "sig":[B
    move-object v3, p0

    check-cast v3, Ljava/io/DataInputStream;

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 46
    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    invoke-direct {v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V

    return-object v3

    .line 48
    .end local v0    # "type":Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .end local v1    # "C":[B
    .end local v2    # "sig":[B
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 50
    const/4 v0, 0x0

    .line 53
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object v3, p0

    check-cast v3, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 54
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 54
    return-object v1

    .line 58
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 59
    :cond_2
    throw v1

    .line 61
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_3
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 63
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    return-object v0

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 89
    if-ne p0, p1, :cond_0

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    .line 100
    .local v1, "that":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    if-eqz v2, :cond_3

    .line 102
    :goto_0
    return v0

    .line 104
    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 95
    .end local v1    # "that":Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    :cond_5
    :goto_1
    return v0
.end method

.method public getC()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    .line 124
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    .line 125
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    .line 126
    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public getType()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method

.method public getY()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->type:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->C:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 116
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->y:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 117
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
