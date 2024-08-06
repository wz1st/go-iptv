.class final Lcom/g/a/c/c/k;
.super Lcom/g/a/c/c/c;


# instance fields
.field i:Lcom/g/a/c/c/g;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Z

.field m:Z

.field n:Lcom/g/a/c/c/e;

.field o:Z

.field final synthetic p:Lcom/g/a/f;

.field final synthetic q:Lcom/g/a/c/c/j;


# direct methods
.method constructor <init>(Lcom/g/a/c/c/j;Lcom/g/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iput-object p2, p0, Lcom/g/a/c/c/k;->p:Lcom/g/a/f;

    invoke-direct {p0}, Lcom/g/a/c/c/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/g/a/c/c/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/c/c/k;->o()V

    return-void
.end method

.method static synthetic a(Lcom/g/a/c/c/k;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/g/a/c/c/k;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Lcom/g/a/c/c/k;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/g/a/c/c/k;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/g/a/c/g;->b:Lcom/g/a/c/g;

    invoke-virtual {p0}, Lcom/g/a/c/c/k;->i()Lcom/g/a/c/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/g/a/c/d;->a(Lcom/g/a/c/g;Lcom/g/a/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v1, p0, Lcom/g/a/c/c/k;->p:Lcom/g/a/f;

    invoke-virtual {v0, v1}, Lcom/g/a/c/c/j;->a(Lcom/g/a/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/g/a/c/c/k;->p:Lcom/g/a/f;

    invoke-interface {v0}, Lcom/g/a/f;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/g/a/c/c;)Lcom/g/a/c/a/a;
    .locals 1

    invoke-static {p1}, Lcom/g/a/c/c/a;->a(Lcom/g/a/c/c;)Lcom/g/a/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final a_(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Lcom/g/a/c/c/e;->b()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/g/a/c/c/k;->m:Z

    invoke-super {p0, p1}, Lcom/g/a/c/c/c;->a_(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/g/a/c/c/k;->d:Lcom/g/a/f;

    new-instance v1, Lcom/g/a/c/c/n;

    invoke-direct {v1, p0}, Lcom/g/a/c/c/n;-><init>(Lcom/g/a/c/c/k;)V

    invoke-interface {v0, v1}, Lcom/g/a/f;->a(Lcom/g/a/a/c;)V

    invoke-direct {p0}, Lcom/g/a/c/c/k;->o()V

    invoke-virtual {p0}, Lcom/g/a/c/c/k;->a()Lcom/g/a/c/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/g/a/c/a/a;->d_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    iget-object v1, p0, Lcom/g/a/c/c/k;->i:Lcom/g/a/c/c/g;

    iget-object v2, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    invoke-virtual {v0, v1, p0, v2}, Lcom/g/a/c/c/a;->a(Lcom/g/a/c/c/g;Lcom/g/a/c/c/b;Lcom/g/a/c/c/d;)V

    goto :goto_0
.end method

.method public final d()Lcom/g/a/c/e;
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/g/a/c/c/k;->j:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_0

    new-instance v0, Lcom/g/a/c/e;

    invoke-direct {v0}, Lcom/g/a/c/e;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/g/a/c/e;->a(Ljava/lang/String;)Lcom/g/a/c/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected final h()V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/g/a/c/c/k;->i()Lcom/g/a/c/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/g/a/c/c/k;->o:Z

    if-nez v1, :cond_1

    const-string v1, "100-continue"

    const-string v2, "Expect"

    invoke-virtual {v0, v2}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/g/a/c/c/k;->l()V

    iget-object v0, p0, Lcom/g/a/c/c/k;->d:Lcom/g/a/f;

    const-string v1, "HTTP/1.1 100 Continue\r\n\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v2, Lcom/g/a/c/c/l;

    invoke-direct {v2, p0}, Lcom/g/a/c/c/l;-><init>(Lcom/g/a/c/c/k;)V

    invoke-static {v0, v1, v2}, Lcom/g/a/t;->a(Lcom/g/a/k;[BLcom/g/a/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/g/a/c/c/k;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/g/a/c/c/k;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/g/a/c/c/k;->j:Ljava/lang/String;

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/g/a/c/c/k;->k:Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/g/a/c/c/k;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    iget-object v1, v0, Lcom/g/a/c/c/a;->f:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    iget-object v0, v0, Lcom/g/a/c/c/a;->f:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/g/a/c/c/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/c/c/a$a;

    iget-object v3, v0, Lcom/g/a/c/c/a$a;->a:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/g/a/c/c/k;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lcom/g/a/c/c/k;->e:Ljava/util/regex/Matcher;

    iget-object v0, v0, Lcom/g/a/c/c/a$a;->b:Lcom/g/a/c/c/g;

    iput-object v0, p0, Lcom/g/a/c/c/k;->i:Lcom/g/a/c/c/g;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/g/a/c/c/m;

    iget-object v1, p0, Lcom/g/a/c/c/k;->p:Lcom/g/a/f;

    invoke-direct {v0, p0, v1, p0}, Lcom/g/a/c/c/m;-><init>(Lcom/g/a/c/c/k;Lcom/g/a/f;Lcom/g/a/c/c/c;)V

    iput-object v0, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    invoke-virtual {v0}, Lcom/g/a/c/c/a;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/g/a/c/c/k;->i:Lcom/g/a/c/c/g;

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/g/a/c/c/e;->a(I)Lcom/g/a/c/c/d;

    iget-object v0, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    invoke-virtual {v0}, Lcom/g/a/c/c/e;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/g/a/c/c/k;->a()Lcom/g/a/c/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/g/a/c/a/a;->d_()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    iget-object v1, p0, Lcom/g/a/c/c/k;->i:Lcom/g/a/c/c/g;

    iget-object v2, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    invoke-virtual {v0, v1, p0, v2}, Lcom/g/a/c/c/a;->a(Lcom/g/a/c/c/g;Lcom/g/a/c/c/b;Lcom/g/a/c/c/d;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/g/a/c/c/k;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/g/a/c/c/k;->q:Lcom/g/a/c/c/j;

    iget-object v0, v0, Lcom/g/a/c/c/j;->a:Lcom/g/a/c/c/a;

    iget-object v1, p0, Lcom/g/a/c/c/k;->i:Lcom/g/a/c/c/g;

    iget-object v2, p0, Lcom/g/a/c/c/k;->n:Lcom/g/a/c/c/e;

    invoke-virtual {v0, v1, p0, v2}, Lcom/g/a/c/c/a;->a(Lcom/g/a/c/c/g;Lcom/g/a/c/c/b;Lcom/g/a/c/c/d;)V

    goto/16 :goto_0
.end method
