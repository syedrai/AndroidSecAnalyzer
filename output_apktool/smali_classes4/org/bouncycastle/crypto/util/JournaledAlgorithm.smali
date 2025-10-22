.class public Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
.super Ljava/lang/Object;
.source "JournaledAlgorithm.java"

# interfaces
.implements Lorg/bouncycastle/util/Encodable;
.implements Ljava/io/Serializable;


# instance fields
.field private transient algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private transient journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/util/JournalingSecureRandom;)V
    .locals 2
    .param p1, "aid"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "journaling"    # Lorg/bouncycastle/crypto/util/JournalingSecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "aid",
            "journaling"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p1, :cond_1

    .line 55
    if-eqz p2, :cond_0

    .line 60
    iput-object p2, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    .line 62
    iput-object p1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 63
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JournalingSecureRandom passed to JournaledAlgorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AlgorithmIdentifier passed to JournaledAlgorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .line 72
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V

    .line 73
    return-void
.end method

.method public constructor <init>([BLjava/security/SecureRandom;)V
    .locals 2
    .param p1, "encoding"    # [B
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoding",
            "random"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-eqz p1, :cond_1

    .line 87
    if-eqz p2, :cond_0

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->initFromEncoding([BLjava/security/SecureRandom;)V

    .line 93
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "random passed to JournaledAlgorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoding passed to JournaledAlgorithm is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getState(Ljava/io/File;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
    .locals 3
    .param p0, "tempfile"    # Ljava/io/File;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tempfile",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 183
    if-eqz p0, :cond_0

    .line 188
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 192
    .local v0, "fIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 192
    return-object v1

    .line 196
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 197
    throw v1

    .line 185
    .end local v0    # "fIn":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File for loading is null in JournaledAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getState(Ljava/io/InputStream;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/util/JournaledAlgorithm;
    .locals 3
    .param p0, "stateIn"    # Ljava/io/InputStream;
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateIn",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 155
    if-eqz p0, :cond_0

    .line 160
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 164
    .local v0, "fIn":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;-><init>([BLjava/security/SecureRandom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 164
    return-object v1

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 169
    throw v1

    .line 157
    .end local v0    # "fIn":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "stream for loading is null in JournaledAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initFromEncoding([BLjava/security/SecureRandom;)V
    .locals 3
    .param p1, "encoding"    # [B
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encoding",
            "random"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 99
    .local v0, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 100
    new-instance v1, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;-><init>([BLjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    .line 101
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 217
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->initFromEncoding([BLjava/security/SecureRandom;)V

    .line 218
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 226
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 227
    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 205
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->algID:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 206
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/util/JournalingSecureRandom;->getFullTranscript()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 208
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v1

    return-object v1
.end method

.method public getJournalingSecureRandom()Lorg/bouncycastle/crypto/util/JournalingSecureRandom;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->journaling:Lorg/bouncycastle/crypto/util/JournalingSecureRandom;

    return-object v0
.end method

.method public storeState(Ljava/io/File;)V
    .locals 2
    .param p1, "tempfile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempfile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v0, "fOut":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->storeState(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 138
    nop

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 138
    throw v1

    .line 125
    .end local v0    # "fOut":Ljava/io/FileOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file for storage is null in JournaledAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public storeState(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/util/JournaledAlgorithm;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 150
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output stream for storage is null in JournaledAlgorithm"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
