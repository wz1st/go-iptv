.class public final La/a/d/d;
.super Ljava/lang/Object;

# interfaces
.implements La/a/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/d/d$a;
    }
.end annotation


# static fields
.field private static final a:Lb/e;

.field private static final b:Lb/e;

.field private static final c:Lb/e;

.field private static final d:Lb/e;

.field private static final e:Lb/e;

.field private static final f:Lb/e;

.field private static final g:Lb/e;

.field private static final h:Lb/e;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:La/u;

.field private final n:La/a/b/g;

.field private final o:La/a/c/d;

.field private p:La/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "connection"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->a:Lb/e;

    const-string v0, "host"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->b:Lb/e;

    const-string v0, "keep-alive"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->c:Lb/e;

    const-string v0, "proxy-connection"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->d:Lb/e;

    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->e:Lb/e;

    const-string v0, "te"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->f:Lb/e;

    const-string v0, "encoding"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->g:Lb/e;

    const-string v0, "upgrade"

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v0

    sput-object v0, La/a/d/d;->h:Lb/e;

    const/16 v0, 0xb

    new-array v0, v0, [Lb/e;

    sget-object v1, La/a/d/d;->a:Lb/e;

    aput-object v1, v0, v3

    sget-object v1, La/a/d/d;->b:Lb/e;

    aput-object v1, v0, v4

    sget-object v1, La/a/d/d;->c:Lb/e;

    aput-object v1, v0, v5

    sget-object v1, La/a/d/d;->d:Lb/e;

    aput-object v1, v0, v6

    sget-object v1, La/a/d/d;->e:Lb/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/a/c/f;->d:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/a/c/f;->e:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/c/f;->f:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/a/c/f;->b:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/a/c/f;->c:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, La/a/c/f;->g:Lb/e;

    aput-object v2, v0, v1

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/a/d/d;->i:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/e;

    sget-object v1, La/a/d/d;->a:Lb/e;

    aput-object v1, v0, v3

    sget-object v1, La/a/d/d;->b:Lb/e;

    aput-object v1, v0, v4

    sget-object v1, La/a/d/d;->c:Lb/e;

    aput-object v1, v0, v5

    sget-object v1, La/a/d/d;->d:Lb/e;

    aput-object v1, v0, v6

    sget-object v1, La/a/d/d;->e:Lb/e;

    aput-object v1, v0, v7

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/a/d/d;->j:Ljava/util/List;

    const/16 v0, 0xe

    new-array v0, v0, [Lb/e;

    sget-object v1, La/a/d/d;->a:Lb/e;

    aput-object v1, v0, v3

    sget-object v1, La/a/d/d;->b:Lb/e;

    aput-object v1, v0, v4

    sget-object v1, La/a/d/d;->c:Lb/e;

    aput-object v1, v0, v5

    sget-object v1, La/a/d/d;->d:Lb/e;

    aput-object v1, v0, v6

    sget-object v1, La/a/d/d;->f:Lb/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/a/d/d;->e:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/a/d/d;->g:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/d/d;->h:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/a/c/f;->d:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/a/c/f;->e:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, La/a/c/f;->f:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, La/a/c/f;->b:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, La/a/c/f;->c:Lb/e;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, La/a/c/f;->g:Lb/e;

    aput-object v2, v0, v1

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/a/d/d;->k:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lb/e;

    sget-object v1, La/a/d/d;->a:Lb/e;

    aput-object v1, v0, v3

    sget-object v1, La/a/d/d;->b:Lb/e;

    aput-object v1, v0, v4

    sget-object v1, La/a/d/d;->c:Lb/e;

    aput-object v1, v0, v5

    sget-object v1, La/a/d/d;->d:Lb/e;

    aput-object v1, v0, v6

    sget-object v1, La/a/d/d;->f:Lb/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, La/a/d/d;->e:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/a/d/d;->g:Lb/e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/d/d;->h:Lb/e;

    aput-object v2, v0, v1

    invoke-static {v0}, La/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, La/a/d/d;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(La/u;La/a/b/g;La/a/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/d/d;->m:La/u;

    iput-object p2, p0, La/a/d/d;->n:La/a/b/g;

    iput-object p3, p0, La/a/d/d;->o:La/a/c/d;

    return-void
.end method

.method static synthetic a(La/a/d/d;)La/a/b/g;
    .locals 1

    iget-object v0, p0, La/a/d/d;->n:La/a/b/g;

    return-object v0
.end method

.method public static a(Ljava/util/List;)La/y$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)",
            "La/y$a;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, La/q$a;

    invoke-direct {v3}, La/q$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v5, v0, La/a/c/f;->i:Lb/e;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->j:Lb/e;

    invoke-virtual {v0}, Lb/e;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v6, La/a/c/f;->a:Lb/e;

    invoke-virtual {v5, v6}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v6, La/a/d/d;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, La/a/a;->a:La/a/a;

    invoke-virtual {v5}, Lb/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5, v0}, La/a/a;->a(La/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HTTP/1.1 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/d/m;->a(Ljava/lang/String;)La/a/d/m;

    move-result-object v0

    new-instance v1, La/y$a;

    invoke-direct {v1}, La/y$a;-><init>()V

    sget-object v2, La/v;->c:La/v;

    invoke-virtual {v1, v2}, La/y$a;->a(La/v;)La/y$a;

    move-result-object v1

    iget v2, v0, La/a/d/m;->a:I

    invoke-virtual {v1, v2}, La/y$a;->a(I)La/y$a;

    move-result-object v1

    iget-object v0, v0, La/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, La/y$a;->a(Ljava/lang/String;)La/y$a;

    move-result-object v0

    invoke-virtual {v3}, La/q$a;->a()La/q;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/q;)La/y$a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)La/y$a;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;)",
            "La/y$a;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v1, "HTTP/1.1"

    new-instance v7, La/q$a;

    invoke-direct {v7}, La/q$a;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_4

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v9, v0, La/a/c/f;->i:Lb/e;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->j:Lb/e;

    invoke-virtual {v0}, Lb/e;->f()Ljava/lang/String;

    move-result-object v10

    move-object v0, v1

    move v3, v4

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_3

    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    :goto_2
    invoke-virtual {v10, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, La/a/c/f;->a:Lb/e;

    invoke-virtual {v9, v3}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_0
    :goto_3
    add-int/lit8 v1, v5, 0x1

    move v3, v1

    goto :goto_1

    :cond_1
    sget-object v3, La/a/c/f;->g:Lb/e;

    invoke-virtual {v9, v3}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_3

    :cond_2
    sget-object v3, La/a/d/d;->j:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, La/a/a;->a:La/a/a;

    invoke-virtual {v9}, Lb/e;->f()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v7, v11, v1}, La/a/a;->a(La/q$a;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v6, 0x1

    move-object v1, v0

    move v6, v3

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/d/m;->a(Ljava/lang/String;)La/a/d/m;

    move-result-object v0

    new-instance v1, La/y$a;

    invoke-direct {v1}, La/y$a;-><init>()V

    sget-object v2, La/v;->d:La/v;

    invoke-virtual {v1, v2}, La/y$a;->a(La/v;)La/y$a;

    move-result-object v1

    iget v2, v0, La/a/d/m;->a:I

    invoke-virtual {v1, v2}, La/y$a;->a(I)La/y$a;

    move-result-object v1

    iget-object v0, v0, La/a/d/m;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, La/y$a;->a(Ljava/lang/String;)La/y$a;

    move-result-object v0

    invoke-virtual {v7}, La/q$a;->a()La/q;

    move-result-object v1

    invoke-virtual {v0, v1}, La/y$a;->a(La/q;)La/y$a;

    move-result-object v0

    return-object v0

    :cond_6
    move v5, v1

    goto :goto_2
.end method

.method public static b(La/w;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/w;",
            ")",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, La/w;->c()La/q;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, La/q;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, La/a/c/f;

    sget-object v4, La/a/c/f;->d:Lb/e;

    invoke-virtual {p0}, La/w;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, La/a/c/f;

    sget-object v4, La/a/c/f;->e:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v5

    invoke-static {v5}, La/a/d/k;->a(La/r;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, La/a/c/f;

    sget-object v4, La/a/c/f;->b:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v5

    invoke-static {v5, v0}, La/a/c;->a(La/r;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, La/a/c/f;

    sget-object v4, La/a/c/f;->f:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v5

    invoke-virtual {v5}, La/r;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, La/q;->b()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, La/q;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v4

    sget-object v5, La/a/d/d;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, La/a/c/f;

    invoke-virtual {v1, v0}, La/q;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static c(La/w;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/w;",
            ")",
            "Ljava/util/List",
            "<",
            "La/a/c/f;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, La/w;->c()La/q;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, La/q;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, La/a/c/f;

    sget-object v1, La/a/c/f;->d:Lb/e;

    invoke-virtual {p0}, La/w;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/c/f;

    sget-object v1, La/a/c/f;->e:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v3

    invoke-static {v3}, La/a/d/k;->a(La/r;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/c/f;

    sget-object v1, La/a/c/f;->g:Lb/e;

    const-string v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/c/f;

    sget-object v1, La/a/c/f;->c:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v3

    invoke-static {v3, v2}, La/a/c;->a(La/r;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, La/a/c/f;

    sget-object v1, La/a/c/f;->f:Lb/e;

    invoke-virtual {p0}, La/w;->g()La/r;

    move-result-object v3

    invoke-virtual {v3}, La/r;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v4}, La/q;->b()I

    move-result v7

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_3

    invoke-virtual {v4, v3}, La/q;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/e;->a(Ljava/lang/String;)Lb/e;

    move-result-object v8

    sget-object v0, La/a/d/d;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v3}, La/q;->b(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, La/a/c/f;

    invoke-direct {v0, v8, v9}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->i:Lb/e;

    invoke-virtual {v0, v8}, Lb/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v10, La/a/c/f;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/c/f;

    iget-object v0, v0, La/a/c/f;->j:Lb/e;

    invoke-virtual {v0}, Lb/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v8, v0}, La/a/c/f;-><init>(Lb/e;Ljava/lang/String;)V

    invoke-interface {v5, v1, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    return-object v5
.end method


# virtual methods
.method public final a(La/y;)La/z;
    .locals 3

    new-instance v0, La/a/d/d$a;

    iget-object v1, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v1}, La/a/c/e;->e()Lb/m;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/a/d/d$a;-><init>(La/a/d/d;Lb/m;)V

    new-instance v1, La/a/d/j;

    invoke-virtual {p1}, La/y;->e()La/q;

    move-result-object v2

    invoke-static {v0}, Lb/k;->a(Lb/m;)Lb/d;

    move-result-object v0

    invoke-direct {v1, v2, v0}, La/a/d/j;-><init>(La/q;Lb/d;)V

    return-object v1
.end method

.method public final a(La/w;J)Lb/l;
    .locals 1

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->d()Lb/l;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->d()Lb/l;

    move-result-object v0

    invoke-interface {v0}, Lb/l;->close()V

    return-void
.end method

.method public final a(La/w;)V
    .locals 4

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, La/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a/d/g;->b(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, La/a/d/d;->o:La/a/c/d;

    invoke-virtual {v0}, La/a/c/d;->c()La/v;

    move-result-object v0

    sget-object v2, La/v;->c:La/v;

    if-ne v0, v2, :cond_1

    invoke-static {p1}, La/a/d/d;->b(La/w;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iget-object v2, p0, La/a/d/d;->o:La/a/c/d;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, La/a/c/d;->a(Ljava/util/List;ZZ)La/a/c/e;

    move-result-object v0

    iput-object v0, p0, La/a/d/d;->p:La/a/c/e;

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->h()Lb/n;

    move-result-object v0

    iget-object v1, p0, La/a/d/d;->m:La/u;

    invoke-virtual {v1}, La/u;->u()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/n;->a(JLjava/util/concurrent/TimeUnit;)Lb/n;

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->i()Lb/n;

    move-result-object v0

    iget-object v1, p0, La/a/d/d;->m:La/u;

    invoke-virtual {v1}, La/u;->y()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lb/n;->a(JLjava/util/concurrent/TimeUnit;)Lb/n;

    goto :goto_0

    :cond_1
    invoke-static {p1}, La/a/d/d;->c(La/w;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public final f()La/y$a;
    .locals 2

    iget-object v0, p0, La/a/d/d;->o:La/a/c/d;

    invoke-virtual {v0}, La/a/c/d;->c()La/v;

    move-result-object v0

    sget-object v1, La/v;->c:La/v;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La/a/d/d;->a(Ljava/util/List;)La/y$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/d/d;->p:La/a/c/e;

    invoke-virtual {v0}, La/a/c/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La/a/d/d;->b(Ljava/util/List;)La/y$a;

    move-result-object v0

    goto :goto_0
.end method
