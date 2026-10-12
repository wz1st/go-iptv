.class final Lcom/a/a/b/n;
.super Lcom/a/a/b/a/d;


# instance fields
.field private final a:I

.field private final d:Ljava/util/List;

.field private final e:Lcom/a/a/b/b;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/a/a/b/b;Ljava/util/List;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/a/a/b/a/d;-><init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V

    iput-object p1, p0, Lcom/a/a/b/n;->e:Lcom/a/a/b/b;

    iput p3, p0, Lcom/a/a/b/n;->a:I

    iput-object p2, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/b/n;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/a/b/n;->g:Ljava/util/Map;

    iput-object v1, p0, Lcom/a/a/b/n;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/a/a/b/a/d;-><init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V

    iput-object v1, p0, Lcom/a/a/b/n;->e:Lcom/a/a/b/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/n;->a:I

    iput-object v1, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/a/a/b/n;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/a/a/b/n;->g:Ljava/util/Map;

    iput-object p1, p0, Lcom/a/a/b/n;->h:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/a/a/b/a/d;-><init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V

    iput-object v1, p0, Lcom/a/a/b/n;->e:Lcom/a/a/b/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/b/n;->a:I

    iput-object v1, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/a/a/b/n;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/a/a/b/n;->g:Ljava/util/Map;

    iput-object v1, p0, Lcom/a/a/b/n;->h:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/b/n;->g:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/b/n;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/a/a/b/n;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/n;->h:Ljava/util/Collection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/b/n;->h:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    iget v1, p0, Lcom/a/a/b/n;->a:I

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    instance-of v0, v0, Lcom/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/n;->d:Ljava/util/List;

    check-cast v0, Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->b()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lcom/a/a/b/n;->a:I

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/a/a/b;->c()Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/a/a/b;->c()Ljava/lang/reflect/Type;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/b/n;->e:Lcom/a/a/b/b;

    iget-object v2, v2, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    invoke-static {p2, v0, v2}, Lcom/a/a/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/a/a/b/m;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    iget v0, p0, Lcom/a/a/b/n;->a:I

    invoke-static {v1, v0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0
.end method
