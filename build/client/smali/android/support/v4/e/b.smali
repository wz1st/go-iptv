.class public final Landroid/support/v4/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final c:[I

.field private static final d:[Ljava/lang/Object;

.field private static e:[Ljava/lang/Object;

.field private static f:I

.field private static g:[Ljava/lang/Object;

.field private static h:I


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field private i:[I

.field private j:Landroid/support/v4/e/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/e/j",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/e/b;->c:[I

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/e/b;->d:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/e/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Landroid/support/v4/e/b;->c:[I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    sget-object v0, Landroid/support/v4/e/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/e/b;->b:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v4/e/b;->d(I)V

    goto :goto_0
.end method

.method private a()I
    .locals 4

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/support/v4/e/e;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroid/support/v4/e/b;->i:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/support/v4/e/b;->i:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;I)I
    .locals 4

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-nez v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    invoke-static {v0, v2, p2}, Landroid/support/v4/e/e;->a([III)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroid/support/v4/e/b;->i:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroid/support/v4/e/b;->i:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 4

    const/16 v2, 0xa

    const/4 v3, 0x2

    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const-class v1, Landroid/support/v4/e/b;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/support/v4/e/b;->h:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/e/b;->g:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sput-object p1, Landroid/support/v4/e/b;->g:[Ljava/lang/Object;

    sget v0, Landroid/support/v4/e/b;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/e/b;->h:I

    :cond_1
    monitor-exit v1

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-class v1, Landroid/support/v4/e/b;

    monitor-enter v1

    :try_start_1
    sget v0, Landroid/support/v4/e/b;->f:I

    if-ge v0, v2, :cond_5

    const/4 v0, 0x0

    sget-object v2, Landroid/support/v4/e/b;->e:[Ljava/lang/Object;

    aput-object v2, p1, v0

    const/4 v0, 0x1

    aput-object p0, p1, v0

    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    const/4 v2, 0x0

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    sput-object p1, Landroid/support/v4/e/b;->e:[Ljava/lang/Object;

    sget v0, Landroid/support/v4/e/b;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/support/v4/e/b;->f:I

    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private b()Landroid/support/v4/e/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/e/j",
            "<TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/e/b;->j:Landroid/support/v4/e/j;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/e/b$1;

    invoke-direct {v0, p0}, Landroid/support/v4/e/b$1;-><init>(Landroid/support/v4/e/b;)V

    iput-object v0, p0, Landroid/support/v4/e/b;->j:Landroid/support/v4/e/j;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/e/b;->j:Landroid/support/v4/e/j;

    return-object v0
.end method

.method private d(I)V
    .locals 5

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    const-class v1, Landroid/support/v4/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/support/v4/e/b;->g:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v2, Landroid/support/v4/e/b;->g:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/e/b;->g:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Landroid/support/v4/e/b;->h:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/e/b;->h:I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-class v1, Landroid/support/v4/e/b;

    monitor-enter v1

    :try_start_2
    sget-object v0, Landroid/support/v4/e/b;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    sget-object v2, Landroid/support/v4/e/b;->e:[Ljava/lang/Object;

    iput-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/e/b;->e:[Ljava/lang/Object;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    sget v0, Landroid/support/v4/e/b;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/support/v4/e/b;->f:I

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/e/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/e/b;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/support/v4/e/b;->d(I)V

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/e/b;->i:[I

    iget v3, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget v2, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/e/b;->a([I[Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/support/v4/e/b;->a()I

    move-result v3

    move v4, v2

    :goto_0
    if-ltz v3, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-direct {p0, p1, v4}, Landroid/support/v4/e/b;->a(Ljava/lang/Object;I)I

    move-result v3

    goto :goto_0

    :cond_1
    xor-int/lit8 v3, v3, -0x1

    iget v5, p0, Landroid/support/v4/e/b;->b:I

    iget-object v6, p0, Landroid/support/v4/e/b;->i:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    iget v5, p0, Landroid/support/v4/e/b;->b:I

    if-lt v5, v0, :cond_6

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    iget v1, p0, Landroid/support/v4/e/b;->b:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v5, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/e/b;->d(I)V

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    array-length v6, v1

    invoke-static {v1, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v1, v5, v0}, Landroid/support/v4/e/b;->a([I[Ljava/lang/Object;I)V

    :cond_4
    iget v0, p0, Landroid/support/v4/e/b;->b:I

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v1, p0, Landroid/support/v4/e/b;->i:[I

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    aput v4, v0, v3

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v3

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/e/b;->b:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    iget v5, p0, Landroid/support/v4/e/b;->b:I

    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/e/b;->a(I)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/e/b;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v0, v2, v3}, Landroid/support/v4/e/b;->a([I[Ljava/lang/Object;I)V

    sget-object v0, Landroid/support/v4/e/b;->c:[I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    sget-object v0, Landroid/support/v4/e/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iput v4, p0, Landroid/support/v4/e/b;->b:I

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/support/v4/e/b;->i:[I

    array-length v2, v2

    if-le v2, v0, :cond_4

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    iget-object v3, p0, Landroid/support/v4/e/b;->i:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-le v2, v0, :cond_2

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v3, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/e/b;->d(I)V

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/e/b;->b:I

    if-lez p1, :cond_3

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iget v0, p0, Landroid/support/v4/e/b;->b:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroid/support/v4/e/b;->i:[I

    iget v5, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    iget v0, p0, Landroid/support/v4/e/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/e/b;->b:I

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/e/b;->i:[I

    iget v4, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v4, p0, Landroid/support/v4/e/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/b;->i:[I

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/e/b;->a([I[Ljava/lang/Object;I)V

    sget-object v0, Landroid/support/v4/e/b;->c:[I

    iput-object v0, p0, Landroid/support/v4/e/b;->i:[I

    sget-object v0, Landroid/support/v4/e/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/e/b;->b:I

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/e/b;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/e/b;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0}, Landroid/support/v4/e/b;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    :try_start_0
    iget v3, p0, Landroid/support/v4/e/b;->b:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/e/b;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v4/e/b;->i:[I

    iget v4, p0, Landroid/support/v4/e/b;->b:I

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget v1, v3, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/e/b;->b()Landroid/support/v4/e/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e/j;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/e/b;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v4/e/b;->c(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/e/b;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/e/b;->b:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/v4/e/b;->c(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p1

    iget v1, p0, Landroid/support/v4/e/b;->b:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Landroid/support/v4/e/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/support/v4/e/b;->b:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/e/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/v4/e/b;->b:I

    mul-int/lit8 v0, v0, 0xe

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v4/e/b;->b:I

    if-ge v0, v2, :cond_3

    if-lez v0, :cond_1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v4/e/b;->b(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
