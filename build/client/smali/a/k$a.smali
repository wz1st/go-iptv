.class public final La/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(La/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, La/k;->a(La/k;)Z

    move-result v0

    iput-boolean v0, p0, La/k$a;->a:Z

    invoke-static {p1}, La/k;->b(La/k;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k$a;->b:[Ljava/lang/String;

    invoke-static {p1}, La/k;->c(La/k;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/k$a;->c:[Ljava/lang/String;

    invoke-static {p1}, La/k;->d(La/k;)Z

    move-result v0

    iput-boolean v0, p0, La/k$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La/k$a;->a:Z

    return-void
.end method

.method static synthetic a(La/k$a;)Z
    .locals 1

    iget-boolean v0, p0, La/k$a;->a:Z

    return v0
.end method

.method static synthetic b(La/k$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/k$a;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(La/k$a;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/k$a;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(La/k$a;)Z
    .locals 1

    iget-boolean v0, p0, La/k$a;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Z)La/k$a;
    .locals 2

    iget-boolean v0, p0, La/k$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS extensions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, La/k$a;->d:Z

    return-object p0
.end method

.method public final varargs a([La/ab;)La/k$a;
    .locals 3

    iget-boolean v0, p0, La/k$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, La/ab;->e:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, La/k$a;->b([Ljava/lang/String;)La/k$a;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a([La/h;)La/k$a;
    .locals 3

    iget-boolean v0, p0, La/k$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    iget-object v2, v2, La/h;->aS:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, La/k$a;->a([Ljava/lang/String;)La/k$a;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a([Ljava/lang/String;)La/k$a;
    .locals 2

    iget-boolean v0, p0, La/k$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no cipher suites for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one cipher suite is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, La/k$a;->b:[Ljava/lang/String;

    return-object p0
.end method

.method public final a()La/k;
    .locals 2

    new-instance v0, La/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/k;-><init>(La/k$a;B)V

    return-object v0
.end method

.method public final varargs b([Ljava/lang/String;)La/k$a;
    .locals 2

    iget-boolean v0, p0, La/k$a;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no TLS versions for cleartext connections"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one TLS version is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, La/k$a;->c:[Ljava/lang/String;

    return-object p0
.end method
