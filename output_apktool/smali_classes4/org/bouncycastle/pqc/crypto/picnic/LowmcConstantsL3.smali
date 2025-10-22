.class public Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;
.super Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.source "LowmcConstantsL3.java"


# direct methods
.method constructor <init>()V
    .locals 7

    .line 13
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;-><init>()V

    .line 17
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    const-class v2, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const-string v3, "lowmcL3.bin.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    .local v0, "input":Ljava/io/DataInputStream;
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices:[I

    .line 20
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->roundConstants:[I

    .line 21
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices:[I

    .line 23
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices_full:[I

    .line 24
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices_full:[I

    .line 25
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices_inv:[I

    .line 26
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices_inv:[I

    .line 27
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->roundConstants_full:[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "input":Ljava/io/DataInputStream;
    nop

    .line 41
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices:[I

    const/16 v2, 0x1e

    const/16 v3, 0xc0

    const/4 v4, 0x6

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 42
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v1, 0x1f

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices:[I

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 43
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->roundConstants:[I

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 55
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices_full:[I

    const/4 v2, 0x4

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 56
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->linearMatrices_inv:[I

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 57
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/4 v1, 0x5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices_full:[I

    invoke-direct {v0, v1, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 58
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->keyMatrices_inv:[I

    invoke-direct {v0, v5, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 59
    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->roundConstants_full:[I

    invoke-direct {v0, v2, v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL3;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    .line 60
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to load Picnic properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method
