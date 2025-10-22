.class public abstract Lorg/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkContextTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo"
        }
    .end annotation

    .line 9
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo"
        }
    .end annotation

    .line 14
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObject"
        }
    .end annotation

    .line 19
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObjectParser"
        }
    .end annotation

    .line 24
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 5
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    return-object p0

    .line 31
    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 5
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 40
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    return-object p0

    .line 42
    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 5
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass"
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTagClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    return-object p0

    .line 53
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 5
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass"
        }
    .end annotation

    .line 62
    invoke-interface {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTagClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-object p0

    .line 64
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .line 263
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .line 269
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 143
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass"
        }
    .end annotation

    .line 173
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 178
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo"
        }
    .end annotation

    .line 148
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObject"
        }
    .end annotation

    .line 183
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo"
        }
    .end annotation

    .line 188
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .line 235
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(I)Ljava/lang/String;
    .locals 1
    .param p0, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagClass"
        }
    .end annotation

    .line 93
    sparse-switch p0, :sswitch_data_0

    .line 102
    const-string v0, "UNIVERSAL"

    return-object v0

    .line 100
    :sswitch_0
    const-string v0, "PRIVATE"

    return-object v0

    .line 98
    :sswitch_1
    const-string v0, "CONTEXT"

    return-object v0

    .line 96
    :sswitch_2
    const-string v0, "APPLICATION"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method static getTagClassText(Lorg/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 1
    .param p0, "tag"    # Lorg/bouncycastle/asn1/ASN1Tag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObject"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObjectParser"
        }
    .end annotation

    .line 88
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(II)Ljava/lang/String;
    .locals 3
    .param p0, "tagClass"    # I
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 123
    const-string v0, "]"

    sparse-switch p0, :sswitch_data_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNIVERSAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PRIVATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CONTEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APPLICATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method static getTagText(Lorg/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Lorg/bouncycastle/asn1/ASN1Tag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 2
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObject"
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 2
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObjectParser"
        }
    .end annotation

    .line 118
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObjectParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .line 286
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo"
        }
    .end annotation

    .line 163
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObject"
        }
    .end annotation

    .line 213
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo"
        }
    .end annotation

    .line 218
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagClass",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .line 241
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1
    .param p0, "taggedObject"    # Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObject",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .line 252
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo",
            "declaredExplicit",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    return-object v0

    .line 445
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-interface {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taggedObjectParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagClass",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 377
    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .param p0, "taggedObjectParser"    # Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "taggedObjectParser",
            "tagNo",
            "baseTagClass",
            "baseTagNo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method
