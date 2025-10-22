.class public Lorg/bouncycastle/crypto/engines/ISAPEngine;
.super Ljava/lang/Object;
.source "ISAPEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;
    }
.end annotation


# instance fields
.field final CRYPTO_KEYBYTES:I

.field final CRYPTO_NPUBBYTES:I

.field private ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

.field final ISAP_STATE_SZ:I

.field private ISAP_rH:I

.field private ISAP_rH_SZ:I

.field private aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private algorithmName:Ljava/lang/String;

.field private c:[B

.field private forEncryption:Z

.field private initialised:Z

.field private k:[B

.field private mac:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private npub:[B

.field private final outputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static bridge synthetic -$$Nest$fgetISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetk(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnpub(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputISAP_rH(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputISAP_rH_SZ(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;)V
    .locals 1
    .param p1, "isapType"    # Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isapType"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_KEYBYTES:I

    .line 62
    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_NPUBBYTES:I

    .line 63
    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_STATE_SZ:I

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    .line 37
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    .line 53
    const-string v0, "ISAP-K-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    .line 49
    const-string v0, "ISAP-A-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    .line 50
    goto :goto_0

    .line 44
    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    .line 45
    const-string v0, "ISAP-K-128A AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    .line 46
    goto :goto_0

    .line 40
    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    .line 41
    const-string v0, "ISAP-A-128A AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    .line 42
    nop

    .line 56
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 16
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v1, :cond_5

    .line 913
    iget-boolean v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    const-string v2, "output buffer is too short"

    const/16 v8, 0x10

    if-eqz v1, :cond_1

    .line 915
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 916
    .local v1, "enc_input":[B
    array-length v4, v1

    .line 917
    .local v4, "len":I
    add-int v3, p2, v4

    add-int/2addr v3, v8

    array-length v6, v5

    if-gt v3, v6, :cond_0

    .line 921
    move-object v2, v1

    .end local v1    # "enc_input":[B
    .local v2, "enc_input":[B
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const/4 v3, 0x0

    array-length v7, v5

    move/from16 v6, p2

    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    .line 922
    move-object v1, v2

    .end local v2    # "enc_input":[B
    .restart local v1    # "enc_input":[B
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v5, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 923
    add-int v2, v6, v4

    .line 924
    .end local p2    # "outOff":I
    .local v2, "outOff":I
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    .line 925
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    .line 926
    new-array v3, v8, [B

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    .line 927
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v11, v3

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    array-length v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    .line 928
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    nop

    .end local v1    # "enc_input":[B
    add-int/2addr v4, v8

    .line 930
    goto :goto_1

    .line 919
    .end local v2    # "outOff":I
    .restart local v1    # "enc_input":[B
    .restart local p2    # "outOff":I
    :cond_0
    move/from16 v6, p2

    new-instance v3, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 933
    .end local v1    # "enc_input":[B
    .end local v4    # "len":I
    :cond_1
    move/from16 v6, p2

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    .line 934
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    .line 935
    new-array v1, v8, [B

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    .line 936
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    array-length v1, v1

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    array-length v3, v3

    sub-int v13, v1, v3

    .line 937
    .local v13, "len":I
    add-int v1, v13, v6

    array-length v3, v5

    if-gt v1, v3, :cond_4

    .line 941
    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v10, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v11, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    .line 942
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    .line 943
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_3

    .line 945
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    aget-byte v2, v2, v1

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    add-int v4, v13, v1

    aget-byte v3, v3, v4

    if-ne v2, v3, :cond_2

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 947
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mac does not match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 950
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    const/4 v3, 0x0

    array-length v7, v5

    move v4, v13

    .end local v13    # "len":I
    .restart local v4    # "len":I
    invoke-interface/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    move/from16 v2, p2

    .line 952
    .end local p2    # "outOff":I
    .restart local v2    # "outOff":I
    :goto_1
    return v4

    .line 939
    .end local v2    # "outOff":I
    .end local v4    # "len":I
    .restart local v13    # "len":I
    .restart local p2    # "outOff":I
    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 910
    .end local v13    # "len":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need call init function before encryption/decryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 844
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 998
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 993
    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 988
    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 958
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 970
    add-int/lit8 v0, p1, 0x10

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 964
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 795
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    .line 796
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 802
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 804
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 806
    .local v1, "iv":[B
    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 812
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_1

    .line 818
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 819
    .local v2, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v4

    .line 820
    .local v4, "keyBytes":[B
    array-length v5, v4

    if-ne v5, v3, :cond_0

    .line 826
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 827
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v7

    invoke-direct {v3, v5, v6, p2, v7}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 826
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 832
    array-length v3, v1

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    .line 833
    array-length v3, v4

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    .line 834
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    array-length v5, v1

    const/4 v6, 0x0

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    array-length v5, v4

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->init()V

    .line 837
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    .line 838
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->reset()V

    .line 839
    return-void

    .line 822
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "ISAP AEAD key must be 128 bits long"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 814
    .end local v2    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v4    # "keyBytes":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ISAP AEAD init parameters must include a key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 808
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ISAP AEAD requires exactly 12 bytes of IV"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISAP AEAD init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 851
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .line 856
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 858
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    const-string v1, "encryption"

    goto :goto_0

    :cond_0
    const-string v1, "decryption"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input buffer too short"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 862
    return-void
.end method

.method public processByte(B[BI)I
    .locals 7
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "out",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 868
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "out":[B
    .end local p3    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 875
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v0, :cond_4

    .line 879
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 883
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 884
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    .line 886
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    if-lt v0, v1, :cond_1

    .line 888
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    mul-int v5, v0, v1

    .line 889
    .end local p3    # "len":I
    .local v5, "len":I
    add-int p3, p5, v5

    array-length v0, p4

    if-gt p3, v0, :cond_0

    .line 893
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 894
    .local v3, "enc_input":[B
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const/4 v4, 0x0

    array-length v8, p4

    move-object v6, p4

    move v7, p5

    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .local v6, "output":[B
    .local v7, "outOff":I
    invoke-interface/range {v2 .. v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    .line 895
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3, v6, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 896
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 897
    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length p4, v3

    sub-int/2addr p4, v5

    invoke-virtual {p3, v3, v5, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 898
    return v5

    .line 891
    .end local v3    # "enc_input":[B
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .restart local p4    # "output":[B
    .restart local p5    # "outOff":I
    :cond_0
    move-object v6, p4

    .end local p4    # "output":[B
    .restart local v6    # "output":[B
    new-instance p3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p4, "output buffer is too short"

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 886
    .end local v5    # "len":I
    .end local v6    # "output":[B
    .restart local p3    # "len":I
    .restart local p4    # "output":[B
    :cond_1
    move-object v6, p4

    move v7, p5

    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .restart local v6    # "output":[B
    .restart local v7    # "outOff":I
    goto :goto_0

    .line 884
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .restart local p4    # "output":[B
    .restart local p5    # "outOff":I
    :cond_2
    move-object v6, p4

    move v7, p5

    .line 901
    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .restart local v6    # "output":[B
    .restart local v7    # "outOff":I
    :goto_0
    const/4 p4, 0x0

    return p4

    .line 881
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .restart local p4    # "output":[B
    .restart local p5    # "outOff":I
    :cond_3
    move-object v6, p4

    move v7, p5

    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .restart local v6    # "output":[B
    .restart local v7    # "outOff":I
    new-instance p4, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p5, "input buffer too short"

    invoke-direct {p4, p5}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 877
    .end local v6    # "output":[B
    .end local v7    # "outOff":I
    .restart local p4    # "output":[B
    .restart local p5    # "outOff":I
    :cond_4
    move-object v6, p4

    move v7, p5

    .end local p4    # "output":[B
    .end local p5    # "outOff":I
    .restart local v6    # "output":[B
    .restart local v7    # "outOff":I
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string p5, "Need call init function before encryption/decryption"

    invoke-direct {p4, p5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4
.end method

.method public reset()V
    .locals 2

    .line 976
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 981
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    .line 982
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 983
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 984
    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
