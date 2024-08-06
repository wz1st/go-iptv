.class Lcom/c/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Lcom/c/a/a/c;

.field public final c:Lcom/c/a/a/a;

.field public final d:Lcom/c/a/c/b;

.field public final e:Lcom/c/a/b/b;


# direct methods
.method constructor <init>(Ljava/io/File;Lcom/c/a/a/c;Lcom/c/a/a/a;Lcom/c/a/c/b;Lcom/c/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/c/a/c;->b:Lcom/c/a/a/c;

    iput-object p3, p0, Lcom/c/a/c;->c:Lcom/c/a/a/a;

    iput-object p4, p0, Lcom/c/a/c;->d:Lcom/c/a/c/b;

    iput-object p5, p0, Lcom/c/a/c;->e:Lcom/c/a/b/b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/c/a/c;->b:Lcom/c/a/a/c;

    invoke-interface {v0, p1}, Lcom/c/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/c/a/c;->a:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
