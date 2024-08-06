.class public final La/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g$a;,
        La/g$b;
    }
.end annotation


# static fields
.field public static final a:La/g;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La/g$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:La/a/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/g$a;

    invoke-direct {v0}, La/g$a;-><init>()V

    invoke-virtual {v0}, La/g$a;->a()La/g;

    move-result-object v0

    sput-object v0, La/g;->a:La/g;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La/g;-><init>(Ljava/util/List;La/a/g/b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;La/a/g/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/g$b;",
            ">;",
            "La/a/g/b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g;->b:Ljava/util/List;

    iput-object p2, p0, La/g;->c:La/a/g/b;

    return-void
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Lb/e;
    .locals 1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lb/e;->a([B)Lb/e;

    move-result-object v0

    invoke-static {v0}, La/a/c;->b(Lb/e;)Lb/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate pinning requires X509 certificates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sha256/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, La/g;->a(Ljava/security/cert/X509Certificate;)Lb/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(La/a/g/b;)La/g;
    .locals 2

    iget-object v0, p0, La/g;->c:La/a/g/b;

    if-eq v0, p1, :cond_0

    new-instance v0, La/g;

    iget-object v1, p0, La/g;->b:Ljava/util/List;

    invoke-direct {v0, v1, p1}, La/g;-><init>(Ljava/util/List;La/a/g/b;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, La/g;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, La/g$b;

    iget-object v0, v6, La/g$b;->a:Ljava/lang/String;

    const-string v2, "*."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, v6, La/g$b;->b:Ljava/lang/String;

    iget-object v0, v6, La/g$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v7

    :goto_2
    move-object v7, v0

    goto :goto_0

    :cond_1
    iget-object v0, v6, La/g$b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, La/g;->c:La/a/g/b;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/g;->c:La/a/g/b;

    invoke-virtual {v0, p2, p1}, La/a/g/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move v5, v1

    :goto_3
    if-ge v5, v9, :cond_b

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    move-object v3, v8

    move v6, v1

    move-object v4, v8

    :goto_4
    if-ge v6, v10, :cond_a

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g$b;

    iget-object v11, v0, La/g$b;->c:Ljava/lang/String;

    const-string v12, "sha256/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-nez v4, :cond_6

    invoke-static {v2}, La/g;->a(Ljava/security/cert/X509Certificate;)Lb/e;

    move-result-object v4

    :cond_6
    iget-object v0, v0, La/g$b;->d:Lb/e;

    invoke-virtual {v0, v4}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object v3, v0

    goto :goto_4

    :cond_7
    iget-object v11, v0, La/g$b;->c:Ljava/lang/String;

    const-string v12, "sha1/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lb/e;->a([B)Lb/e;

    move-result-object v3

    invoke-static {v3}, La/a/c;->a(Lb/e;)Lb/e;

    move-result-object v3

    :cond_8
    iget-object v0, v0, La/g$b;->d:Lb/e;

    invoke-virtual {v0, v3}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Certificate pinning failure!\n  Peer certificate chain:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_6
    if-ge v2, v4, :cond_c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const-string v5, "\n    "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, La/g;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_c
    const-string v0, "\n  Pinned certificates for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    :goto_7
    if-ge v1, v2, :cond_d

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g$b;

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v0, v7

    goto/16 :goto_2
.end method
