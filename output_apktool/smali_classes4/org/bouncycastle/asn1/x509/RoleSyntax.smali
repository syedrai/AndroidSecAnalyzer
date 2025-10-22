.class public Lorg/bouncycastle/asn1/x509/RoleSyntax;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "RoleSyntax.java"


# instance fields
.field private roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field private roleName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "roleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleName"
        }
    .end annotation

    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 97
    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 96
    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 98
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seq"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 110
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 119
    .local v2, "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown tag in RoleSyntax"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :pswitch_0
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 126
    goto :goto_1

    .line 122
    :pswitch_1
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 123
    nop

    .line 116
    .end local v2    # "taggedObject":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 113
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "roleName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleName"
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 2
    .param p1, "roleAuthority"    # Lorg/bouncycastle/asn1/x509/GeneralNames;
    .param p2, "roleName"    # Lorg/bouncycastle/asn1/x509/GeneralName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roleAuthority",
            "roleName"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 73
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 74
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the role name MUST be non empty and MUST use the URI option of GeneralName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/RoleSyntax;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 44
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    if-eqz v0, :cond_0

    .line 46
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    return-object v0

    .line 48
    :cond_0
    if-eqz p0, :cond_1

    .line 50
    new-instance v0, Lorg/bouncycastle/asn1/x509/RoleSyntax;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/RoleSyntax;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRoleAuthority()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getRoleAuthorityAsString()[Ljava/lang/String;
    .locals 5

    .line 172
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    .line 178
    .local v0, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 179
    .local v1, "namesString":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 181
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 182
    .local v3, "value":Lorg/bouncycastle/asn1/ASN1Encodable;
    instance-of v4, v3, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v4, :cond_1

    .line 184
    move-object v4, v3

    check-cast v4, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    goto :goto_1

    .line 188
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 179
    .end local v3    # "value":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getRoleName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public getRoleNameAsString()Ljava/lang/String;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1String;

    .line 162
    .local v0, "str":Lorg/bouncycastle/asn1/ASN1String;
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    .line 207
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    .line 208
    .local v0, "v":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleName:Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 214
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 219
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleNameAsString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "buff":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/RoleSyntax;->roleAuthority:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RoleSyntax;->getRoleAuthorityAsString()[Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "names":[Ljava/lang/String;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 231
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 223
    .end local v1    # "names":[Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
