.class public Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;
.super Ljava/lang/Object;
.source "JPAKEParticipant.java"


# static fields
.field public static final STATE_INITIALIZED:I = 0x0

.field public static final STATE_KEY_CALCULATED:I = 0x32

.field public static final STATE_ROUND_1_CREATED:I = 0xa

.field public static final STATE_ROUND_1_VALIDATED:I = 0x14

.field public static final STATE_ROUND_2_CREATED:I = 0x1e

.field public static final STATE_ROUND_2_VALIDATED:I = 0x28

.field public static final STATE_ROUND_3_CREATED:I = 0x3c

.field public static final STATE_ROUND_3_VALIDATED:I = 0x46


# instance fields
.field private b:Ljava/math/BigInteger;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final g:Ljava/math/BigInteger;

.field private gx1:Ljava/math/BigInteger;

.field private gx2:Ljava/math/BigInteger;

.field private gx3:Ljava/math/BigInteger;

.field private gx4:Ljava/math/BigInteger;

.field private final p:Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;

.field private partnerParticipantId:Ljava/lang/String;

.field private password:[C

.field private final q:Ljava/math/BigInteger;

.field private final random:Ljava/security/SecureRandom;

.field private state:I

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "participantId",
            "password"
        }
    .end annotation

    .line 165
    sget-object v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroups;->NIST_3072:Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;)V
    .locals 6
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "group"    # Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "participantId",
            "password",
            "group"
        }
    .end annotation

    .line 193
    nop

    .line 197
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v4

    .line 198
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "participantId":Ljava/lang/String;
    .end local p2    # "password":[C
    .end local p3    # "group":Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
    .local v1, "participantId":Ljava/lang/String;
    .local v2, "password":[C
    .local v3, "group":Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "participantId"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "group"    # Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;
    .param p4, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "participantId",
            "password",
            "group",
            "digest",
            "random"
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    const-string v0, "password"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const-string v0, "p"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    const-string v0, "digest"

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    const-string v0, "random"

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 236
    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    .line 250
    array-length v0, p2

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    .line 252
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    .line 253
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    .line 254
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEPrimeOrderGroup;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    .line 256
    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 257
    iput-object p5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 260
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 2

    .line 553
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateS(Ljava/math/BigInteger;[C)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 555
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Lorg/bouncycastle/crypto/CryptoException;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public calculateKeyingMaterial()Ljava/math/BigInteger;
    .locals 9

    .line 422
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 426
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    .line 430
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->calculateS()Ljava/math/BigInteger;

    move-result-object v7

    .line 437
    .local v7, "s":Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->password:[C

    .line 440
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateKeyingMaterial(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 450
    .local v2, "keyingMaterial":Ljava/math/BigInteger;
    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    .line 451
    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    .line 452
    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    .line 458
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 460
    return-object v2

    .line 428
    .end local v2    # "keyingMaterial":Ljava/math/BigInteger;
    .end local v7    # "s":Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round2 payload must be validated prior to creating key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key already calculated for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound1PayloadToSend()Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;
    .locals 17

    .line 278
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 283
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    .line 284
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->generateX2(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    .line 286
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    .line 287
    iget-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGx(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    .line 288
    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v5, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v6, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v7, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v9, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v15

    .line 289
    .local v15, "knowledgeProofForX1":[Ljava/math/BigInteger;
    iget-object v3, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v4, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v5, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v6, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v7, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v8, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v9, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v10, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v16

    .line 291
    .local v16, "knowledgeProofForX2":[Ljava/math/BigInteger;
    iput v2, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 293
    new-instance v11, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;

    iget-object v12, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v13, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v14, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    invoke-direct/range {v11 .. v16}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v11

    .line 280
    .end local v15    # "knowledgeProofForX1":[Ljava/math/BigInteger;
    .end local v16    # "knowledgeProofForX2":[Ljava/math/BigInteger;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Round1 payload already created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createRound2PayloadToSend()Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;
    .locals 13

    .line 339
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 343
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 347
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 348
    .local v7, "gA":Ljava/math/BigInteger;
    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    .line 349
    .local v0, "s":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 350
    .local v9, "x2s":Ljava/math/BigInteger;
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    invoke-static {v2, v3, v7, v9}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 351
    .local v8, "A":Ljava/math/BigInteger;
    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v12, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v5 .. v12}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 353
    .local v2, "knowledgeProofForX2s":[Ljava/math/BigInteger;
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 355
    new-instance v1, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v1, v3, v8, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;[Ljava/math/BigInteger;)V

    return-object v1

    .line 345
    .end local v0    # "s":Ljava/math/BigInteger;
    .end local v2    # "knowledgeProofForX2s":[Ljava/math/BigInteger;
    .end local v7    # "gA":Ljava/math/BigInteger;
    .end local v8    # "A":Ljava/math/BigInteger;
    .end local v9    # "x2s":Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round1 payload must be validated prior to creating Round2 payload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round2 payload already created for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;
    .locals 11
    .param p1, "keyingMaterial"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyingMaterial"
        }
    .end annotation

    .line 476
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    .line 480
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    .line 485
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v9, p1

    .end local p1    # "keyingMaterial":Ljava/math/BigInteger;
    .local v9, "keyingMaterial":Ljava/math/BigInteger;
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p1

    .line 495
    .local p1, "macTag":Ljava/math/BigInteger;
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 497
    new-instance v0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0

    .line 482
    .end local v9    # "keyingMaterial":Ljava/math/BigInteger;
    .local p1, "keyingMaterial":Ljava/math/BigInteger;
    :cond_0
    move-object v9, p1

    .end local p1    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local v9    # "keyingMaterial":Ljava/math/BigInteger;
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated prior to creating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    .end local v9    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local p1    # "keyingMaterial":Ljava/math/BigInteger;
    :cond_1
    move-object v9, p1

    .end local p1    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local v9    # "keyingMaterial":Ljava/math/BigInteger;
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Round3 payload already created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getState()I
    .locals 1

    .line 268
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    return v0
.end method

.method public validateRound1PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;)V
    .locals 14
    .param p1, "round1PayloadReceived"    # Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round1PayloadReceived"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 309
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 313
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx1()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    .line 315
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getGx2()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    .line 317
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX1()[Ljava/math/BigInteger;

    move-result-object v6

    .line 318
    .local v6, "knowledgeProofForX3":[Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getKnowledgeProofForX2()[Ljava/math/BigInteger;

    move-result-object v11

    .line 320
    .local v11, "knowledgeProofForX4":[Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateGx4(Ljava/math/BigInteger;)V

    .line 322
    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    .line 323
    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->g:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v7 .. v13}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    .line 325
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 326
    return-void

    .line 311
    .end local v6    # "knowledgeProofForX3":[Ljava/math/BigInteger;
    .end local v11    # "knowledgeProofForX4":[Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation already attempted for round1 payload for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateRound2PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;)V
    .locals 12
    .param p1, "round2PayloadReceived"    # Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "round2PayloadReceived"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 375
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    .line 379
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    .line 383
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->calculateGA(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 384
    .local v7, "gB":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    .line 385
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getKnowledgeProofForX2s()[Ljava/math/BigInteger;

    move-result-object v9

    .line 387
    .local v9, "knowledgeProofForX4s":[Ljava/math/BigInteger;
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {v7}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateGa(Ljava/math/BigInteger;)V

    .line 390
    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->p:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->b:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateZeroKnowledgeProof(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    .line 392
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 393
    return-void

    .line 381
    .end local v7    # "gB":Ljava/math/BigInteger;
    .end local v9    # "knowledgeProofForX4s":[Ljava/math/BigInteger;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Round1 payload must be validated prior to validating Round2 payload for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation already attempted for round2 payload for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateRound3PayloadReceived(Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 12
    .param p1, "round3PayloadReceived"    # Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;
    .param p2, "keyingMaterial"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "round3PayloadReceived",
            "keyingMaterial"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 515
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v1, 0x46

    if-ge v0, v1, :cond_1

    .line 519
    iget v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    .line 523
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 535
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v11

    .line 526
    move-object v9, p2

    .end local p2    # "keyingMaterial":Ljava/math/BigInteger;
    .local v9, "keyingMaterial":Ljava/math/BigInteger;
    invoke-static/range {v3 .. v11}, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEUtil;->validateMacTag(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    .line 541
    const/4 p2, 0x0

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx1:Ljava/math/BigInteger;

    .line 542
    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx2:Ljava/math/BigInteger;

    .line 543
    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx3:Ljava/math/BigInteger;

    .line 544
    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->gx4:Ljava/math/BigInteger;

    .line 546
    iput v1, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->state:I

    .line 547
    return-void

    .line 521
    .end local v9    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local p2    # "keyingMaterial":Ljava/math/BigInteger;
    :cond_0
    move-object v9, p2

    .end local p2    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local v9    # "keyingMaterial":Ljava/math/BigInteger;
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keying material must be calculated validated prior to validating Round3 payload for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 517
    .end local v9    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local p2    # "keyingMaterial":Ljava/math/BigInteger;
    :cond_1
    move-object v9, p2

    .end local p2    # "keyingMaterial":Ljava/math/BigInteger;
    .restart local v9    # "keyingMaterial":Ljava/math/BigInteger;
    new-instance p2, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/jpake/JPAKEParticipant;->participantId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validation already attempted for round3 payload for"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
