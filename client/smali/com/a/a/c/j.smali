.class public final Lcom/a/a/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/a/a/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/a/a/d/a;

.field protected final b:Z

.field protected final c:I

.field protected final d:Ljava/lang/String;

.field private e:Lcom/a/a/c/j$a;


# direct methods
.method public constructor <init>(Lcom/a/a/d/a;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    invoke-virtual {p1}, Lcom/a/a/d/a;->a()Lcom/a/a/a/b;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v5, v3

    sget-object v7, Lcom/a/a/c/aa;->c:Lcom/a/a/c/aa;

    if-ne v2, v7, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/a/a/a/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-interface {v4}, Lcom/a/a/a/b;->f()[Lcom/a/a/c/aa;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/c/aa;->a([Lcom/a/a/c/aa;)I

    move-result v2

    iput v2, p0, Lcom/a/a/c/j;->c:I

    :goto_2
    iput-boolean v0, p0, Lcom/a/a/c/j;->b:Z

    iput-object v1, p0, Lcom/a/a/c/j;->d:Ljava/lang/String;

    return-void

    :cond_2
    iput v2, p0, Lcom/a/a/c/j;->c:I

    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/a/a/c/j;)I
    .locals 2

    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, p1, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    invoke-virtual {v0, v1}, Lcom/a/a/d/a;->a(Lcom/a/a/d/a;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    invoke-virtual {v0, p1}, Lcom/a/a/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->b:Ljava/lang/reflect/Method;

    :goto_0
    check-cast v0, Ljava/lang/reflect/Member;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/a/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get property error\u3002 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/a/a/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->c:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public a(Lcom/a/a/c/m;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v1, v0, Lcom/a/a/c/z;->c:I

    sget-object v2, Lcom/a/a/c/aa;->a:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->j:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v3, v3, Lcom/a/a/d/a;->j:[C

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/c/z;->write([CII)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/a/a/c/z;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public a(Lcom/a/a/c/m;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/a/a/c/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/j;->d:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/a/a/c/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/c/j;->e:Lcom/a/a/c/j$a;

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v0, v0, Lcom/a/a/d/a;->f:Ljava/lang/Class;

    :goto_1
    iget-object v1, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v1, v0}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v1

    new-instance v2, Lcom/a/a/c/j$a;

    invoke-direct {v2, v1, v0}, Lcom/a/a/c/j$a;-><init>(Lcom/a/a/c/t;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/a/a/c/j;->e:Lcom/a/a/c/j$a;

    :cond_1
    iget-object v0, p0, Lcom/a/a/c/j;->e:Lcom/a/a/c/j$a;

    if-nez p2, :cond_6

    iget v1, p0, Lcom/a/a/c/j;->c:I

    sget-object v2, Lcom/a/a/c/aa;->h:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const-class v1, Ljava/lang/Number;

    iget-object v2, v0, Lcom/a/a/c/j$a;->b:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/a/a/c/j;->c:I

    sget-object v2, Lcom/a/a/c/aa;->i:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const-class v1, Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/a/a/c/j$a;->b:Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/a/a/c/j;->c:I

    sget-object v2, Lcom/a/a/c/aa;->f:Lcom/a/a/c/aa;

    iget v2, v2, Lcom/a/a/c/aa;->x:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-class v1, Ljava/util/Collection;

    iget-object v2, v0, Lcom/a/a/c/j$a;->b:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/a/a/c/z;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/a/a/c/j$a;->a:Lcom/a/a/c/t;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v3, v3, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/a/a/c/j$a;->b:Ljava/lang/Class;

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, v0, Lcom/a/a/c/j$a;->b:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    iget-object v0, v0, Lcom/a/a/c/j$a;->a:Lcom/a/a/c/t;

    iget-object v1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p1, Lcom/a/a/c/m;->a:Lcom/a/a/c/x;

    invoke-virtual {v0, v1}, Lcom/a/a/c/x;->a(Ljava/lang/Class;)Lcom/a/a/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v1, v1, Lcom/a/a/d/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/a/a/c/j;->a:Lcom/a/a/d/a;

    iget-object v2, v2, Lcom/a/a/d/a;->g:Ljava/lang/reflect/Type;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/a/a/c/t;->a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/a/a/c/j;

    invoke-virtual {p0, p1}, Lcom/a/a/c/j;->a(Lcom/a/a/c/j;)I

    move-result v0

    return v0
.end method
