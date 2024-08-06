.class abstract La/a/d/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:Lb/h;

.field protected b:Z

.field final synthetic c:La/a/d/c;


# direct methods
.method private constructor <init>(La/a/d/c;)V
    .locals 2

    iput-object p1, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/h;

    iget-object v1, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v1}, La/a/d/c;->b(La/a/d/c;)Lb/d;

    move-result-object v1

    invoke-interface {v1}, Lb/d;->a()Lb/n;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h;-><init>(Lb/n;)V

    iput-object v0, p0, La/a/d/c$a;->a:Lb/h;

    return-void
.end method

.method synthetic constructor <init>(La/a/d/c;B)V
    .locals 0

    invoke-direct {p0, p1}, La/a/d/c$a;-><init>(La/a/d/c;)V

    return-void
.end method


# virtual methods
.method public a()Lb/n;
    .locals 1

    iget-object v0, p0, La/a/d/c$a;->a:Lb/h;

    return-object v0
.end method

.method protected final a(Z)V
    .locals 3

    const/4 v2, 0x6

    iget-object v0, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->c(La/a/d/c;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->c(La/a/d/c;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v2}, La/a/d/c;->c(La/a/d/c;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, La/a/d/c$a;->a:Lb/h;

    invoke-static {v0}, La/a/d/c;->a(Lb/h;)V

    iget-object v0, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v0, v2}, La/a/d/c;->a(La/a/d/c;I)I

    iget-object v0, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->d(La/a/d/c;)La/a/b/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-static {v0}, La/a/d/c;->d(La/a/d/c;)La/a/b/g;

    move-result-object v1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, La/a/d/c$a;->c:La/a/d/c;

    invoke-virtual {v1, v0, v2}, La/a/b/g;->a(ZLa/a/d/h;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
