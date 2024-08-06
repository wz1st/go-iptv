.class public final Lcom/c/a/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/c/a/a/c;

.field private c:Lcom/c/a/a/a;

.field private d:Lcom/c/a/c/b;

.field private e:Lcom/c/a/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/c/a/c/c;->a(Landroid/content/Context;)Lcom/c/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/f$a;->d:Lcom/c/a/c/b;

    invoke-static {p1}, Lcom/c/a/s;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/f$a;->a:Ljava/io/File;

    new-instance v0, Lcom/c/a/a/g;

    const-wide/32 v2, 0x20000000

    invoke-direct {v0, v2, v3}, Lcom/c/a/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/c/a/f$a;->c:Lcom/c/a/a/a;

    new-instance v0, Lcom/c/a/a/f;

    invoke-direct {v0}, Lcom/c/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/c/a/f$a;->b:Lcom/c/a/a/c;

    new-instance v0, Lcom/c/a/b/a;

    invoke-direct {v0}, Lcom/c/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/c/a/f$a;->e:Lcom/c/a/b/b;

    return-void
.end method

.method private b()Lcom/c/a/c;
    .locals 6

    new-instance v0, Lcom/c/a/c;

    iget-object v1, p0, Lcom/c/a/f$a;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/c/a/f$a;->b:Lcom/c/a/a/c;

    iget-object v3, p0, Lcom/c/a/f$a;->c:Lcom/c/a/a/a;

    iget-object v4, p0, Lcom/c/a/f$a;->d:Lcom/c/a/c/b;

    iget-object v5, p0, Lcom/c/a/f$a;->e:Lcom/c/a/b/b;

    invoke-direct/range {v0 .. v5}, Lcom/c/a/c;-><init>(Ljava/io/File;Lcom/c/a/a/c;Lcom/c/a/a/a;Lcom/c/a/c/b;Lcom/c/a/b/b;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/c/a/f$a;
    .locals 1

    new-instance v0, Lcom/c/a/a/g;

    invoke-direct {v0, p1, p2}, Lcom/c/a/a/g;-><init>(J)V

    iput-object v0, p0, Lcom/c/a/f$a;->c:Lcom/c/a/a/a;

    return-object p0
.end method

.method public a()Lcom/c/a/f;
    .locals 3

    invoke-direct {p0}, Lcom/c/a/f$a;->b()Lcom/c/a/c;

    move-result-object v0

    new-instance v1, Lcom/c/a/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/c/a/f;-><init>(Lcom/c/a/c;Lcom/c/a/f$1;)V

    return-object v1
.end method
