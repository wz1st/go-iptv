.class final Lcom/g/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/g/a/a;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lcom/g/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v0}, Lcom/g/a/a;->a(Lcom/g/a/a;)I

    move-result v0

    iput v0, p0, Lcom/g/a/a$a;->b:I

    iget-object v0, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v0}, Lcom/g/a/a;->b(Lcom/g/a/a;)I

    move-result v0

    iput v0, p0, Lcom/g/a/a$a;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/g/a/a$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/g/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/g/a/a$a;-><init>(Lcom/g/a/a;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/g/a/a$a;->b:I

    iget v1, p0, Lcom/g/a/a$a;->c:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/g/a/a$a;->b:I

    iget v1, p0, Lcom/g/a/a$a;->c:I

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v0}, Lcom/g/a/a;->c(Lcom/g/a/a;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/g/a/a$a;->b:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v1}, Lcom/g/a/a;->b(Lcom/g/a/a;)I

    move-result v1

    iget v2, p0, Lcom/g/a/a$a;->c:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lcom/g/a/a$a;->b:I

    iput v1, p0, Lcom/g/a/a$a;->d:I

    iget v1, p0, Lcom/g/a/a$a;->b:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v2}, Lcom/g/a/a;->c(Lcom/g/a/a;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/g/a/a$a;->b:I

    return-object v0
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lcom/g/a/a$a;->d:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    iget v1, p0, Lcom/g/a/a$a;->d:I

    invoke-static {v0, v1}, Lcom/g/a/a;->a(Lcom/g/a/a;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/g/a/a$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v1}, Lcom/g/a/a;->c(Lcom/g/a/a;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/g/a/a$a;->b:I

    iget-object v0, p0, Lcom/g/a/a$a;->a:Lcom/g/a/a;

    invoke-static {v0}, Lcom/g/a/a;->b(Lcom/g/a/a;)I

    move-result v0

    iput v0, p0, Lcom/g/a/a$a;->c:I

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/g/a/a$a;->d:I

    return-void
.end method
