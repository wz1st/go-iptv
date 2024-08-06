.class public La/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:La/w;

.field private b:La/v;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:La/p;

.field private f:La/q$a;

.field private g:La/z;

.field private h:La/y;

.field private i:La/y;

.field private j:La/y;

.field private k:J

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/y$a;->c:I

    new-instance v0, La/q$a;

    invoke-direct {v0}, La/q$a;-><init>()V

    iput-object v0, p0, La/y$a;->f:La/q$a;

    return-void
.end method

.method private constructor <init>(La/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, La/y$a;->c:I

    invoke-static {p1}, La/y;->a(La/y;)La/w;

    move-result-object v0

    iput-object v0, p0, La/y$a;->a:La/w;

    invoke-static {p1}, La/y;->b(La/y;)La/v;

    move-result-object v0

    iput-object v0, p0, La/y$a;->b:La/v;

    invoke-static {p1}, La/y;->c(La/y;)I

    move-result v0

    iput v0, p0, La/y$a;->c:I

    invoke-static {p1}, La/y;->d(La/y;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/y$a;->d:Ljava/lang/String;

    invoke-static {p1}, La/y;->e(La/y;)La/p;

    move-result-object v0

    iput-object v0, p0, La/y$a;->e:La/p;

    invoke-static {p1}, La/y;->f(La/y;)La/q;

    move-result-object v0

    invoke-virtual {v0}, La/q;->a()La/q$a;

    move-result-object v0

    iput-object v0, p0, La/y$a;->f:La/q$a;

    invoke-static {p1}, La/y;->g(La/y;)La/z;

    move-result-object v0

    iput-object v0, p0, La/y$a;->g:La/z;

    invoke-static {p1}, La/y;->h(La/y;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y$a;->h:La/y;

    invoke-static {p1}, La/y;->i(La/y;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y$a;->i:La/y;

    invoke-static {p1}, La/y;->j(La/y;)La/y;

    move-result-object v0

    iput-object v0, p0, La/y$a;->j:La/y;

    invoke-static {p1}, La/y;->k(La/y;)J

    move-result-wide v0

    iput-wide v0, p0, La/y$a;->k:J

    invoke-static {p1}, La/y;->l(La/y;)J

    move-result-wide v0

    iput-wide v0, p0, La/y$a;->l:J

    return-void
.end method

.method synthetic constructor <init>(La/y;B)V
    .locals 0

    invoke-direct {p0, p1}, La/y$a;-><init>(La/y;)V

    return-void
.end method

.method static synthetic a(La/y$a;)La/w;
    .locals 1

    iget-object v0, p0, La/y$a;->a:La/w;

    return-object v0
.end method

.method private static a(Ljava/lang/String;La/y;)V
    .locals 3

    invoke-static {p1}, La/y;->g(La/y;)La/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, La/y;->h(La/y;)La/y;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, La/y;->i(La/y;)La/y;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1}, La/y;->j(La/y;)La/y;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static synthetic b(La/y$a;)La/v;
    .locals 1

    iget-object v0, p0, La/y$a;->b:La/v;

    return-object v0
.end method

.method static synthetic c(La/y$a;)I
    .locals 1

    iget v0, p0, La/y$a;->c:I

    return v0
.end method

.method static synthetic d(La/y$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/y$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(La/y$a;)La/p;
    .locals 1

    iget-object v0, p0, La/y$a;->e:La/p;

    return-object v0
.end method

.method static synthetic f(La/y$a;)La/q$a;
    .locals 1

    iget-object v0, p0, La/y$a;->f:La/q$a;

    return-object v0
.end method

.method static synthetic g(La/y$a;)La/z;
    .locals 1

    iget-object v0, p0, La/y$a;->g:La/z;

    return-object v0
.end method

.method static synthetic h(La/y$a;)La/y;
    .locals 1

    iget-object v0, p0, La/y$a;->h:La/y;

    return-object v0
.end method

.method static synthetic i(La/y$a;)La/y;
    .locals 1

    iget-object v0, p0, La/y$a;->i:La/y;

    return-object v0
.end method

.method static synthetic j(La/y$a;)La/y;
    .locals 1

    iget-object v0, p0, La/y$a;->j:La/y;

    return-object v0
.end method

.method static synthetic k(La/y$a;)J
    .locals 2

    iget-wide v0, p0, La/y$a;->k:J

    return-wide v0
.end method

.method static synthetic l(La/y$a;)J
    .locals 2

    iget-wide v0, p0, La/y$a;->l:J

    return-wide v0
.end method


# virtual methods
.method public a(I)La/y$a;
    .locals 0

    iput p1, p0, La/y$a;->c:I

    return-object p0
.end method

.method public a(J)La/y$a;
    .locals 1

    iput-wide p1, p0, La/y$a;->l:J

    return-object p0
.end method

.method public a(La/p;)La/y$a;
    .locals 0

    iput-object p1, p0, La/y$a;->e:La/p;

    return-object p0
.end method

.method public a(La/q;)La/y$a;
    .locals 1

    invoke-virtual {p1}, La/q;->a()La/q$a;

    move-result-object v0

    iput-object v0, p0, La/y$a;->f:La/q$a;

    return-object p0
.end method

.method public a(La/v;)La/y$a;
    .locals 0

    iput-object p1, p0, La/y$a;->b:La/v;

    return-object p0
.end method

.method public a(La/w;)La/y$a;
    .locals 0

    iput-object p1, p0, La/y$a;->a:La/w;

    return-object p0
.end method

.method public a(La/y;)La/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-static {v0, p1}, La/y$a;->a(Ljava/lang/String;La/y;)V

    :cond_0
    iput-object p1, p0, La/y$a;->i:La/y;

    return-object p0
.end method

.method public a(La/z;)La/y$a;
    .locals 0

    iput-object p1, p0, La/y$a;->g:La/z;

    return-object p0
.end method

.method public a(Ljava/lang/String;)La/y$a;
    .locals 0

    iput-object p1, p0, La/y$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)La/y$a;
    .locals 1

    iget-object v0, p0, La/y$a;->f:La/q$a;

    invoke-virtual {v0, p1, p2}, La/q$a;->b(Ljava/lang/String;Ljava/lang/String;)La/q$a;

    return-object p0
.end method

.method public a()La/y;
    .locals 3

    iget-object v0, p0, La/y$a;->a:La/w;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/y$a;->b:La/v;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, La/y$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, La/y$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, La/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/y;-><init>(La/y$a;B)V

    return-object v0
.end method

.method public b(J)La/y$a;
    .locals 1

    iput-wide p1, p0, La/y$a;->k:J

    return-object p0
.end method

.method public b(La/y;)La/y$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-static {v0, p1}, La/y$a;->a(Ljava/lang/String;La/y;)V

    :cond_0
    iput-object p1, p0, La/y$a;->h:La/y;

    return-object p0
.end method

.method public c(La/y;)La/y$a;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, La/y;->g(La/y;)La/z;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, La/y$a;->j:La/y;

    return-object p0
.end method
