.class public Lcom/g/a/c/a/d;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field b:Lcom/g/a/c/c;

.field c:Lcom/g/a/c/e;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/g/a/c/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/g/a/c/a/d;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/g/a/c/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/g/a/c/a/d;->d:J

    iput-object p1, p0, Lcom/g/a/c/a/d;->b:Lcom/g/a/c/c;

    iget-object v0, p0, Lcom/g/a/c/a/d;->b:Lcom/g/a/c/c;

    const-string v1, "Content-Disposition"

    invoke-virtual {v0, v1}, Lcom/g/a/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/g/a/c/e;->b(Ljava/lang/String;)Lcom/g/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/g/a/c/a/d;->c:Lcom/g/a/c/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/a/d;->c:Lcom/g/a/c/e;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/g/a/c/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/g/a/c/a/d;->c:Lcom/g/a/c/e;

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Lcom/g/a/c/e;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
