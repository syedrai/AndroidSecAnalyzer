.class final Lcom/google/common/hash/SipHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "SipHashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/SipHashFunction$SipHasher;
    }
.end annotation


# static fields
.field static final SIP_HASH_24:Lcom/google/common/hash/HashFunction;

.field private static final serialVersionUID:J


# instance fields
.field private final c:I

.field private final d:I

.field private final k0:J

.field private final k1:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    new-instance v0, Lcom/google/common/hash/SipHashFunction;

    const-wide v3, 0x706050403020100L

    const-wide v5, 0xf0e0d0c0b0a0908L

    const/4 v1, 0x2

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    sput-object v0, Lcom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>(IIJJ)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "d"    # I
    .param p3, "k0"    # J
    .param p5, "k1"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "d",
            "k0",
            "k1"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The number of SipRound iterations (c=%s) during Compression must be positive."

    invoke-static {v2, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 59
    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "The number of SipRound iterations (d=%s) during Finalization must be positive."

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 61
    iput p1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    .line 62
    iput p2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    .line 63
    iput-wide p3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    .line 64
    iput-wide p5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    .line 65
    return-void
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 69
    const/16 v0, 0x40

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 86
    instance-of v0, p1, Lcom/google/common/hash/SipHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/SipHashFunction;

    .line 88
    .local v0, "other":Lcom/google/common/hash/SipHashFunction;
    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget v3, v0, Lcom/google/common/hash/SipHashFunction;->d:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k0:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    iget-wide v4, v0, Lcom/google/common/hash/SipHashFunction;->k1:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 90
    .end local v0    # "other":Lcom/google/common/hash/SipHashFunction;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    xor-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 7

    .line 74
    new-instance v0, Lcom/google/common/hash/SipHashFunction$SipHasher;

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v2, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v3, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v5, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    invoke-direct/range {v0 .. v6}, Lcom/google/common/hash/SipHashFunction$SipHasher;-><init>(IIJJ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 81
    iget v0, p0, Lcom/google/common/hash/SipHashFunction;->c:I

    iget v1, p0, Lcom/google/common/hash/SipHashFunction;->d:I

    iget-wide v2, p0, Lcom/google/common/hash/SipHashFunction;->k0:J

    iget-wide v4, p0, Lcom/google/common/hash/SipHashFunction;->k1:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hashing.sipHash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
