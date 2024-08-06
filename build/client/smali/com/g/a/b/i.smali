.class final Lcom/g/a/b/i;
.super Lcom/g/a/b/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/g/a/b/f;-><init>()V

    invoke-virtual {p0}, Lcom/g/a/b/i;->d()Z

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/g/a/b/a;)Lcom/g/a/b/b;
    .locals 1

    invoke-super {p0, p1}, Lcom/g/a/b/f;->b(Lcom/g/a/b/a;)Lcom/g/a/b/f;

    move-result-object v0

    return-object v0
.end method
