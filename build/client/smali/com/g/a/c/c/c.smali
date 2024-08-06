.class public abstract Lcom/g/a/c/c/c;
.super Lcom/g/a/n;

# interfaces
.implements Lcom/g/a/a/a;
.implements Lcom/g/a/c/c/b;


# instance fields
.field d:Lcom/g/a/f;

.field e:Ljava/util/regex/Matcher;

.field f:Lcom/g/a/p$a;

.field g:Ljava/lang/String;

.field h:Lcom/g/a/c/a/a;

.field private i:Ljava/lang/String;

.field private j:Lcom/g/a/c/c;

.field private k:Lcom/g/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/g/a/n;-><init>()V

    new-instance v0, Lcom/g/a/c/c;

    invoke-direct {v0}, Lcom/g/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/c/c;->j:Lcom/g/a/c/c;

    new-instance v0, Lcom/g/a/c/c/o;

    invoke-direct {v0, p0}, Lcom/g/a/c/c/o;-><init>(Lcom/g/a/c/c/c;)V

    iput-object v0, p0, Lcom/g/a/c/c/c;->k:Lcom/g/a/a/a;

    new-instance v0, Lcom/g/a/c/c/p;

    invoke-direct {v0, p0}, Lcom/g/a/c/c/p;-><init>(Lcom/g/a/c/c/c;)V

    iput-object v0, p0, Lcom/g/a/c/c/c;->f:Lcom/g/a/p$a;

    return-void
.end method

.method static synthetic a(Lcom/g/a/c/c/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/g/a/c/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/g/a/c/c/c;)Lcom/g/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->j:Lcom/g/a/c/c;

    return-object v0
.end method

.method static synthetic c(Lcom/g/a/c/c/c;)Lcom/g/a/a/a;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->k:Lcom/g/a/a/a;

    return-object v0
.end method

.method protected static e()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "not http!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/g/a/c/a/a;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->h:Lcom/g/a/c/a/a;

    return-object v0
.end method

.method protected a(Lcom/g/a/c/c;)Lcom/g/a/c/a/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/g/a/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    invoke-interface {v0, p1}, Lcom/g/a/f;->a(Lcom/g/a/a/c;)V

    return-void
.end method

.method public a_(Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/g/a/c/c/c;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public f()Lcom/g/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->f()Lcom/g/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract h()V
.end method

.method public i()Lcom/g/a/c/c;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->j:Lcom/g/a/c/c;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->j()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->l()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->d:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->m()V

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/g/a/c/c/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/c/c;->j:Lcom/g/a/c/c;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/c/c;->j:Lcom/g/a/c/c;

    iget-object v1, p0, Lcom/g/a/c/c/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/g/a/c/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
