.class Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;
.super Ljava/io/ByteArrayOutputStream;
.source "JournalingSecureRandom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/JournalingSecureRandom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranscriptStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/util/JournalingSecureRandom-IA;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/JournalingSecureRandom$TranscriptStream;->buf:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 159
    return-void
.end method
