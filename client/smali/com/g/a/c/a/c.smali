.class public Lcom/g/a/c/a/c;
.super Lcom/g/a/c/c/f;

# interfaces
.implements Lcom/g/a/c/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/c/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/a/c/c/f;",
        "Lcom/g/a/c/a/a",
        "<",
        "Lcom/g/a/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field d:Lcom/g/a/p;

.field e:Lcom/g/a/c/c;

.field f:Lcom/g/a/h;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Lcom/g/a/c/a/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/g/a/c/c/f;-><init>()V

    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcom/g/a/c/a/c;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/g/a/c/c/f;-><init>()V

    const-string v0, "multipart/form-data"

    iput-object v0, p0, Lcom/g/a/c/a/c;->h:Ljava/lang/String;

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v4, "boundary"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/g/a/c/a/c;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No boundary found for multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/g/a/c/a/c;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/c/a/c;->i()Lcom/g/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/g/a/i;Lcom/g/a/a/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/g/a/c/a/c;->a(Lcom/g/a/i;)V

    invoke-virtual {p0, p2}, Lcom/g/a/c/a/c;->b(Lcom/g/a/a/a;)V

    return-void
.end method

.method final d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/g/a/c/a/c;->f:Lcom/g/a/h;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/g/a/c/a/c;->e:Lcom/g/a/c/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/g/a/c/c;

    invoke-direct {v0}, Lcom/g/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/g/a/c/a/c;->e:Lcom/g/a/c/c;

    :cond_1
    iget-object v0, p0, Lcom/g/a/c/a/c;->e:Lcom/g/a/c/c;

    iget-object v1, p0, Lcom/g/a/c/a/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/g/a/c/a/c;->f:Lcom/g/a/h;

    invoke-virtual {v2}, Lcom/g/a/h;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/g/a/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/g/a/c/c;

    iput-object v3, p0, Lcom/g/a/c/a/c;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/g/a/c/a/c;->f:Lcom/g/a/h;

    goto :goto_0
.end method

.method public d_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()V
    .locals 0

    invoke-super {p0}, Lcom/g/a/c/c/f;->e()V

    invoke-virtual {p0}, Lcom/g/a/c/a/c;->d()V

    return-void
.end method

.method protected final h()V
    .locals 3

    new-instance v0, Lcom/g/a/c/c;

    invoke-direct {v0}, Lcom/g/a/c/c;-><init>()V

    new-instance v1, Lcom/g/a/p;

    invoke-direct {v1}, Lcom/g/a/p;-><init>()V

    iput-object v1, p0, Lcom/g/a/c/a/c;->d:Lcom/g/a/p;

    iget-object v1, p0, Lcom/g/a/c/a/c;->d:Lcom/g/a/p;

    new-instance v2, Lcom/g/a/c/a/h;

    invoke-direct {v2, p0, v0}, Lcom/g/a/c/a/h;-><init>(Lcom/g/a/c/a/c;Lcom/g/a/c/c;)V

    invoke-virtual {v1, v2}, Lcom/g/a/p;->a(Lcom/g/a/p$a;)V

    iget-object v0, p0, Lcom/g/a/c/a/c;->d:Lcom/g/a/p;

    invoke-virtual {p0, v0}, Lcom/g/a/c/a/c;->a(Lcom/g/a/a/c;)V

    return-void
.end method

.method public i()Lcom/g/a/c/e;
    .locals 2

    new-instance v0, Lcom/g/a/c/e;

    iget-object v1, p0, Lcom/g/a/c/a/c;->e:Lcom/g/a/c/c;

    invoke-virtual {v1}, Lcom/g/a/c/c;->a()Lcom/g/a/c/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/g/a/c/e;-><init>(Lcom/g/a/c/e;)V

    return-object v0
.end method
