.class Lorg/bouncycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "KGCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/modes/KGCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExposedByteArrayOutputStream"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 365
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 369
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KGCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
