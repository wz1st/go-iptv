.class public final Lcom/a/a/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/b/a/f;
.implements Lcom/a/a/c/t;


# static fields
.field public static final a:Lcom/a/a/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/c/f;

    invoke-direct {v0}, Lcom/a/a/c/f;-><init>()V

    sput-object v0, Lcom/a/a/c/f;->a:Lcom/a/a/c/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/b/b;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/b/b;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/16 v3, 0x10

    iget-object v0, p1, Lcom/a/a/b/b;->c:Lcom/a/a/b/e;

    invoke-virtual {v0}, Lcom/a/a/b/e;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/a/a/b/e;->n()I

    move-result v1

    invoke-virtual {v0, v3}, Lcom/a/a/b/e;->b(I)V

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/a/a/b/b;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/a/a/d/d;->m(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 3

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_1

    iget v1, v0, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->i:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/a/a/c/z;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
