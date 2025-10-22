.class public Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
.super Ljava/lang/Object;
.source "SkeinParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/SkeinParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "paramsMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsMap"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 161
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 162
    .local v0, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 165
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/SkeinParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/bouncycastle/crypto/params/SkeinParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 171
    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->-$$Nest$fgetparameters(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 172
    .local v0, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 175
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->-$$Nest$fgetparameters(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .end local v1    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/params/SkeinParameters;
    .locals 3

    .line 326
    new-instance v0, Lorg/bouncycastle/crypto/params/SkeinParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/params/SkeinParameters-IA;)V

    return-object v0
.end method

.method public set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    .line 194
    if-eqz p2, :cond_3

    .line 198
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x3f

    if-ge p1, v1, :cond_0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    .line 208
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-object p0

    .line 205
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyIdentifier([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "keyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyIdentifier"
        }
    .end annotation

    .line 309
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNonce([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nonce"
        }
    .end annotation

    .line 317
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "distinguisher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "date",
            "emailAddress",
            "distinguisher"
        }
    .end annotation

    .line 244
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 246
    .local v2, "out":Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 253
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v3    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte I/O failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "dateLocale"    # Ljava/util/Locale;
    .param p3, "emailAddress"    # Ljava/lang/String;
    .param p4, "distinguisher"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "date",
            "dateLocale",
            "emailAddress",
            "distinguisher"
        }
    .end annotation

    .line 279
    const-string v0, " "

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 281
    .local v2, "out":Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMdd"

    invoke-direct {v3, v4, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 282
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 288
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 290
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "out":Ljava/io/OutputStreamWriter;
    .end local v3    # "format":Ljava/text/DateFormat;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte I/O failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "personalisation"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "personalisation"
        }
    .end annotation

    .line 225
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 301
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method
