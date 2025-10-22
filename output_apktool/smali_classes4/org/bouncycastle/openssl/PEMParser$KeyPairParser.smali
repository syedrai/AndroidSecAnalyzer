.class Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;
.super Ljava/lang/Object;
.source "PEMParser.java"

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/openssl/PEMParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyPairParser"
.end annotation


# instance fields
.field private final pemKeyPairParser:Lorg/bouncycastle/openssl/PEMKeyPairParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/openssl/PEMKeyPairParser;)V
    .locals 0
    .param p1, "pemKeyPairParser"    # Lorg/bouncycastle/openssl/PEMKeyPairParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pemKeyPairParser"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    .line 148
    return-void
.end method


# virtual methods
.method public parseObject(Lorg/bouncycastle/util/io/pem/PemObject;)Ljava/lang/Object;
    .locals 10
    .param p1, "obj"    # Lorg/bouncycastle/util/io/pem/PemObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "isEncrypted":Z
    const/4 v1, 0x0

    .line 159
    .local v1, "dekInfo":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getHeaders()Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "headers":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/util/io/pem/PemHeader;

    .line 165
    .local v4, "hdr":Lorg/bouncycastle/util/io/pem/PemHeader;
    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Proc-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "4,ENCRYPTED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    const/4 v0, 0x1

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEK-Info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v4}, Lorg/bouncycastle/util/io/pem/PemHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 173
    .end local v4    # "hdr":Lorg/bouncycastle/util/io/pem/PemHeader;
    :cond_1
    :goto_1
    goto :goto_0

    .line 178
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/util/io/pem/PemObject;->getContent()[B

    move-result-object v3

    .line 182
    .local v3, "keyBytes":[B
    const-string v4, "exception decoding - please check password and data."

    if-eqz v0, :cond_3

    .line 184
    :try_start_0
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v5, "tknz":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "dekAlgName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v7

    .line 188
    .local v7, "iv":[B
    new-instance v8, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;

    iget-object v9, p0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    invoke-direct {v8, v6, v7, v3, v9}, Lorg/bouncycastle/openssl/PEMEncryptedKeyPair;-><init>(Ljava/lang/String;[B[BLorg/bouncycastle/openssl/PEMKeyPairParser;)V

    return-object v8

    .line 191
    .end local v5    # "tknz":Ljava/util/StringTokenizer;
    .end local v6    # "dekAlgName":Ljava/lang/String;
    .end local v7    # "iv":[B
    :cond_3
    iget-object v5, p0, Lorg/bouncycastle/openssl/PEMParser$KeyPairParser;->pemKeyPairParser:Lorg/bouncycastle/openssl/PEMKeyPairParser;

    invoke-interface {v5, v3}, Lorg/bouncycastle/openssl/PEMKeyPairParser;->parse([B)Lorg/bouncycastle/openssl/PEMKeyPair;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 204
    :catch_0
    move-exception v5

    .line 206
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    if-eqz v0, :cond_4

    .line 208
    new-instance v6, Lorg/bouncycastle/openssl/PEMException;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 212
    :cond_4
    new-instance v4, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 193
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 195
    .local v5, "e":Ljava/io/IOException;
    if-eqz v0, :cond_5

    .line 197
    new-instance v6, Lorg/bouncycastle/openssl/PEMException;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v6

    .line 201
    :cond_5
    new-instance v4, Lorg/bouncycastle/openssl/PEMException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5}, Lorg/bouncycastle/openssl/PEMException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
