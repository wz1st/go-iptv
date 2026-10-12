.class public La/a/c/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lb/d;

.field private d:Lb/c;

.field private e:La/a/c/d$b;

.field private f:La/v;

.field private g:La/a/c/j;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/a/c/d$b;->j:La/a/c/d$b;

    iput-object v0, p0, La/a/c/d$a;->e:La/a/c/d$b;

    sget-object v0, La/v;->d:La/v;

    iput-object v0, p0, La/a/c/d$a;->f:La/v;

    sget-object v0, La/a/c/j;->a:La/a/c/j;

    iput-object v0, p0, La/a/c/d$a;->g:La/a/c/j;

    iput-boolean p1, p0, La/a/c/d$a;->h:Z

    return-void
.end method

.method static synthetic a(La/a/c/d$a;)La/v;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->f:La/v;

    return-object v0
.end method

.method static synthetic b(La/a/c/d$a;)La/a/c/j;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->g:La/a/c/j;

    return-object v0
.end method

.method static synthetic c(La/a/c/d$a;)Z
    .locals 1

    iget-boolean v0, p0, La/a/c/d$a;->h:Z

    return v0
.end method

.method static synthetic d(La/a/c/d$a;)La/a/c/d$b;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->e:La/a/c/d$b;

    return-object v0
.end method

.method static synthetic e(La/a/c/d$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(La/a/c/d$a;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(La/a/c/d$a;)Lb/c;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->d:Lb/c;

    return-object v0
.end method

.method static synthetic h(La/a/c/d$a;)Lb/d;
    .locals 1

    iget-object v0, p0, La/a/c/d$a;->c:Lb/d;

    return-object v0
.end method


# virtual methods
.method public a(La/a/c/d$b;)La/a/c/d$a;
    .locals 0

    iput-object p1, p0, La/a/c/d$a;->e:La/a/c/d$b;

    return-object p0
.end method

.method public a(La/v;)La/a/c/d$a;
    .locals 0

    iput-object p1, p0, La/a/c/d$a;->f:La/v;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lb/d;Lb/c;)La/a/c/d$a;
    .locals 0

    iput-object p1, p0, La/a/c/d$a;->a:Ljava/net/Socket;

    iput-object p2, p0, La/a/c/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, La/a/c/d$a;->c:Lb/d;

    iput-object p4, p0, La/a/c/d$a;->d:Lb/c;

    return-object p0
.end method

.method public a()La/a/c/d;
    .locals 2

    new-instance v0, La/a/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/c/d;-><init>(La/a/c/d$a;B)V

    return-object v0
.end method
