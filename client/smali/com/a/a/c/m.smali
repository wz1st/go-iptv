.class public Lcom/a/a/c/m;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/a/a/c/x;

.field public final b:Lcom/a/a/c/z;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/u;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/ac;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/r;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/v;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/a/a/c/w;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/a/a/c/w;

.field public k:Ljava/util/TimeZone;

.field public l:Ljava/util/Locale;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v1, Lcom/a/a/c/z;

    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    sget v2, Lcom/a/a/a;->e:I

    sget-object v3, Lcom/a/a/c/aa;->y:[Lcom/a/a/c/aa;

    invoke-direct {v1, v0, v2, v3}, Lcom/a/a/c/z;-><init>(Ljava/io/Writer;I[Lcom/a/a/c/aa;)V

    sget-object v0, Lcom/a/a/c/x;->a:Lcom/a/a/c/x;

    invoke-direct {p0, v1, v0}, Lcom/a/a/c/m;-><init>(Lcom/a/a/c/z;Lcom/a/a/c/x;)V

    return-void
.end method

.method public constructor <init>(Lcom/a/a/c/z;Lcom/a/a/c/x;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/a/a/c/m;->c:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/c/m;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/c/m;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/c/m;->f:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/c/m;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/c/m;->h:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/c/m;->m:I

    iput-object v1, p0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    sget-object v0, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    sget-object v0, Lcom/a/a/a;->b:Ljava/util/Locale;

    iput-object v0, p0, Lcom/a/a/c/m;->l:Ljava/util/Locale;

    iput-object p1, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iput-object p2, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    sget-object v0, Lcom/a/a/a;->a:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    return-void
.end method

.method public static a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/a/a/c/m;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/ac;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Lcom/a/a/c/ac;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_1

    :cond_0
    return-object p3

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/a/a/c/m;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, p2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/r;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Lcom/a/a/c/r;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :cond_2
    return-object v1
.end method

.method public a()Ljava/text/DateFormat;
    .locals 3

    iget-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/m;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/a/a/c/m;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/m;->l:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    return-object v0
.end method

.method public a(Lcom/a/a/c/aa;Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/c/z;->a(Lcom/a/a/c/aa;Z)V

    return-void
.end method

.method public a(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v0, v0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->o:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    new-instance v0, Lcom/a/a/c/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/a/a/c/w;-><init>(Lcom/a/a/c/w;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget-object v0, p0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/a/a/c/m;->j:Lcom/a/a/c/w;

    iget-object v1, v0, Lcom/a/a/c/w;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "{\"$ref\":\"@\"}"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/a/a/c/w;->a:Lcom/a/a/c/w;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/a/a/c/w;->b:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "{\"$ref\":\"..\"}"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/a/a/c/w;->a:Lcom/a/a/c/w;

    :cond_2
    iget-object v1, v0, Lcom/a/a/c/w;->a:Lcom/a/a/c/w;

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/a/a/c/w;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "{\"$ref\":\"$\"}"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/a/a/c/m;->i:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/w;

    invoke-virtual {v0}, Lcom/a/a/c/w;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v2, "{\"$ref\":\""

    invoke-virtual {v1, v2}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/a/a/c/m;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/c/m;->a()Ljava/text/DateFormat;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/a/a/c/m;->l:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v1, p0, Lcom/a/a/c/m;->k:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v1, v0}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/a/a/c/m;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/a/a/c/m;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/c/m;->o:Ljava/text/DateFormat;

    :cond_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/ac;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->f:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/a/a/d;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v0, v0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->g:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v0, v0, Lcom/a/a/c/z;->c:I

    sget-object v1, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v1, v1, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0, p1}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/a/a/c/m;->h:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/v;

    if-eqz p2, :cond_3

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_2
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p0, p1, v1}, Lcom/a/a/c/v;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object p2, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move-object v2, p2

    goto :goto_2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/a/a/c/m;->e:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_3

    instance-of v1, p2, Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-static {p2}, Lcom/a/a/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/c/u;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1, p3}, Lcom/a/a/c/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move-object v2, p2

    goto :goto_1
.end method

.method public c()V
    .locals 1

    iget v0, p0, Lcom/a/a/c/m;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/c/m;->m:I

    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, Lcom/a/a/c/m;->m:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/c/m;->m:I

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/a/a/c/m;->m:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/a/a/c/z;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->c:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->c:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->g:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/c/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/c/m;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/m;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/m;->e:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    invoke-virtual {v0}, Lcom/a/a/c/z;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
