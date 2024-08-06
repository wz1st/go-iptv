.class public Lcom/g/a/a;
.super Ljava/util/AbstractCollection;

# interfaces
.implements Lcom/g/a/m;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/g/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/g/a/m",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private transient b:[Ljava/lang/Object;

.field private transient c:I

.field private transient d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/a;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/g/a/a;)I
    .locals 1

    iget v0, p0, Lcom/g/a/a;->c:I

    return v0
.end method

.method private a(I)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/g/a/a;->a:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/g/a/a;->d:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/g/a/a;->a:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/g/a/a;->c:I

    iget v3, p0, Lcom/g/a/a;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/g/a/a;->c:I

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    :cond_1
    sget-boolean v2, Lcom/g/a/a;->a:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/g/a/a;->c:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/g/a/a;->c:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/g/a/a;->d:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/g/a/a;->c:I

    iget v5, p0, Lcom/g/a/a;->d:I

    sub-int v6, p1, v4

    and-int/2addr v6, v3

    sub-int v7, v5, p1

    and-int/2addr v7, v3

    sub-int v8, v5, v4

    and-int/2addr v8, v3

    if-lt v6, v8, :cond_5

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_5
    if-ge v6, v7, :cond_7

    if-gt v4, p1, :cond_6

    add-int/lit8 v1, v4, 0x1

    invoke-static {v2, v4, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    const/4 v1, 0x0

    aput-object v1, v2, v4

    add-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/g/a/a;->c:I

    :goto_1
    return v0

    :cond_6
    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v2, v3

    aput-object v1, v2, v0

    add-int/lit8 v1, v4, 0x1

    sub-int v5, v3, v4

    invoke-static {v2, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_7
    if-ge p1, v5, :cond_8

    add-int/lit8 v0, p1, 0x1

    invoke-static {v2, v0, v2, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/g/a/a;->d:I

    :goto_2
    move v0, v1

    goto :goto_1

    :cond_8
    add-int/lit8 v4, p1, 0x1

    sub-int v6, v3, p1

    invoke-static {v2, v4, v2, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v2, v0

    aput-object v4, v2, v3

    invoke-static {v2, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v3

    iput v0, p0, Lcom/g/a/a;->d:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/g/a/a;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/g/a/a;->a(I)Z

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->c:I

    invoke-virtual {p0}, Lcom/g/a/a;->size()I

    move-result v2

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/g/a/a;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/g/a/a;->c:I

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/g/a/a;->d:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/g/a/a;)I
    .locals 1

    iget v0, p0, Lcom/g/a/a;->d:I

    return v0
.end method

.method static synthetic c(Lcom/g/a/a;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x0

    sget-boolean v0, Lcom/g/a/a;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/g/a/a;->c:I

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    sub-int v2, v1, v0

    shl-int/lit8 v3, v1, 0x1

    if-gez v3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sorry, deque too big"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    invoke-static {v4, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    invoke-static {v4, v5, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iput v5, p0, Lcom/g/a/a;->c:I

    iput v1, p0, Lcom/g/a/a;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/g/a/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/g/a/a",
            "<TE;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/a;

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->c:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/g/a/a;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/g/a/a;->g()V

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/g/a/a;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->c:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "e == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/g/a/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/g/a/a;->d:I

    iget v1, p0, Lcom/g/a/a;->c:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/g/a/a;->g()V

    :cond_1
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/g/a/a;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-eq v0, v1, :cond_1

    iput v2, p0, Lcom/g/a/a;->d:I

    iput v2, p0, Lcom/g/a/a;->c:I

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    :cond_0
    iget-object v3, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/a;->a()Lcom/g/a/a;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v0

    iget v0, p0, Lcom/g/a/a;->c:I

    :goto_1
    iget-object v3, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/g/a/a;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v0

    iget v0, p0, Lcom/g/a/a;->c:I

    :goto_1
    iget-object v3, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/g/a/a;->a(I)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v2, -0x1

    and-int/2addr v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    iget v2, p0, Lcom/g/a/a;->c:I

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/g/a/a;->c:I

    move-object v0, v1

    goto :goto_0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Lcom/g/a/a;->c:I

    iget v1, p0, Lcom/g/a/a;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/g/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/g/a/a$a;-><init>(Lcom/g/a/a;B)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/g/a/a;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/g/a/a;->d(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 2

    iget v0, p0, Lcom/g/a/a;->d:I

    iget v1, p0, Lcom/g/a/a;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/g/a/a;->b:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/g/a/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/g/a/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/g/a/a;->size()I

    move-result v1

    array-length v0, p1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, v0}, Lcom/g/a/a;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length v2, v0

    if-le v2, v1, :cond_0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method
