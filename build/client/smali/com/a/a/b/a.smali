.class public Lcom/a/a/b/a;
.super Lcom/a/a/b/a/d;


# instance fields
.field protected a:Lcom/a/a/b/a/f;


# direct methods
.method public constructor <init>(Lcom/a/a/b/m;Ljava/lang/Class;Lcom/a/a/d/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/m;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/d/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lcom/a/a/b/a/d;-><init>(Ljava/lang/Class;Lcom/a/a/d/a;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/m;)Lcom/a/a/b/a/f;
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iget-object v1, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    return-object v0
.end method

.method public a(Lcom/a/a/b/b;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 4
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

    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/a/a/b/b;->b:Lcom/a/a/b/m;

    iget-object v1, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    iget-object v2, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/b/m;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/a/a/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    :cond_0
    instance-of v0, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iput-object p3, v0, Lcom/a/a/b/l;->d:Ljava/lang/reflect/Type;

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v0, Lcom/a/a/d/a;->l:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    instance-of v0, v0, Lcom/a/a/c/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    check-cast v0, Lcom/a/a/c/h;

    iget-object v2, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/a/a/c/h;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p1, Lcom/a/a/b/b;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lcom/a/a/b/b;->c()Lcom/a/a/b/b$a;

    move-result-object v0

    iput-object p0, v0, Lcom/a/a/b/b$a;->a:Lcom/a/a/b/a/d;

    iget-object v1, p1, Lcom/a/a/b/b;->d:Lcom/a/a/b/l;

    iput-object v1, v0, Lcom/a/a/b/b$a;->b:Lcom/a/a/b/l;

    const/4 v0, 0x0

    iput v0, p1, Lcom/a/a/b/b;->e:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/a/a/b/a;->a:Lcom/a/a/b/a/f;

    iget-object v1, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lcom/a/a/b/a/f;->a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-interface {p4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/a/a/b/a;->b:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    :cond_6
    invoke-virtual {p0, p2, v0}, Lcom/a/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
