.class public Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 958
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    .line 959
    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 15
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    move-object/from16 v0, p1

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 968
    if-nez v0, :cond_0

    .line 970
    return-void

    .line 973
    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 974
    .local v1, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 976
    .local v2, "version":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 978
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 980
    :cond_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Wrong version of key store."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 984
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v8, v3, [B

    .line 986
    .local v8, "salt":[B
    array-length v3, v8

    const/16 v4, 0x14

    const-string v5, "Key store corrupted."

    if-ne v3, v4, :cond_6

    .line 991
    invoke-virtual {v1, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 993
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 995
    .local v9, "iterationCount":I
    if-ltz v9, :cond_5

    const/high16 v3, 0x10000

    if-gt v9, v3, :cond_5

    .line 1001
    if-nez v2, :cond_3

    .line 1003
    const-string v3, "OldPBEWithSHAAndTwofish-CBC"

    move-object v5, v3

    .local v3, "cipherAlg":Ljava/lang/String;
    goto :goto_1

    .line 1007
    .end local v3    # "cipherAlg":Ljava/lang/String;
    :cond_3
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    move-object v5, v3

    .line 1010
    .local v5, "cipherAlg":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x2

    move-object v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 1011
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Lorg/bouncycastle/jcajce/io/CipherInputStream;

    invoke-direct {v6, v1, v3}, Lorg/bouncycastle/jcajce/io/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1013
    .local v6, "cIn":Lorg/bouncycastle/jcajce/io/CipherInputStream;
    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 1014
    .local v7, "dig":Lorg/bouncycastle/crypto/Digest;
    new-instance v10, Lorg/bouncycastle/crypto/io/DigestInputStream;

    invoke-direct {v10, v6, v7}, Lorg/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Digest;)V

    .line 1016
    .local v10, "dgIn":Lorg/bouncycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v10}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1019
    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v11

    new-array v11, v11, [B

    .line 1020
    .local v11, "hash":[B
    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1024
    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    new-array v12, v12, [B

    .line 1025
    .local v12, "oldHash":[B
    invoke-static {v6, v12}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 1027
    invoke-static {v11, v12}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1032
    return-void

    .line 1029
    :cond_4
    iget-object v13, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    .line 1030
    new-instance v13, Ljava/io/IOException;

    const-string v14, "KeyStore integrity check failed."

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 997
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "cipherAlg":Ljava/lang/String;
    .end local v6    # "cIn":Lorg/bouncycastle/jcajce/io/CipherInputStream;
    .end local v7    # "dig":Lorg/bouncycastle/crypto/Digest;
    .end local v10    # "dgIn":Lorg/bouncycastle/crypto/io/DigestInputStream;
    .end local v11    # "hash":[B
    .end local v12    # "oldHash":[B
    :cond_5
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 988
    .end local v9    # "iterationCount":I
    :cond_6
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 8
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1038
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1039
    .local v0, "dOut":Ljava/io/DataOutputStream;
    const/16 v1, 0x14

    new-array v6, v1, [B

    .line 1040
    .local v6, "salt":[B
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v7, v1, 0x400

    .line 1042
    .local v7, "iterationCount":I
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1044
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1045
    array-length v1, v6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1046
    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 1047
    invoke-virtual {v0, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1049
    const-string v3, "PBEWithSHAAndTwofish-CBC"

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p2

    .end local p2    # "password":[C
    .local v5, "password":[C
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 1051
    .local p2, "cipher":Ljavax/crypto/Cipher;
    new-instance v1, Lorg/bouncycastle/jcajce/io/CipherOutputStream;

    invoke-direct {v1, v0, p2}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1052
    .local v1, "cOut":Lorg/bouncycastle/jcajce/io/CipherOutputStream;
    new-instance v3, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 1054
    .local v3, "dgOut":Lorg/bouncycastle/crypto/io/DigestOutputStream;
    new-instance v4, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v4, v1, v3}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1056
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v4

    .line 1058
    .local v4, "dig":[B
    invoke-virtual {v1, v4}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->write([B)V

    .line 1060
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/io/CipherOutputStream;->close()V

    .line 1061
    return-void
.end method
