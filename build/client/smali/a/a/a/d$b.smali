.class final La/a/a/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private final c:[Ljava/io/File;

.field private final d:[Ljava/io/File;

.field private e:Z

.field private f:La/a/a/d$a;

.field private g:J


# direct methods
.method static synthetic a(La/a/a/d$b;J)J
    .locals 1

    iput-wide p1, p0, La/a/a/d$b;->g:J

    return-wide p1
.end method

.method static synthetic a(La/a/a/d$b;La/a/a/d$a;)La/a/a/d$a;
    .locals 0

    iput-object p1, p0, La/a/a/d$b;->f:La/a/a/d$a;

    return-object p1
.end method

.method static synthetic a(La/a/a/d$b;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/d$b;->e:Z

    return v0
.end method

.method static synthetic b(La/a/a/d$b;)La/a/a/d$a;
    .locals 1

    iget-object v0, p0, La/a/a/d$b;->f:La/a/a/d$a;

    return-object v0
.end method

.method static synthetic c(La/a/a/d$b;)[J
    .locals 1

    iget-object v0, p0, La/a/a/d$b;->b:[J

    return-object v0
.end method

.method static synthetic d(La/a/a/d$b;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, La/a/a/d$b;->c:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic e(La/a/a/d$b;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, La/a/a/d$b;->d:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(La/a/a/d$b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/d$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(La/a/a/d$b;)Z
    .locals 1

    iget-boolean v0, p0, La/a/a/d$b;->e:Z

    return v0
.end method


# virtual methods
.method final a(Lb/c;)V
    .locals 6

    iget-object v1, p0, La/a/a/d$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    const/16 v3, 0x20

    invoke-interface {p1, v3}, Lb/c;->d(I)Lb/c;

    move-result-object v3

    invoke-interface {v3, v4, v5}, Lb/c;->i(J)Lb/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
