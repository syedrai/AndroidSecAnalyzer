.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
.super Ljava/lang/Object;
.source "NTRUEncryptionParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public N:I

.field public bufferLenBits:I

.field bufferLenTrits:I

.field public c:I

.field public db:I

.field public df:I

.field public df1:I

.field public df2:I

.field public df3:I

.field public dg:I

.field public dm0:I

.field public dr:I

.field public dr1:I

.field public dr2:I

.field public dr3:I

.field public fastFp:Z

.field public hashAlg:Lorg/bouncycastle/crypto/Digest;

.field public hashSeed:Z

.field llen:I

.field public maxMsgLenBytes:I

.field public minCallsMask:I

.field public minCallsR:I

.field public oid:[B

.field public pkLen:I

.field public polyType:I

.field public q:I

.field public sparse:Z


# direct methods
.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 16
    .param p1, "N"    # I
    .param p2, "q"    # I
    .param p3, "df1"    # I
    .param p4, "df2"    # I
    .param p5, "df3"    # I
    .param p6, "dm0"    # I
    .param p7, "db"    # I
    .param p8, "c"    # I
    .param p9, "minCallsR"    # I
    .param p10, "minCallsMask"    # I
    .param p11, "hashSeed"    # Z
    .param p12, "oid"    # [B
    .param p13, "sparse"    # Z
    .param p14, "fastFp"    # Z
    .param p15, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "q",
            "df1",
            "df2",
            "df3",
            "dm0",
            "db",
            "c",
            "minCallsR",
            "minCallsMask",
            "hashSeed",
            "oid",
            "sparse",
            "fastFp",
            "hashAlg"
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 102
    move/from16 v1, p1

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 103
    move/from16 v2, p2

    iput v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 104
    move/from16 v3, p3

    iput v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    .line 105
    move/from16 v4, p4

    iput v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    .line 106
    move/from16 v5, p5

    iput v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    .line 107
    move/from16 v6, p7

    iput v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 108
    move/from16 v7, p6

    iput v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 109
    move/from16 v8, p8

    iput v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    .line 110
    move/from16 v9, p9

    iput v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    .line 111
    move/from16 v10, p10

    iput v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 112
    move/from16 v11, p11

    iput-boolean v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 113
    move-object/from16 v12, p12

    iput-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 114
    move/from16 v13, p13

    iput-boolean v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 115
    move/from16 v14, p14

    iput-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    .line 116
    const/4 v15, 0x1

    iput v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    .line 117
    move-object/from16 v15, p15

    iput-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 118
    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    .line 119
    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "N"    # I
    .param p2, "q"    # I
    .param p3, "df"    # I
    .param p4, "dm0"    # I
    .param p5, "db"    # I
    .param p6, "c"    # I
    .param p7, "minCallsR"    # I
    .param p8, "minCallsMask"    # I
    .param p9, "hashSeed"    # Z
    .param p10, "oid"    # [B
    .param p11, "sparse"    # Z
    .param p12, "fastFp"    # Z
    .param p13, "hashAlg"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "q",
            "df",
            "dm0",
            "db",
            "c",
            "minCallsR",
            "minCallsMask",
            "hashSeed",
            "oid",
            "sparse",
            "fastFp",
            "hashAlg"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 65
    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 66
    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    .line 67
    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 68
    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 69
    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    .line 70
    iput p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    .line 71
    iput p8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 72
    iput-boolean p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 73
    iput-object p10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 74
    iput-boolean p11, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 75
    iput-boolean p12, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    .line 77
    iput-object p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 78
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    .line 146
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    .line 147
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    .line 148
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    .line 149
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    .line 150
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    .line 151
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    .line 152
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    .line 153
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    .line 154
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    .line 155
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    .line 156
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    .line 157
    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 158
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    .line 159
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    .line 160
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    .line 161
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    .line 163
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "SHA-512"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0

    .line 169
    :cond_0
    const-string v2, "SHA-256"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 174
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    .line 175
    return-void
.end method

.method private init()V
    .locals 3

    .line 123
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    .line 124
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    .line 125
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    .line 126
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    .line 127
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    .line 129
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    .line 130
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    .line 131
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    .line 132
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    .line 133
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .locals 19

    .line 179
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-nez v1, :cond_0

    .line 181
    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-boolean v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iget-boolean v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v15

    invoke-direct/range {v2 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    return-object v2

    .line 185
    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    move/from16 v16, v1

    iget-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v1}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v18

    move/from16 v17, v2

    invoke-direct/range {v3 .. v18}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 265
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 271
    return v1

    .line 273
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 275
    return v1

    .line 277
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    .line 278
    .local v2, "other":Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    if-eq v3, v4, :cond_3

    .line 280
    return v1

    .line 282
    :cond_3
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    if-eq v3, v4, :cond_4

    .line 284
    return v1

    .line 286
    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    if-eq v3, v4, :cond_5

    .line 288
    return v1

    .line 290
    :cond_5
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    if-eq v3, v4, :cond_6

    .line 292
    return v1

    .line 294
    :cond_6
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    if-eq v3, v4, :cond_7

    .line 296
    return v1

    .line 298
    :cond_7
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    if-eq v3, v4, :cond_8

    .line 300
    return v1

    .line 302
    :cond_8
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    if-eq v3, v4, :cond_9

    .line 304
    return v1

    .line 306
    :cond_9
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    if-eq v3, v4, :cond_a

    .line 308
    return v1

    .line 310
    :cond_a
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    if-eq v3, v4, :cond_b

    .line 312
    return v1

    .line 314
    :cond_b
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    if-eq v3, v4, :cond_c

    .line 316
    return v1

    .line 318
    :cond_c
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    if-eq v3, v4, :cond_d

    .line 320
    return v1

    .line 322
    :cond_d
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    if-eq v3, v4, :cond_e

    .line 324
    return v1

    .line 326
    :cond_e
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    if-eq v3, v4, :cond_f

    .line 328
    return v1

    .line 330
    :cond_f
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    if-eq v3, v4, :cond_10

    .line 332
    return v1

    .line 334
    :cond_10
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    if-eq v3, v4, :cond_11

    .line 336
    return v1

    .line 338
    :cond_11
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    iget-boolean v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eq v3, v4, :cond_12

    .line 340
    return v1

    .line 342
    :cond_12
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v3, :cond_13

    .line 344
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v3, :cond_14

    .line 346
    return v1

    .line 349
    :cond_13
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 351
    return v1

    .line 353
    :cond_14
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-boolean v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    if-eq v3, v4, :cond_15

    .line 355
    return v1

    .line 357
    :cond_15
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    if-eq v3, v4, :cond_16

    .line 359
    return v1

    .line 361
    :cond_16
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    if-eq v3, v4, :cond_17

    .line 363
    return v1

    .line 365
    :cond_17
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    if-eq v3, v4, :cond_18

    .line 367
    return v1

    .line 369
    :cond_18
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    if-eq v3, v4, :cond_19

    .line 371
    return v1

    .line 373
    :cond_19
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iget-object v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 375
    return v1

    .line 377
    :cond_1a
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    if-eq v3, v4, :cond_1b

    .line 379
    return v1

    .line 381
    :cond_1b
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-eq v3, v4, :cond_1c

    .line 383
    return v1

    .line 385
    :cond_1c
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    if-eq v3, v4, :cond_1d

    .line 387
    return v1

    .line 389
    :cond_1d
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    iget-boolean v4, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eq v3, v4, :cond_1e

    .line 391
    return v1

    .line 393
    :cond_1e
    return v0
.end method

.method public getMaxMessageLength()I
    .locals 1

    .line 196
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 231
    const/16 v0, 0x1f

    .line 232
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 233
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    add-int/2addr v2, v3

    .line 234
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    add-int/2addr v1, v3

    .line 235
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    add-int/2addr v2, v3

    .line 236
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    add-int/2addr v1, v3

    .line 237
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    add-int/2addr v2, v3

    .line 238
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    add-int/2addr v1, v3

    .line 239
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    add-int/2addr v2, v3

    .line 240
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    add-int/2addr v1, v3

    .line 241
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    add-int/2addr v2, v3

    .line 242
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    add-int/2addr v1, v3

    .line 243
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    add-int/2addr v2, v3

    .line 244
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    add-int/2addr v1, v3

    .line 245
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    add-int/2addr v2, v3

    .line 246
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    add-int/2addr v1, v3

    .line 247
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    add-int/2addr v2, v3

    .line 248
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/16 v4, 0x4cf

    const/16 v5, 0x4d5

    if-eqz v3, :cond_0

    const/16 v3, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v3, 0x4d5

    :goto_0
    add-int/2addr v1, v3

    .line 249
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 250
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    add-int/2addr v1, v3

    .line 251
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    add-int/2addr v2, v3

    .line 252
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    add-int/2addr v1, v3

    .line 253
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    add-int/2addr v2, v3

    .line 254
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    add-int/2addr v1, v3

    .line 255
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 256
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    add-int/2addr v1, v3

    .line 257
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    add-int/2addr v2, v3

    .line 258
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    add-int/2addr v1, v3

    .line 259
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x4d5

    :goto_3
    add-int/2addr v2, v4

    .line 260
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EncryptionParameters(N="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " q="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "output":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-nez v1, :cond_0

    .line 401
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " polyType=SIMPLE df="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " polyType=PRODUCT df1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " df2="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " df3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-boolean v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    .line 408
    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " dm0="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, " db="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashSeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashAlg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sparse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 211
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 212
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 216
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 217
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 221
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 222
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 223
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 224
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 225
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 226
    return-void
.end method
