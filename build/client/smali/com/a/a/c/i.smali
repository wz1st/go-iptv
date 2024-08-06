.class Lcom/a/a/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/c/t;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/c/m;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/a/a/c/m;->b:Lcom/a/a/c/z;

    iget v0, v2, Lcom/a/a/c/z;->c:I

    sget-object v3, Lcom/a/a/c/aa;->d:Lcom/a/a/c/aa;

    iget v3, v3, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, v2, Lcom/a/a/c/z;->c:I

    sget-object v4, Lcom/a/a/c/aa;->b:Lcom/a/a/c/aa;

    iget v4, v4, Lcom/a/a/c/aa;->x:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v2, v3}, Lcom/a/a/c/z;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3, v1, v1}, Lcom/a/a/c/z;->a(Ljava/lang/String;CZ)V

    goto :goto_1

    :cond_2
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/a/a/c/z;->b(I)V

    goto :goto_1
.end method
